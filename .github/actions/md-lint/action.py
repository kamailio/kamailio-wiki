"""pymarkdown files linter action."""

import re
import subprocess
from pathlib import Path

from github_action_toolkit import (
    JobSummary,
    error,
    get_env,
    get_user_input,
    get_user_input_as,
    group,
    info,
    set_output,
    warning,
)
from github_action_toolkit.exceptions import InputError

GITHUB_WORKSPACE = Path(get_env("GITHUB_WORKSPACE"))


def get_files(path: Path) -> list(str):
    files = []
    with path.open("r") as file:
        line = file.readline().strip()
        info(f"changed file: {line}")
        files += line.split(" ")
    return files


def run_linter(path: Path) -> tuple[int, str]:
    """Run pymarkdown and capture output."""
    cmd = [
        "pymarkdown",
        "scan",
    ]
    files = get_files(path)
    result = subprocess.run(
        cmd + files,
        capture_output=True,
        text=True,
    )
    return result.returncode, result.stdout


def parse_pymarkdown_output(output: str) -> list[dict]:
    """Parse pymarkdown output into structured data."""
    issues = []
    pattern = r"^(.+?):(\d+):(\d+): (MD\d+): (.+)$"

    for line in output.splitlines():
        match = re.match(pattern, line)
        if not match:
            continue

        file, line_num, col, code, message = match.groups()
        data = {
            "file": file,
            "line": int(line_num),
            "col": int(col),
            "code": code,
            "message": message,
            "severity": "error",
        }
        info(f"line_parsed:{line} data:{data}")
        issues.append(data)

    return issues


def create_annotations(issues: list[dict]):
    """Create GitHub annotations for issues."""
    for issue in issues:
        func = error if issue["severity"] == "error" else warning
        func(
            issue["message"],
            file=issue["file"],
            line=issue["line"],
            col=issue["col"],
            title=f"Lint {issue['code']}",
        )


def create_summary(issues: list[dict]):
    """Create job summary with lint results."""
    summary = JobSummary()
    summary.add_heading("Lint Results", 1)

    errors = [i for i in issues if i["severity"] == "error"]
    warnings = [i for i in issues if i["severity"] == "warning"]

    # Summary table
    summary.add_table(
        [
            ["Severity", "Count"],
            ["Errors", str(len(errors))],
            ["Warnings", str(len(warnings))],
            ["Total", str(len(issues))],
        ]
    )

    # Details
    if errors:
        summary.add_separator()
        summary.add_heading("Errors", 2)
        for err in errors[:10]:  # Show first 10
            summary.add_raw(f"- **{err['file']}:{err['line']}** - {err['message']}\n")
        if len(errors) > 10:
            summary.add_raw(f"\n*...and {len(errors) - 10} more errors*\n")

    summary.write()


def get_safe_file_path(base_dir: Path) -> Path:
    """Get validated file path within base directory."""
    file_path = get_user_input("changes-path")
    if not file_path:
        error("changes-path input is required")
        raise InputError("changes-path is required")

    # Resolve to absolute path
    requested_path = (base_dir / file_path).resolve()

    # Ensure it's within base directory
    if not requested_path.is_relative_to(base_dir):
        error(
            f"Invalid file path: {file_path}. Path must be within the workspace.",
            title="Security: Path Traversal Attempt",
        )
        raise SystemExit(1)

    return requested_path


def main():
    # Get inputs
    path = get_safe_file_path(GITHUB_WORKSPACE)
    fail_on_error = get_user_input_as("fail-on-error", bool, default_value=True)

    info(f"changes path: {path}")

    # Run linter
    with group("Running pymarkdownq"):
        returncode, output = run_linter(path)
        info(f"pymarkdown finished with code {returncode}")

    # Parse results
    with group("Processing Results"):
        issues = parse_pymarkdown_output(output)
        info(f"Found {len(issues)} issues")

        # Create annotations
        create_annotations(issues)

        # Create summary
        create_summary(issues)

    # Set outputs
    errors = sum(1 for i in issues if i["severity"] == "error")
    warnings = sum(1 for i in issues if i["severity"] == "warning")

    set_output("errors", str(errors))
    set_output("warnings", str(warnings))
    set_output("total-issues", str(len(issues)))

    # Fail if configured
    if fail_on_error and errors > 0:
        error(f"Linting failed with {errors} errors", title="Lint Failed")
        return 1
    elif returncode != 0:
        error(f"pymarkdown exited with code {returncode}")
        return 2
    info("Linting complete!")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

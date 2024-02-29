# Developer Git Access

Anyone that has relevant contributions (consistent patches, new modules,
a.s.o.) to Kamailio can get Git write access to commit directly to our
source code repository hosted at git.sip-router.org .

## Cloning Repository for Write Operations

Each developer has a user ID for accessing the repository via ssh,
which allow push operations. Cloning can be done via command:

    git clone ssh://USERID@git.sip-router.org/kamailio

## Branches

Kamailio repository branches are categorized in:

- project main branches
- private developer branches
- common temporary branches

All of them are accessible in read only mode to everyone.

### Main Branches

#### Development Branch

The branch used for development version is named **master**.

The commits here must be fixes and features targeting next major
release.

#### Stable Branches

These branches are created for each major release of Kamailio. The name
follows the pattern X.Y, when both X and Y are numbers, representing the
first two numbers from Kamailio version. A typical Kamailio version is
formed from three numbers, X.Y.Z, where Z denotes the minor version
number of a major release.

For example, 4.1.4 is released from branch 4.1. Same was done for 4.1.0,
4.1.1, a.s.o.

Last two stable versions are maintained, therefore any bug has to be
fixed in both, when appropriate.

There MUST NOT be any commit adding a new feature in a stable branch.
ONLY bug fixes. Improvements to documentation or adjacent helper tools
are allowed.

Typical way of fixing a bug that needs to be backported:

- commit the patch to master branch
- cherry pick it to last stable branch
- cherry pick from last stable branch to previous stable branch

### Private Branches

Each developer can push commits to branches that don't allow other
developers to push.

A developer private branch must have the name in the format
**userid/branchname**, where user id is developer's commit username.

For example, Alice can use **alice/testingx**. Pushing local master
branch to remote **alice/testingx**:

    git push origin master:alice/testingx

These branches are useful when doing experimental things that might not
get to master after all or during testing period before releasing a
major version when committing to **master** branch is frozen.

Such branches must be deleted once they are merged to master branch or
not used anymore.

### Private Branches

These branches allow all developers to push commits to them. The name of
such branch must be **tmp/branchname**.

Pushing local master branch to remote branch **tmp/testingx**:

    git push origin master:tmp/testingx

This kind of branch is recommended when many developers experiment with
new code that might not get to **master** branch after all.

## Commit Recommendations

- whenever there are patches for modules maintained by other
    developers, it is better to discuss them on
    sr-dev@lists.sip-router.org mailing list before pushing them to
    remote repository. The patch can be:
    - submitted as attachment to mailing list
    - uploaded to the tracker at:
        - <http://sip-router.org/tracker>
    - pushed first in a private branch
- patches to own modules can be pushed at any time. However, if you
    want to discuss on sr-dev mailing lists, you are welcome to send an
    email

## Further Guidelines

Several tutorials about committing with Git and backporting are
available at:

- [Guidelines TOC](../index.md#guidelines)

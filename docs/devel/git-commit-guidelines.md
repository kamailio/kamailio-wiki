# GIT Commit Guidelines

## GIT Repository Location

Starting with December 15, 2014, the main GIT repository of Kamailio
project is hosted on Github at:

- <https://github.com/kamailio/kamailio>

A read-only mirror is maintained at:

- git.kamailio.org (still accessible via git.sip-router.org) - web
    interface:
  - <http://git.kamailio.org>

## Cloning GIT Repository

You need to install the git command line tool, part of git-core (on
Debian/Ubuntu) or git (Fedora/CentOS) package:

    apt-get install git-core

Create the folder where you want to clone the repository, for example:

    mkdir ~/kamailio
    cd ~/kamailio

If you have developer write access to GIT repository, clone the
repository with:

    git clone https://github.com/kamailio/kamailio.git kamailio-dev

or if you prefer via ssh:

    git clone ssh+git://git@github.com/kamailio/kamailio.git kamailio-dev

You may be asked for your Github username and password.

The clone is tracking automatically the remote **master** branch (the
development version).

## Working with Github forks of a GIT Repository

If you don't have developer write access, you can fork the Kamailio
repository. Then you checkout the forked repository to your local disk
and do the changes. Commit the changes to your repository and create a
pull request to integrate your changes into the Kamailio repository
back. Have a look e.g. to this documentation:

[Github help - forking](https://help.github.com/articles/fork-a-repo/)

[Github help - pull
request](https://help.github.com/articles/about-pull-requests/)

## Read-Only Cloning of GIT Repository

**Working with a fork of the Kamailio repository and then submitting a
pull request is nowadays the preferred way to integrate your
contributions, if you don't have write permissions to the Kamailio
repository. Please refer to the paragraph above.**

If you don't have developer write access, you can clone read-only the
repository with:

    git clone https://github.com/kamailio/kamailio.git kamailio-dev

You can also clone (read-only, not for developers that want to push back
commits) from the real-time mirror server:

    git clone --depth 1 git://git.kamailio.org/kamailio kamailio-dev

When cloning in read only mode, you can commit your changes to the local
clone, but you cannot push the patches to the remote repository. Export
the patches and attach them to an email to mailing list \<sr-dev \[at\]
lists.sip-router.org> or to an issue on bug tracker. A developer can
pick them and commit in your behalf.

You can export the local commit with git format-patch, for example,
exporting last commit:

    git format-patch -1

The name of the patch file is printed in the terminal and the file is
saved in current directory.

# GIT Commit Guidelines to Kamailio Repository

Not an absolute **MUST**, but it **SHOULD** be used almost always. It
helps to track changes and follow the development easier (better commit
mail messages and ChangeLogs are easier to generate).

## Where to commit

//Note: there is no list of owners and the code parts, the guidelines
here are not to prevent contributions to any parts of code, but to keep
the coherence of the code and sanity of development.

As generic rule, if you are not the initial author of a component, then
someone else is the maintainer. If you don't know who is that developer,
just ask on mailing list **sr-dev \[at\] lists.sip-router.org**.//

### Changes to your part of code

Whenever possible, commit first into **master** branch and then backport
the patch - a recommended way is to cherry-pick the patch by commit id
from master branch in your target branch.

By committing first into master branch, we ensure that the development
version is always the most up-to-date. Also, people can review and test
the commit from master branch before it is backported to a stable
branch.

### Changes to other parts of code

If it is a major change, then it is recommended to commit first into a
personal or tmp branch. Then send an announcement to sr-dev mailing
list, describing shortly the changes and where they are located. In this
way, first, we avoid development conflicts between main (other)
author(s) of the code and the other developers. Second, other developers
can review or test, giving feedback or suggesting improvements or
alternatives.

In some cases, the main author of the code may provide a different
implementation, for the same purpose, that will fit better in existing
architecture or future plans for that component. Very often, the
contributions will be just merged in the main devel branch.

#### TMP and Personal branches

Each developer has access to a personal branch on GIT remote repository
hosted on sip-router.org. The name of the branch starts with the GIT
username of developer, followed by a forward slash and then the
effective branch name. For example:

    daniel/tm-updates

Only the respective developer can do commit in such branch.

If many developers need to work on a branch, it can be created in the
tmp/ space:

    tmp/tm-changes

## Commit message

Please create the commit messages following the GIT convention:

- start with one short line, preferably less then 50 chars summarizing
    the changes (this is referred later as "first line of the commit
    message")
- then one empty line
- then a more detailed description

Think of the first line as of an email "Subject" line. In fact it will
be used as "Subject" in the generated commit emails and it will also be
used when generating the Changelog (e.g. git log --pretty=oneline).

Please start always with the prefix of the subsystem that is modified by
the commit, for example:

- core: typo fixes
- tcp: stun fixes
- mem: faster malloc
- module_name: support for foo
- lib_name: critical bug fix

Examples of commit messages:

- change to usrloc module from modules

<!-- -->

    usrloc: fixed name conflict

    - destroy_avps() renamed to reg_destroy_avps() to avoid conflicts
      with the usr_avp.h version.

- change to core

<!-- -->

    core: loadpath can now use a list of directories

    - loadpath can use a list of directories separated by ':',
      e.g.: loadpath "modules:modules_s:modules_k".
      First match wins (e.g. for loadmodule "textops" if
      modules/textops.so or modules/textops/textops.so exists, it will
      be loaded and the search will stop).

See:

- <http://www.kernel.org/pub/software/scm/git/docs/user-manual.html#creating-good-commit-messages>
- <http://www.tpope.net/node/106>

### Content of the Commit Message

      * the message must be addressed for humans, using common sense language. All commit messages are part of the ChangeLog file for each release and that file is read by sysadmins and other non-developer people
      * the message must be strictly related to the changes in the C code (e.g., don't give instructions what another developer must do with your patch)
      * credits to persons or companies that helped in the context of the commit are allowed and it is fair to be added whenever is the case. The place is at the end of the commit message (or end of the part describing the related change)
      * don't use slang and don't abuse using abbreviations, especially when it is not an official abbreviation
      * don't use system or tools commands to express the changes of the commit. They can be given as an example in the detailed message to show how the changes were done, but text explanation must be first. E.g., if you renamed a function, don't use as commit message 's/oldfunc/newfunc/'.

## Generic Guidelines

The suggestions here target to make easier to track the changes and do
the backporting to stable branches whenever is the case:

- commit big changes across many parts of the code in smaller chunks
    that affect only one part. Examples of major code parts: parser,
    transport layers, config interpreter, memory manager, libraries,
    modules, ...
- do the commits per one module when changing in a module and other
    modules are affected and were updates as well
- when updating the documentation and it is intended to do a backport,
    split the commit in one for xml files and one for the README file.
    Usually the commit to xml files can be backported without conflict
    (with git cherry-pick ...). README files are many times generated
    with different character sets, a matter of the system where they are
    generated, resulting in backporting conflicts. Thus is better to
    backport only the commit for xml files and generate the README for
    that branch, then push it to remote GIT repository
  - **IMPORTANT**: the README files for modules must no longer be
        generated by the developer and pushed to GIT. There is a tool
        running on server auto-generating the README file shortly after
        the xml files of the module's docs are updated and pushed to GIT
        repository
- if it is a change that has to be repeated in many places, then the
    commit can be done at once to all changes. For example, renaming a
    token that is present in all docbook files, removing or adding a new
    field in a structure such as module exports.

### Splitting commits

When you finish doing the changes, you can see affected files with:

    git status

If you are in the root of source tree, you can commit all changes with:

    git commit .

In case you added new files, first you have to add them with:

    git add path/to/file

To split the commits, you can give the list of files as argument to git
commit command:

    git commit path/to/file1 /path/to/file2

You can commit the changes in a directory with:

    git commit path/to/directory/

For example, commit the changes for module auth:

    git commit modules/auth/

## Core Commits

- prefix the first line of the commit message with "core:", or with
    the subsystem prefix (e.g. "tcp:", "dns:", "mem:", "script:",
    a.s.o).

## Module Commits

- prefix the first line of the commit message with "module name:"
- if there are modules with same name in different directories, use a
    distinctive marker to give a hint about which one was updated.
    Recommended markers are:
  - \(k\) - for modules located in modules_k
  - \(s\) - for modules located in modules_s

Example commit message to auth module:

    auth: improved documentation for www_challenge()

## Library Commits

- prefix the first line of the commit message with "library name:"

Example commit message:

    lib/srutils: more detailed log message for uuid generation

## Backporting Commits

Commits that include fixes to issues affecting stable branches must be
backported using:

    git cherry-pick -x _COMMIT_HASH_

Example:

    git cherry-pick -x a8bc3d

Parameter **-x** is important to be able to keep track easier of
backported commits.

The **git cherry-pick** command must be executed inside the branch where
the commit has to be backported, after doing a **git pull origin**.

**Note**: the commit must be done first time in master, then backported
to the latest stable branch, using cherry-pick -x with commit id from
master. The backported commit gets a new id in the latest stable branch,
that commit id must be used when cherry-picking to the previous stable
branch. When willing to backport to older versions, keep using the
commit id from the next stable branch.

## Useful Commands

This section collects some useful GIT commands.

### Reset Last Local Commit

- hard reset - purge the commit (warning: changes done for the commit
    are lost):

<!-- -->

    git reset --hard HEAD~1

- commit reset - drop the last commit, without losing the changes in
    the files:

<!-- -->

    git reset HEAD~1

- soft reset - leave the last commit and changes in the files -- next
    commit command will do the same commit

<!-- -->

    git reset --soft HEAD~1

### Checkout Remote Branch

    git checkout -b local-branch-name origin/remote-branch-name

### Abort File Changes

    git checkout -- file-name

### Modify Previous Commit Message

    git commit --amend

### Partial Change Checkin

    git add --edit

### Undo Previous Commit

    git revert HEAD^

### Delete Remote Branch

    git push origin :<branchName>

As of Git v1.7.0, a remote branch can be deleted using:

    git push origin --delete <branchName>

### Revert already pushed commit

This will produce a commit reverting the previous commit \<hash>

    git revert <hash>
    git push origin

### Rename and commit file

Create minimal commit when renaming file

    git mv module.c module_mod.c
    git commit -m '...: renamed module file to match recommended pattern' module.c module_mod.c

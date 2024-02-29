# Backporting Patches from Devel Branch to 3.2.x

Development branch on our GIT repository is named **master**. The GIT
branch for stable release series **3.2.x** (e.g., 3.2.0, 3.2.x, a.s.o.)
is named **3.2**.

The notes here try to show a way of getting patches committed in master
branch backported to branch 3.2, from both user and developer point of
view. One use case is when fixing an issue in master branch, then same
patch has to be applied to branch 3.2.

In this tutorial, there will be two clones of the GIT repository, one
tracking remote master branch and the other tracking remote 3.2 branch.
They will be stored in home folder, under **kamailio** subdirectory.

## Getting the GIT clones

    mkdir ~/kamailio
    cd ~/kamailio

If you have developer write access to GIT repository, clone the
repository with:

    git clone ssh://userid@git.sip-router.org/sip-router kamailio-dev

Replace **userid** with your developer GIT username.

If you are a user, you can clone the repository with:

    git clone --depth 1 git://git.sip-router.org/sip-router kamailio-dev

The clone is tracking automatically the remote **master** branch (the
development version).

At this stage you can make a copy of the clone, in order to have another
folder with the sources where to track the remote branch **3.2**:

    cd ~/kamailio
    cp -a kamailio-dev kamailio-3.2

Go now in kamailio-3.2 and change to branch 3.2:

    cd kamailio-3.2
    git checkout -b 3.2 origin/3.2

Check to see if you are on the right branch:

    git branch

The output has to be like:

    * 3.2
      master

## Compilation

You can always see the version of **kamailio** if you compile it.

For master branch:

    cd ~/kamailio/kamailio-dev
    make FLAVOUR=kamailio include_modules="db_mysql ..." cfg
    make all

For 3.2 branch:

    cd ~/kamailio/kamailio-3.2
    make FLAVOUR=kamailio include_modules="db_mysql ..." cfg
    make all

To see the version, go in each directory and run **kamailio -V**:

    # cd ~/kamailio/kamailio-dev
    # ./kamailio -V


    version: kamailio 3.3.0-dev2 (x86_64/darwin) 5bdef8
    flags: STATS: Off, USE_IPV6, USE_TCP, USE_TLS, TLS_HOOKS, DISABLE_NAGLE, USE_MCAST, DNS_IP_HACK, SHM_MEM, SHM_MMAP, PKG_MALLOC, DBG_QM_MALLOC, FAST_LOCK-ADAPTIVE_WAIT, USE_DNS_CACHE, USE_DNS_FAILOVER, USE_NAPTR, USE_DST_BLACKLIST, HAVE_RESOLV_RES
    ADAPTIVE_WAIT_LOOPS=1024, MAX_RECV_BUFFER_SIZE 262144, MAX_LISTEN 16, MAX_URI_SIZE 1024, BUF_SIZE 65535, DEFAULT PKG_SIZE 4MB
    poll method support: poll, select, kqueue.
    id: 5bdef8
    compiled on 08:15:37 Nov 21 2011 with gcc 4.2.1

    # cd ~/kamailio/kamailio-3.2
    # ./kamailio -V


    version: kamailio 3.2.0 (x86_64/darwin) 019c69-dirty
    flags: STATS: Off, USE_IPV6, USE_TCP, USE_TLS, TLS_HOOKS, DISABLE_NAGLE, USE_MCAST, DNS_IP_HACK, SHM_MEM, SHM_MMAP, PKG_MALLOC, DBG_QM_MALLOC, FAST_LOCK-ADAPTIVE_WAIT, USE_DNS_CACHE, USE_DNS_FAILOVER, USE_NAPTR, USE_DST_BLACKLIST, HAVE_RESOLV_RES
    ADAPTIVE_WAIT_LOOPS=1024, MAX_RECV_BUFFER_SIZE 262144, MAX_LISTEN 16, MAX_URI_SIZE 1024, BUF_SIZE 65535, DEFAULT PKG_SIZE 4MB
    poll method support: poll, select, kqueue.
    id: 019c69 -dirty
    compiled on 21:59:33 Nov  7 2011 with gcc 4.2.1

## Patching master branch

Got to directory holding the devel version and do the changes you need.
For example doing an update to **etc/kamailio.cfg**:

    cd ~/kamailio/kamailio-dev
    gvim etc/kamailio.cfg

Once you saved your changes, you can see them with:

    git diff

    diff --git a/etc/kamailio.cfg b/etc/kamailio.cfg
    index b7e469d..1679de0 100644
    --- a/etc/kamailio.cfg
    +++ b/etc/kamailio.cfg
    @@ -11,6 +11,8 @@
     #
     # Several features can be enabled using '#!define WITH_FEATURE' directives:
     #
    +# This is added just for example.
    +#
     # *** To run in debug mode:
     #     - define WITH_DEBUG
     #

If you want to save the patch to a file to send it to mailing list or
upload to tracker:

    git diff >../kamailio.cfg-sample-change.patch

The take the patch file \~/kamailio/kamailio.cfg-sample-change.patch.

You can see the list of changed and untracked (the newly added) files
with:

    git status

    # On branch master
    # Changed but not updated:
    #   (use "git add <file>..." to update what will be committed)
    #   (use "git checkout -- <file>..." to discard changes in working directory)
    #
    #   modified:   etc/kamailio.cfg
    #
    no changes added to commit (use "git add" and/or "git commit -a")

You can commit the change to local repository:

    git ci etc/kamailio.cfg

This command will commit only the changes in the **etc/kamailio.cfg**.
You can commit all the changes, even if they are across many files with:

    git commit .

An editor starts and you will have to add a description of the commit.
Write first line like being the subject of the change, followed by an
empty line, and then more detailed description of the change. The first
line has to start with the id of the component changed (e.g., core,
library name, module name, a.s.o). In vim, it will look like:

    kamailio.cfg: small change to make an example

    - this change is not going to be pushed to remote git repository,
    it is made just to make an example of commit
    # Please enter the commit message for your changes. Lines starting
    # with '#' will be ignored, and an empty message aborts the commit.
    # Explicit paths specified without -i nor -o; assuming --only paths...
    # On branch master
    # Changes to be committed:
    #   (use "git reset HEAD <file>..." to unstage)
    #
    #   modified:   etc/kamailio.cfg
    #

When you save and exit the editor, the commit is applied on the local
GIT repository, you will see an output like:

    git commit .
    [master f3fb55d] kamailio.cfg: small change to make an example
     1 files changed, 2 insertions(+), 0 deletions(-)

If you have developer access, you can push the patch to remote
repository, in the master branch:

    git push origin master:master

\<fc #0000FF>IMPORTANT: when changing C code, be sure at least it
compiles and does not break compilation of other modules or components.
If it is a change to be backported, then be also sure it is properly
tested.\</fc>

If someone did changes to remote repository while you created the patch
locally, you have to pull and rebase before pushing you commit to remote
server:

    git pull --ff --rebase origin

Now you can do the **git push ...**.

## Backporting to branch 3.2

Now that the change resides on remote repository, you can pull it in
your local clone for 3.2.

    cd ~/kamailio/kamailio-3.2
    git pull origin

When the commit was done to master, a commit id was printed in the
commit summary, it is the 7-hexcode string:

    [master f3fb55d] kamailio.cfg: small change to make an example

So the commit id is **f3fb55d**.

To get it in the branch 3.2, you can use cherry-pick command from git:

    git cherry-pick -x f3fb55d

If you are not a developer or the commit was done by someone else, you
can see the commit in the notification email set to **sr-dev \[at\]
lists.sip-router.org**, or you can see it by browsing the GIT repository
via web at:

- <http://git.sip-router.org/cgi-bin/gitweb.cgi?p=sip-router;a=shortlog;h=refs/heads/master>

If you click on **commit**, you will see the summary of the commit, with
the id on a line like:

    commit f3fb55dab799a003b1097b2a1ca08a7b5ebc9390

You can use for cherry-pick the first 7-hexcode characters or the entire
string.

In the case you have also the master brach up-to-date, you can do **git
log** inside kamailio-dev directory to see the commit id:

    cd ~/kamailio/kamailio-dev
    git log

This will list all the commits, the output should be like:

    commit f3fb55dab799a003b1097b2a1ca08a7b5ebc9390
    Author: Daniel-Constantin Mierla <miconda@gmail.com>
    Date:   Mon Nov 21 09:51:25 2011 +0100

        kamailio.cfg: small change to make an example

        - this change is not going to be pushed to remote git repository,
        it is made just to make an example of commit

    commit ...

Go back to kamailio 3.2 branch directory, compile and test properly the
patch:

    cd ~/kamailio/kamailio-3.2
    make all
    ...

When you are sure all is fine and want to push the change to remote
repository in the 3.2 branch, use:

    git push origin 3.2:3.2

You should see the email with the commit announcement on the sr-dev
mailing list in short time.

    [sr-dev] git:3.2: kamailio.cfg: small change to make an example

    Module: sip-router
    Branch: 3.2
    Commit: a1b2c3dab799a003b1097b2a1ca08a7b5ebc9390
    URL:    http://git.sip-router.org/cgi-bin/gitweb.cgi/sip-router/?a=commit;h=a1b2c3dab799a003b1097b2a1ca08a7b5ebc9390

    ...

    (cherry picked from commit f3fb55dab799a003b1097b2a1ca08a7b5ebc9390)

    ...

\<fc #0000FF>IMPORTANT: Again, before pushing commits to sip-router.org
GIT repository in the stable branch, 3.2, be sure you have tested them
properly and they don't break the code.\</fc>

## Recommendations

Use cherry-pick whenever it is possible, especially when fixing issues.
The commit to stable branch will have a reference to the commit in the
master branch, making easier to track if any fix has been forgotten to
be ported.

For quick reference, when you are in local branch 3.2 and want to
backport commit with id a1b2c3d, here is the sequence of commands:

    cd ~/kamailio/kamailio-3.2
    git pull origin
    git cherry-pick -x a1b2c3d
    git push origin 3.2:3.2

## Remarks

Note this is one way of doing the backporting, there are many other
ways, consult GIT manual for alternatives. This is a wiki page -- people
knowing alternatives to do porting of the patches from one branch to
another are welcome to contribute.

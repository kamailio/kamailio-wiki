# Update Database Schema

Kamailio's database schema is specified in an XML format, which allows
generation of creation scripts for many database types at once.

The XML files with the database table definitions are located in the
source tree, inside subdirectory:

    lib/srdb1/schema/

Each table is defined in the file tablename.xml. For example, the
definition of table domain is in file:

    lib/srdb1/schema/domain.xml

Changing the database schema (adding new tables,
adding/removing/updating columns) must be done creating or updating the
XML files.

Regeneration of the database creation scripts is done running the next
command inside the root folder of the source tree:

    make dbschema

This command generates the SQL or control files to be used by kamdbctl
tool when creating the database structure. It requires the tool
**xsltproc** to process the XML files, tool which is also needed for
generation of the readme files. The sql scripts will be placed in
subfolders of 'utils/kamctl/'

Changing the structure of an existing database table requires only the
above steps. Adding a new table requires as well:

- adding the table to be part of a specific group of tables. If the
    table is used by a module that uses other tables, all of them have
    to be in the same group. Tables group definitions are stored in the
    files kamailio-groupname.xml . It is common to use the module name
    as the group name.
- adding the table to kamctl and kamdbctl tools for creation

For example, the group of the tables used by module domain, domain and
domain_attrs, is specified in file:

    lib/srdb1/schema/kamailio-domain.xml

To generate the documentation of the existing kamailio-db-devel tables:

    cd lib/srdb1/schema; make docbook-xml
    cd doc/databases/kamailio; make html
    firefox tables.html

If you add a new table, you must add the new files related to it to GIT
repository, before committing the changes. It is recommended to split
the commit in two parts, because they affect different components:

- one for the XML files (they are part of internal library srdb1)
- one for DB creation scripts (they are part of kamctl tool)

This brings the benefit of easy backporting, because the commit to xml
file is unlikely to create conflicts, changing one file in a group of
lines related to same column, so it can be cherry-picked alone. Commits
to database creation scripts affects many files and can result in
conflicts if new columns were added meanwhile to the development version
to that table.

If there is a fix that has to be backported, always do it to master
branch and then cherry-pick it in the stable branches. With split
commits, the typical backport procedure is:

- cherry-pick only the commit to xml files
- regenerated the schema for the stable branch and commit the updates

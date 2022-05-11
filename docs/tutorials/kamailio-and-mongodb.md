# Kamailio and MongoDB

Details about how to use Kamailio with a MongoDB backend.

## Kamailio Database

The **use** command in mongodb client **mongo** creates the database if
it doesn't exit:

    # mongo
    > use kamailio

To display the databases, you can use:

    > show dbs

Note that a database is not shown by the above command if it is empty --
you need to add some records to it.

### Version Table

Kamailio uses version table to check if the structure of a database
table has the structure version the C code expects.

A table is MongoDB is named collection. To create the collection
**version**, do:

    > db.createCollection("version")

List the existing collections in the current database:

    > show collections
    system.indexes
    version
    > 

#### Version Table Records

Add the records for the other Kamailio tables you are going to use. Some
examples:


    > db.getCollection("version").insert({table_name: "subscriber", table_version: NumberInt(6) })

    > db.getCollection("version").insert({table_name: "location", table_version: NumberInt(8) })

    > db.getCollection("version").insert({table_name: "presentity", table_version: NumberInt(4) })

    > db.getCollection("version").insert({table_name: "watchers", table_version: NumberInt(3) })

    > db.getCollection("version").insert({table_name: "active_watchers", table_version: NumberInt(11) })

To learn what is the version number for a specific table, look inside
**lib/srdb1/schema/**, there is an xml file with the name of the table
and inside it you should see the **version** attribute.

### Other Tables

MongoDB doesn't have a schema definition for documents stored in a
collection. It is not required to create a collection before inserting a
record to it.

Anyhow, if you want, you can create the collections in advance, using:

    > db.createCollection("tablename")

## Kamailio Config

### DB URL

You need to load the "db_mongodb" module in the configuration.

The corresponding database URL in kamailio.cfg:

-   if MongoDB is on local host and there is no username and password to
    connect to it:

<!-- -->

    #!define DBURL "mongodb://localhost/kamailio"

-   if MongoDB is on local host and there is an username and password to
    connect to it:

<!-- -->

    #!define DBURL "mongodb://username:password@localhost/kamailio"

### Other Parameters

If you store location records in MongoDB, set the following parameter
for usrloc modules:

    modparam("usrloc", "db_insert_null", 1)

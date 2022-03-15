# [MongoDB](https://mongodb.com)

## Overview
* Database is a physical container for collections. Each database gets its own set of files on the file system. A single MongoDB server typically has multiple databases.
* Collection is a group of MongoDB documents. It is the equivalent of an RDBMS table. A collection exists within a single database. Collections do not enforce a schema. Documents within a collection can have different fields. Typically, all documents in a collection are of similar or related purpose.
* Document is a set of key-value pairs. Documents have dynamic schema. Dynamic schema means that documents in the same collection do not need to have the same set of fields or structure, and common fields in a collection's documents may hold different types of data.

|RDBMS|MongoDB|
|-----|-------|
|RDBMS|MongoDB|
|Database|Database|
|Table|Collection|
|Tuple/Row|Document|
|Column|Field|
|Table Join|Embedded Documents|
|Primary Key|Primary Key (Default key id provided by MongoDB itself)|

## Advantages of MongoDB over RDBMS
* Schema less − MongoDB is a document database in which one collection holds different documents. Number of fields, content and size of the document can differ from one document to another.
* Structure of a single object is clear.
* No complex joins.
* Deep query-ability. MongoDB supports dynamic queries on documents using a document-based query language that's nearly as powerful as SQL.
* Tuning.
* Ease of scale-out − MongoDB is easy to scale.
* Conversion/mapping of application objects to database objects not needed.
* Uses internal memory for storing the (windowed) working set, enabling faster access of data.

## Why Use MongoDB?
* Document Oriented Storage − Data is stored in the form of JSON style documents.
* Index on any attribute
* Replication and high availability
* Auto-Sharding
* Rich queries
* Fast in-place updates
* Professional support by MongoDB

## Where to Use MongoDB?
* Big Data
* Content Management and Delivery
* Mobile and Social Infrastructure
* User Data Management
* Data Hub

## Data Model Design
MongoDB provides two types of data models: — Embedded data model and Normalized data model
### Embedded Data Model
In this model, you can have (embed) all the related data in a single document, it is also known as de-normalized data model.
### Normalized Data Model
In this model, you can refer the sub documents in the original document, using references

## MongoDB supports many datatypes. Some of them are:
* String − This is the most commonly used datatype to store the data. String in MongoDB must be UTF-8 valid.
* Integer − This type is used to store a numerical value. Integer can be 32 bit or 64 bit depending upon your server.
* Boolean − This type is used to store a boolean (true/ false) value.
* Double − This type is used to store floating point values.
* Min/ Max keys − This type is used to compare a value against the lowest and highest BSON elements.
* Arrays − This type is used to store arrays or list or multiple values into one key.
* Timestamp − ctimestamp. This can be handy for recording when a document has been modified or added.
* Object − This datatype is used for embedded documents.
* Null − This type is used to store a Null value.
* Symbol − This datatype is used identically to a string; however, it's generally reserved for languages that use a specific symbol type.
* Date − This datatype is used to store the current date or time in UNIX time format. You can specify your own date time by creating object of Date and passing day, month, year into it.
* Object ID − This datatype is used to store the document’s ID(4 bytes timestamp, 3 bytes machine id, 2 bytes process id, 3 bytes incrementer).
* Binary data − This datatype is used to store binary data.
* Code − This datatype is used to store JavaScript code into the document.
* Regular expression − This datatype is used to store regular expression.


## Usage
```
> use <db> - to switch between databases
> show dbs - to show all databases
> db.dropDatabase() - to delete selected database

> show collections - to show all collecitons in the current database
> db.createCollection(<name>, <options>) - to create collection. <options> is optional
> db.<collection>.drop() - to drop <collection> from the database

> db.<collection>.insertOne(<document>) - to insert <document> into <collection>. if <collection> doesn't exist, it'll be created
> db.<collection>.insertMany([<documents>]) - to insert <documents> into <collection>

> db.<collection>.find() - to display all the documents
> db.<collection>.find().pretty() - to display all the documents in a formatted way
> db.<collection>.findOne() - to display only one document
> db.<collection>.find({ $and: [{<key1>: <value1>}, {<key2>: <value2>}]})
> db.<collection>.find({ $or: [{<key1>: <value1>}, {<key2>: <value2>}]})
> db.<collection>.find({ $not: [{<key1>: <value1>}, {<key2>: <value2>}]})

>db.<collection>.updateOne(<selection_document>, <updating_document>)
>db.<collection>.updateMany(<selection_document>, <updating_document>)
```

|Operation|Syntax|Example|RDBMS Equivalent|
|---------|------|-------|----------------|
|Equality|{<key>:{$eg;<value>}}|db.mycol.find({"by":"tutorials point"}).pretty()|where by = 'tutorials point'|
|Less Than|{<key>:{$lt:<value>}}|db.mycol.find({"likes":{$lt:50}}).pretty()|where likes < 50|
|Less Than Equals|{<key>:{$lte:<value>}}|db.mycol.find({"likes":{$lte:50}}).pretty()|where likes <= 50|
|Greater Than|{<key>:{$gt:<value>}}|db.mycol.find({"likes":{$gt:50}}).pretty()|where likes > 50|
|Greater Than Equals|{<key>:{$gte:<value>}}|db.mycol.find({"likes":{$gte:50}}).pretty()|where likes >= 50|
|Not Equals|{<key>:{$ne:<value>}}|db.mycol.find({"likes":{$ne:50}}).pretty()|where likes != 50|
|Values in an array|{<key>:{$in:[<value1>, <value2>,……<valueN>]}}|db.mycol.find({"name":{$in:["Raj", "Ram", "Raghu"]}}).pretty()|Where name matches any of the value in :["Raj", "Ram", "Raghu"]|
|Values not in an array|{<key>:{$nin:<value>}}|db.mycol.find({"name":{$nin:["Ramu", "Raghav"]}}).pretty()|Where name values is not in the array :["Ramu", "Raghav"] or, doesn’t exist at all|

### Examples:
```
> db.new.findOne({number: {$gte:20}})
> db.<collection>.find({"likes": {$gt:10}, $or: [{"by": "tutorials point"},
   {"title": "MongoDB Overview"}]}).pretty()
```

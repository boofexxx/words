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

```
> use <db> - to switch between databases
> show dbs - to show all databases
> show collections - to show all collecitons in the current database
> db.dropDatabase() - to delete selected database
> db.createCollection(<name>, <options>) - to create collection. <options> is optional
> db.<collection>.insert(<document>) - to insert <document> into <collection>. if <collection> doesn't exist, it'll be created
```

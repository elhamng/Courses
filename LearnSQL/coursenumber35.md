An index in the context of databases is a data structure that improves the speed of data retrieval operations on a database table. Here’s a detailed breakdown:

## What is an Index?

### Purpose:

The primary purpose of an index is to enhance the performance of queries by allowing the database management system (DBMS) to find and access data more quickly than scanning the entire table.

### Analogy:

Think of an index like the index of a book, which allows you to quickly locate information without having to read every page.

### Categories of Indexes in Databases

This classification provides a comprehensive understanding of the different types of indexes and their roles in database management. 

#### By Structure

##### Clustered Index

Determines the physical order of data in the table.

Only one clustered index can exist per table, as data can be sorted in only one way.

Typically used for primary key columns.

##### Nonclustered Index

A separate structure from the actual data rows.

Multiple nonclustered indexes can exist on a table.

Contains a sorted list of keys and pointers to the actual data, allowing for efficient lookups.

#### By Storage

##### Row Store Index

Stores data in rows, where each row is stored together.

Suitable for transactional systems where operations involve entire rows.

##### Column Store Index

Stores data in columns, which allows for better compression and faster access for analytical queries.

Ideal for read-heavy operations and analytics, as it enables efficient querying of specific columns.

#### By Function

##### Unique Index

Ensures that all values in the indexed column(s) are unique across the table.

Can be clustered or nonclustered and is often used to enforce data integrity.

##### Filtered Index

An index that is created on a subset of data in a table, based on a specified filter condition.

Improves performance by indexing only relevant rows, making it efficient for queries that target specific data.

Before we dive into how the indexes works in database lets understand what happens to the database table if we dont use any index :

Here's a detailed explanation of what happens in a database table structured as a heap when no indexes are used:

#### Heap Structure in Databases
<img width="331" height="385" alt="image" src="https://github.com/user-attachments/assets/5b4bb4c1-c33d-4a20-9417-88d87e99f1cb" />


Definition: A heap is a type of table structure where data is stored in an unordered manner. There is no specific order for the rows, and they are simply appended to the end of the data file as new rows are added.

##### Consequences of Not Using Indexes

###### Data Retrieval:

When a table is created without any indexes, SQL Server stores the data in a heap structure.
To retrieve data, SQL Server must perform a full table scan. This means it will read every row in the table to find the requested data, which can be very slow, especially as the number of rows increases.

##### Performance Impact:

For a small number of records (like 20 customers), the performance impact might be negligible. However, as the table grows, the performance degradation becomes significant.
Full table scans consume more I/O resources and CPU time, leading to slower query performance.

Data Storage:

Data is stored in a data file (e.g., .mdf) on disk, organized into fixed-size blocks called pages.
Understanding Pages
Definition: A page is the smallest unit of data storage in SQL Server, with a fixed size of 8 KB. Each page can store various types of data, including:

Data: Actual records from tables.
Metadata: Information about the structure of the database.
Indexes: Structures that improve data retrieval speed (if they exist).
Types of Pages:

Data Pages: Store the actual rows of data from tables.
Index Pages: Store index information that helps speed up data retrieval.


## Indexes and Storage Structures in SQL Server

1. What is an Index

An index is a data structure used by the database to quickly locate and access rows in a table.
Indexes improve the performance of queries by reducing the amount of data that needs to be scanned.

Without an index, the database must perform a full table scan, meaning it reads every row in the table to find the requested data.

Example query:

SELECT *

FROM Customers

WHERE CustomerID = 10;

If an index exists on CustomerID, SQL Server can directly locate the row instead of scanning the entire table.

2. Database Storage Basics
Page

A page is the smallest unit of storage in SQL Server.

A page stores:

table data

index data

metadata

Typical page size:

8 KB

Types of pages include:

Data pages – store actual table rows

Index pages – store index structures

Pages are grouped into extents, which are collections of pages.

3. Heap Structure

A heap is a table without a clustered index.

In a heap:

rows are stored without any specific order

SQL Server stores rows wherever space is available

Querying a heap may require a full table scan.

Example:

Row1
Row2
Row3
Row4

When searching for a row, SQL Server must scan:

Page → Row → Page → Row

until it finds the matching data.

4. Clustered Index

A clustered index determines the physical order of data in the table.

The table is stored according to the clustered index key.

Example:

CREATE CLUSTERED INDEX IX_CustomerID
ON Customers(CustomerID);

If the clustered index is on CustomerID, the rows are physically stored like this:

CustomerID	Name
1	John
2	Sara
3	Ali

Because the data is sorted, SQL Server can find rows very quickly.

Important rule:

A table can have only one clustered index

because data can only be stored in one physical order.

5. B-Tree Structure

SQL Server indexes are implemented using a B-Tree (Balanced Tree) structure.

The B-Tree organizes data from lowest to highest key values.

It has three main levels:

Root Node

The root node is the top level of the index.

It contains pointers to the next level of pages.

Intermediate Nodes

Intermediate nodes contain:

index keys

pointers to other pages

They do not store actual table rows.

Instead, they guide SQL Server to the correct page.

Leaf Nodes

The leaf level contains:

actual data (for clustered indexes)

pointers to data rows (for nonclustered indexes)

Example structure:

        Root
       /    \
   Node      Node
  /   \      /   \
Page  Page  Page  Page

Each level narrows the search until SQL Server finds the exact row.

6. Nonclustered Index

A nonclustered index is a separate structure that stores:

indexed column values

pointers to the data rows

Example:

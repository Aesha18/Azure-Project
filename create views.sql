--------------------------------------
-- create view calendar----
------------------------
create view gold.calendar
as 
select * FROM
OPENROWSET(
    BULK 'https://azureporjectdatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
)as query1

--------------------------------------
-- create view customers----
------------------------
create view gold.customers
as 
select * FROM
OPENROWSET(
    BULK 'https://azureporjectdatalake.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
)as query2


--------------------------------------
-- create view product subcategories----
------------------------
create view gold.prosubcat
as 
select * FROM
OPENROWSET(
    BULK 'https://azureporjectdatalake.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
)as query4
--------------------------------------
-- create view products----
------------------------
create view gold.products
as 
select * FROM
OPENROWSET(
    BULK 'https://azureporjectdatalake.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
)as query5

--------------------------------------
-- create view products----
------------------------
create view gold.sales
as 
select * FROM
OPENROWSET(
    BULK 'https://azureporjectdatalake.dfs.core.windows.net/silver/AdventureWorks_Sales_2017/',
    FORMAT = 'PARQUET'
)as query6

--------------------------------------
-- create view products----
------------------------
create view gold.ter
as 
select * FROM
OPENROWSET(
    BULK 'https://azureporjectdatalake.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
)as query7

--------------------------------------
-- create view products----
------------------------
create view gold.returns
as 
select * FROM
OPENROWSET(
    BULK 'https://azureporjectdatalake.dfs.core.windows.net/silver/Returns/',
    FORMAT = 'PARQUET'
)as query8

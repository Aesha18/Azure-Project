--CREATE MASTER KEY ENCRYPTION BY PASSWORD ='Aesha@2512'

CREATE DATABASE SCOPED CREDENTIAL cred_aesh
with 
    IDENTITY = 'Managed Identity'

create EXTERNAL DATA SOURCE source_silver
WITH(
    location = 'https://azureporjectdatalake.dfs.core.windows.net/silver',
    credential = cred_aesh
)
create EXTERNAL DATA SOURCE source_gold
WITH(
    location = 'https://azureporjectdatalake.dfs.core.windows.net/gold',
    credential = cred_aesh
)

create EXTERNAL FILE FORMAT format_parquet
with(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

create EXTERNAL TABLE gold.extsales
with(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
as 
select * from gold.sales


select * from gold.extsales

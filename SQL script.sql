CREATE DATABASE SCOPED CREDENTIAL cred_prabha with

IDENTITY = 'Managed Identity';

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
LOCATION = 'https://dpstoragedatalake.dfs.core.windows.net/silver',
CREDENTIAL = cred_prabha
)
DROP EXTERNAL DATA SOURCE source_gold;
CREATE EXTERNAL DATA SOURCE source_gold

WITH

(
LOCATION = 'https://dpstoragedatalake.dfs.core.windows.net/gold',
CREDENTIAL = cred_prabha

)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
FORMAT_TYPE = PARQUET,

DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'

)

------------------------------------
--CREATE EXTERNAL TABLE EXTSALES
------------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS 
SELECT * FROM gold.Sales

SELECT * FROM gold.Sales;
















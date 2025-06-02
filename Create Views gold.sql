create schema gold

------------------------
--CREATE VIEW Calender
------------------------

CREATE VIEW gold.calender
AS 
select * from OPENROWSET(
    BULK 'https://dpstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar',
    FORMAT = 'PARQUET'
)as query1

------------------------
--CREATE VIEW Customers
------------------------

CREATE VIEW gold.Customers
AS 
select * from OPENROWSET(
    BULK 'https://dpstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Customers',
    FORMAT = 'PARQUET'
)as query2

------------------------
--CREATE VIEW Product_Categories
------------------------

CREATE VIEW gold.Product_Categories
AS 
select * from OPENROWSET(
    BULK 'https://dpstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Product_Categories',
    FORMAT = 'PARQUET'
)as query3

------------------------
--CREATE VIEW Product_Subcategories
------------------------

CREATE VIEW gold.Product_Subcategories
AS 
select * from OPENROWSET(
    BULK 'https://dpstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories',
    FORMAT = 'PARQUET'
)as query4

------------------------
--CREATE VIEW Products
------------------------

CREATE VIEW gold.Products
AS 
select * from OPENROWSET(
    BULK 'https://dpstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Products',
    FORMAT = 'PARQUET'
)as query5

------------------------
--CREATE VIEW Returns
------------------------

CREATE VIEW gold.Returns
AS 
select * from OPENROWSET(
    BULK 'https://dpstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Returns',
    FORMAT = 'PARQUET'
)as query6


------------------------
--CREATE VIEW Sales
------------------------

CREATE VIEW gold.Sales
AS 
select * from OPENROWSET(
    BULK 'https://dpstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Sales',
    FORMAT = 'PARQUET'
)as query7

SELECT * FROM gold.Sales;

------------------------
--CREATE VIEW Territories
------------------------

CREATE VIEW gold.Territories
AS 
select * from OPENROWSET(
    BULK 'https://dpstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Territories',
    FORMAT = 'PARQUET'
)as query8



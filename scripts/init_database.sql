/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/
USE master;

CREATE DATABASE DataWareHouse;

USE DataWareHouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;

/* DROP AND RECREATE THE 'DATABASE,
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'database name')
BEGIN
	ALTER DATABASE 'database name' SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE 'DATABASE NAME';
END;
GO */

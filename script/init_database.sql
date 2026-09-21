/*
======================================================================
Create Database and Schemas
======================================================================
Script Purpose:
	This script creates a new database named 'DataWareHouse' after checking if it exists.
	if the database exists, it is dropped and recreated. Additionally, the script sets up
	three schemas within the database: 'bronze', 'silver', 'gold'.

WARNING:
	Running this script will drop the entire Database if it exists.
	All data in the database will be permanently deleted. proceed with caution
	and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWareHouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWareHouse;
END;
GO

-- Create the 'DataWareHouse' Database

Create DATABASE DataWareHouse;
GO

USE DataWareHouse;
GO

-- Create Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

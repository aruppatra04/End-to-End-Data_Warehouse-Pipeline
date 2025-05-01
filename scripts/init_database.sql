/*
Create Database and Schemas :: 
--> Script Purpose :
      => This script creates a new database named 'DataWarehouse' after checking if it already exists. 
      => If the database exists, it is dropped and recreated. 
      => Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.
	
--> WARNING :
      => Running this script will drop the entire 'DataWarehouse' database if it exists. 
      => All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/


USE master;

-- drop and recreate the 'DataWarehouse' database :
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- create the 'DataWarehouse' database : 
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- create schemas :
CREATE SCHEMA bronze; -- bronze schema
GO

CREATE SCHEMA silver; -- silver schema
GO

CREATE SCHEMA gold; -- gold schema
GO


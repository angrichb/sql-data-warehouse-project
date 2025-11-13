/*
====================================================================
Create Database and Schemas
====================================================================
Purpose:
  This script initializes the 'DataWarehouse' database. 
  If the database already exists, it will be dropped and recreated.
  After creation, the script sets up the standard data-engineering 
  schema layers: bronze, silver, and gold.

WARNING:
  Running this script will DROP the existing 'DataWarehouse' database.
  ALL data stored in it will be permanently deleted.
  Proceed with caution and ensure proper backups are in place 
  before executing this script. 
*/



USE master;
GO 

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database 
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;
GO
-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

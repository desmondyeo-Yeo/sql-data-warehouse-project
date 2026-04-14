/*
========================================
Create Database and Schemas
========================================
Script Purpose:
	This script creates a new database named "DataWarehouse' after checking if it already exists.
	If the database exists. it is dropped and recreated. Additionlly, the script sets up three schemas
	within the database: 'bronze', 'silver' and 'gold'.

Warning:
	Running this script will drop the entire 'DataWarehouse' database if exits.
	All data in the database will be permanently deleted. Proceed with caution
	and ensure proper backups before running this script.
*/

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
Begin
	Alter DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;

--Create Database 'DataWarehouse'

CREATE DATABASE DataWarehouse;

USE DataWarehouse;

--Create Schemas

CREATE SCHEMA bronze;

CREATE SCHEMA Silver;

CREATE SCHEMA Gold;

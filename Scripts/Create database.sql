USE	 master
GO

--Drop and Create database of modeled zone
if exists(select * from sys.databases where name='model_zone')
	 drop database model_zone

go

create database model_zone

go




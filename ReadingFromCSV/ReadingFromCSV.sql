create Table Actors (
id int NOT NULL,
lastname varchar(20) NOT NULL,
firstname varchar(20) NOT NULL,
midlename varchar(20),
suffix varchar(3)
)


select count(1) from dbo.Actors
-- truncate the table first
TRUNCATE TABLE dbo.Actors;
GO
 
-- import the file
BULK INSERT dbo.Actors
FROM 'C:\AATN\1-GAK\SQL-Server\ReadingFromCSV\data\actor.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO
select count(1) from dbo.Actors
select * from dbo.Actors

Select * 
FROM 'C:\AATN\1-GAK\SQL-Server\ReadingFromCSV\data\actor.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


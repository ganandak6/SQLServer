create table tranlogread(
	id int not null identity(1,1),
	data char(20),
	created_dt datetime default getdate());
go

insert into tranlogread(data) values('transactons');
go 25

select count(1) from tranlogread --25
select * from tranlogread --25

checkpoint
--it removes all rows from a table. It is faster and does not use as much undo space as Delete.
--It is  a DDL command so this command change structure of table
--you can not rollback in Truncate 
--IN SQL, the auto increment counter gets  reset with truncate
truncate table tranlogread
--It is used to remove rows from a table 
-- A Where caluse can be used to only removes some rows
--It is DML command. It only remove row from table, leaving the table structure untouched 
--in DELETE, you can rollback 
--The auto inceament counter cannot get reset with delete
Delete tranlogread

select count(1) from fn_dblog(null,null)
select * from fn_dblog(null,null)

Use master;
go
if DB_ID(N'RevistasDB') is not null
begin
	alter database RevistasDB
	set offline	
	with rollback immediate
	drop database RevistasDB	
end
create database RevistasDB


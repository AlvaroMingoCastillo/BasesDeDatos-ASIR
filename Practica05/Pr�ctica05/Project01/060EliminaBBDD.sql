Use RevistasDB
go
delete from dbo.AutorArticulo
go
delete from dbo.Autor
go
delete from dbo.Articulo
go
delete from dbo.Revista
go
ALTER TABLE dbo.Articulo   
DROP CONSTRAINT FK_Articulo_revista;  
GO 
ALTER TABLE dbo.AutorArticulo   
DROP CONSTRAINT FK_AutorArticulo_idArticulo;  
GO 
ALTER TABLE dbo.AutorArticulo   
DROP CONSTRAINT FK_AutorArticulo_idAutor;  
GO 
ALTER TABLE dbo.AutorArticulo   
DROP CONSTRAINT PK_AutorArticulo_ID;  
GO 
ALTER TABLE dbo.Revista   
DROP CONSTRAINT PK_Revista_ID;  
GO 
ALTER TABLE dbo.Autor   
DROP CONSTRAINT PK_Autor_ID;  
GO 
ALTER TABLE dbo.Articulo   
DROP CONSTRAINT PK_Articulo_ID;  
GO 
GO 
drop table dbo.AutorArticulo
go
drop table dbo.Autor
go
drop table dbo.Articulo
go
drop table dbo.Revista
go
alter database RevistasDB
set offline	
with rollback immediate
drop database RevistasDB
go
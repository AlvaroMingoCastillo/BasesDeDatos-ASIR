Use RevistasDB
go
drop table if exists dbo.Articulo
go
create table dbo.Articulo
(
	id int not null,
	titulo varchar(100) not null,
	pinicio int not null,
	pfinal int not null,
	revista varchar(200) not null
)
go
drop table if exists dbo.AutorArticulo 
go
create table dbo.AutorArticulo
(
	id int not null,
	idAutor int not null,
	idArticulo int not null,
	orden int identity(1,1)
)
go
go
drop table if exists dbo.Autor 
go
create table dbo.Autor
(
	id int not null,
	nombre varchar(100) not null,
	email varchar(200) not null,
	profesion varchar(200) not null
)
go
go
drop table if exists dbo.Revista 
go
create table dbo.Revista
(
	isbn varchar(200) not null,
	titulo varchar(200) not null,
	numero int not null,
	anio int not null
)
go
alter table dbo.Articulo
add constraint PK_Articulo_ID primary key (id)
go
alter table dbo.AutorArticulo
add constraint PK_AutorArticulo_ID primary key (id)
go
alter table dbo.Autor
add constraint PK_Autor_ID primary key (id)
go
alter table dbo.Revista
add constraint PK_Revista_ID primary key (isbn)
go
alter table dbo.Articulo
add constraint FK_Articulo_revista
foreign key(revista)
references dbo.Revista(isbn)
go
alter table dbo.AutorArticulo
add constraint FK_AutorArticulo_idAutor
foreign key(idAutor)
references dbo.Autor(id)
go
alter table dbo.AutorArticulo
add constraint FK_AutorArticulo_idArticulo
foreign key(idArticulo)
references dbo.Articulo(id)
go

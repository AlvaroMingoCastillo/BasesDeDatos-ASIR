Use RevistasDB
go
insert into dbo.Revista(isbn,titulo,numero,anio) values ('12345678','La gaceta',2,2023),
('87654321','TodoInfo',1,2018),('12312378','TodoInfo',5,2019)
go
insert into dbo.Articulo(id,titulo,pinicio,pfinal,revista) 
values (1,'El partidazo',1,2,'12345678'),(2,'Misterio del Castillo',5,6,'12312378')
go
insert into dbo.Autor(id,nombre,email,profesion) 
values (1,'Miguel de Cervantes','miguelCervantes@gmail','Escritor')
,(2,'Agatha Chistie','agathaChistie@gmail','Escritor'),
(3,'Félix Lope de Vega','felisxLopeVega@gmail','Escritor')
go

insert into dbo.AutorArticulo (id,idAutor,idArticulo) values (1,1,2),(2,2,2),(3,3,1)
go




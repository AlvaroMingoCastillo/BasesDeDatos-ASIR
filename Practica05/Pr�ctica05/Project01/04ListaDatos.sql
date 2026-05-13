use RevistasDB
go
select * from dbo.Articulo inner join dbo.Revista on isbn=revista
go
Select * from dbo.Autor inner join dbo.AutorArticulo on dbo.Autor.id=idAutor 
inner join dbo.Articulo on dbo.Articulo.id=idArticulo
go
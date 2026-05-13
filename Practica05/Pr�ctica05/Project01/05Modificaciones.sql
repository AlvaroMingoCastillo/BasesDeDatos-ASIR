Use RevistasDB
go
ALTER TABLE dbo.Revista ADD Idioma varchar(200)
go
UPDATE dbo.Revista SET Idioma='Español'
WHERE isbn='12345678'

UPDATE dbo.Revista SET Idioma='Español'
WHERE isbn='87654321'

UPDATE dbo.Revista SET Idioma='Ingles'
WHERE isbn='12312378'

ALTER TABLE dbo.Revista ADD EsESP bit 
go

UPDATE dbo.Revista SET EsESP='true'
WHERE Idioma='Español'

UPDATE dbo.Revista SET EsESP='false'
WHERE Idioma='Ingles'


ALTER TABLE dbo.Revista DROP column Idioma
go

select * from dbo.Revista

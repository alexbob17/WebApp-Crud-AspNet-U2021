
--Login create

CREATE LOGIN UserAwWApp WITH PASSWORD = 'U$3rAwApp!',
DEFAULT_DATABASE = AdventureWorks2019;
go
Use AdventureWorks2019
go
CREATE USER UserApp FOR LOGIN UserAwWApp WITH  DEFAULT_SCHEMA = dbo;
GO
--EL USUARIO SOLO PUEDE SELECCIONAR
ALTER ROLE db_SelectAllObjects ADD MEMBER UserApp;
GO

CREATE LOGIN AdminApp1 WITH PASSWORD = 'Adm1nAwApp!',
DEFAULT_DATABASE = AdventureWorks2019;
go
Use AdventureWorks2019
go
CREATE USER AdminApp1 FOR LOGIN AdminApp1 WITH  DEFAULT_SCHEMA = dbo;
GO
--SOLO EL ADMIN PUEDE INSERTAR,ACTUALIZAR,ELIMINAR ITEMS DE LA TABLA
ALTER ROLE db_SelectAllObjects ADD MEMBER AdminApp1;
GO
ALTER ROLE db_InsertAllObjects ADD MEMBER AdminApp1;
GO
ALTER ROLE db_UpdateAllObjects ADD MEMBER AdminApp1;
GO
ALTER ROLE db_DeleteAllObjects ADD MEMBER AdminApp1;
GO
ALTER ROLE db_ExecuteAllObjects ADD MEMBER AdminApp1;
GO
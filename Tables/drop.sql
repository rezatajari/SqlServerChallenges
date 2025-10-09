-- Delete a table
DROP TABLE	dbo.information
GO
CREATE TABLE dbo.Personal1(
ID int not null,
Fname nvarchar (30) null)

INSERT INTO dbo.Personal1(
ID,
Fname)
VALUES (1,'reza'),
	   (2,'fateme'),
	   (3,'ali')

GO

-- Delete only data in database
DELETE FROM dbo.Personal1
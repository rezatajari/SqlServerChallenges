-- Create table
CREATE TABLE dbo.information(
    ID int NOT NULL,
    Fname nvarchar(30) NOT NULL,
    Lname nvarchar(30) NOT NULL,
    City nvarchar(30) NULL
);

-- Modify table
ALTER TABLE dbo.information
ADD country nvarchar(30);
GO   -- this sends everything above as one batch

ALTER TABLE dbo.information
DROP COLUMN City;
GO   -- new batch starts here

ALTER TABLE dbo.information
ALTER COLUMN country nvarchar(100);

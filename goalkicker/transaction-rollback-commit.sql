CREATE TABLE test_transaction (column_1 varchar(10))  

INSERT INTO dbo.test_transaction (column_1) VALUES ('a')  

BEGIN TRANSACTION                -- Start a new transaction

UPDATE dbo.test_transaction
SET column_1 = 'B'               
OUTPUT INSERTED.*                -- Show the updated rows
WHERE column_1 = 'A';         

ROLLBACK TRANSACTION             -- Undo all changes made in this transaction
-- COMMIT TRANSACTION            -- (Alternative) Save changes permanently

SELECT * FROM dbo.test_transaction  
                                 -- View table after rollback (should still show 'a')

DROP TABLE dbo.test_transaction  -- Delete the test table

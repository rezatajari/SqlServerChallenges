CREATE TABLE Queries (
    query_name VARCHAR(50),
    result VARCHAR(50),
    position INT,
    rating INT
);

INSERT INTO Queries (query_name, result, position, rating) VALUES
('Dog', 'Golden Retriever', 1, 5),
('Dog', 'German Shepherd', 2, 5),
('Dog', 'Mule', 200, 1),
('Cat', 'Shirazi', 5, 2),
('Cat', 'Siamese', 3, 3),
('Cat', 'Sphynx', 7, 4);



SELECT 
  query_name,
  CAST(SUM(rating / CAST(position AS DECIMAL(5,2))) / COUNT(*) AS DECIMAL(5,2)) AS quality,
  CAST(
    SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) 
    AS DECIMAL(5,2)
  ) AS poor_query_percentage
FROM Queries
GROUP BY query_name
ORDER BY query_name DESC;


-- Delete duplicate rows using ROW_NUMBER() 

WITH RowCount AS (
    SELECT 
		id,
		ROW_NUMBER() OVER (
			PARTITION BY email
			ORDER BY email) AS row_num
		FROM 
			contacts
)

DELETE FROM contacts c 
WHERE 
	c.id IN (
	SELECT 
		id 
	FROM RowCount rc
    WHERE rc.row_num > 1
);

CREATE TABLE tempContacts 
    SELECT 
        first_name,
        last_name,
        email
        FROM (
			SELECT 
				*,
				RANK() OVER (
					ORDER BY
						email
					) AS appearance_rank,
				ROW_NUMBER() OVER (
					ORDER BY
						email
					) AS RowNumber
		
				FROM contactsNoPrimaryKey
            ) AS DuplicateInformation
        WHERE appearance_rank = RowNumber;



 DROP TABLE contactsNoPrimaryKey;

 ALTER TABLE tempContacts 
    RENAME contactsNoPrimaryKey;

SELECT * FROM contactsNoPrimaryKey
    ORDER BY email;
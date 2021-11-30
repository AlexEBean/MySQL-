CREATE TABLE tempContacts SELECT DISTINCT * FROM contactsNoPrimaryKey;

 DROP TABLE contactsNoPrimaryKey;

 ALTER TABLE tempContacts 
    RENAME contactsNoPrimaryKey;

SELECT * FROM contactsNoPrimaryKey
    ORDER BY email;
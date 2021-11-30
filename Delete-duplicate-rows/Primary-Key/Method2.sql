-- Deleting using Intermediate Table

CREATE TABLE contacts_temp 
LIKE contacts;

INSERT INTO contacts_temp
SELECT * 
FROM contacts 
GROUP BY email;

DROP TABLE contacts;

ALTER TABLE contacts_temp 
RENAME TO contacts;
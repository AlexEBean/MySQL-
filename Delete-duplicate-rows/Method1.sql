-- Deleting using DELETE JOIN

DELETE t1 FROM contacts t1
INNER JOIN contacts t2 
WHERE 
    t1.id < t2.id AND 
    t1.email = t2.email;
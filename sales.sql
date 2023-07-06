### 8 As a member of the Sales team I want to be able to assign a client to a project. A client can have multiple projects but a project can only have 1 client
/*
USE Project_Academia_WojciechJ;

ALTER TABLE projects 
ADD COLUMN client_id INT,
ADD FOREIGN KEY(client_id) REFERENCES clients(id); 

*/

#9#As a member of the Sales team I want to see a list of clients, the name of the sales employee who works with that client and the list of projects that the client has





#10 As a member of the Sales team I want to see a client who has the highest value of projects
/*
 SELECT name AS client_name, SUM(value) AS total_project_value
 FROM clients
 JOIN projects ON project_id = id
 GROUP BY project_id
 ORDER BY total_project_value DESC
 LIMIT 1;
s
*/

#11
#the lowest value 

SELECT name AS client_name, MIN(value) AS lowest_project_value
 FROM clients
JOIN projects ON project_id = id
HAVING MIN(value) =
(
SELECT MIN(value)
FROM projects
) 
LIMIT 1;




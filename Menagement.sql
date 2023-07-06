-- SQL Script for Managers
-- 5.As a member of the Management team I want to be able to assign delivery employees to a project. 
-- A delivery employee can work on multiple projects at the same time and 
-- can also work on the same project more than once

INSERT INTO project_delivery_employees (project_id, delivery_employee_id)
	VALUES (1, 1);
    
    
-- 6. As a member of the Management team I want to be able to assign a delivery employee as a Tech Lead to a project.
-- Each project can only have 1 Tech Lead    


-- 7. As a member of the Management team I want to be able to remove a delivery employee from a project. 
-- A record should be retained to show that person worked on that project at some point

DELETE FROM project_delivery_employees 
	WHERE project_delivery_employees.delivery_employee_id ='1';
    
-- 15. As a member of the Management team I want to be able to see a list of delivery employees 
-- who are not assigned to a project who have previously worked with a technology that is currently 
-- being used on a project and the name of those projects 

SELECT ;


-- 16. As a member of the Management team I want to be able to set a project as completed. 
-- Completed projects shouldn't be included in any of the lists   
 
-- Auxilary query (in no finished column case)
ALTER TABLE projects
	ADD finished INT;

-- Right Query    
UPDATE projects
		SET finished='0'
        WHERE project_id=1;
    
-- 17. As a member of the Management team I want to be able to see a list of projects,
-- the name of the Tech Lead and a list of all delivery employees assigned to the project    

SELECT * FROM project_delivery_employees JOIN projects JOIN delivery_employees; 

-- 18. As a member of the Management team I want to be able to see the project
-- with the most delivery employees currently working on it

SELECT 

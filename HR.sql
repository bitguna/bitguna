-- 13. As a member of the HR team I want to see a list of sales employees
-- and how much each has made in commission this year

SELECT name, commision_rate FROM sales_employees;

-- 14. As a member of the HR team I want to see
-- a list of sales employees who haven't won any clients this year

SELECT name FROM sales_employees
	WHERE clients_id IS NULL;
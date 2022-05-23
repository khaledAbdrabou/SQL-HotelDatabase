-- create view to get details of all the employees
CREATE OR REPLACE VIEW emp_view AS
	SELECT emp_first_name AS 'First Name', emp_last_name AS 'Last Name', emp_email_address AS 'Email Address', emp_contact_number AS 'Contact Number', department_name AS 'Department'
	FROM employees
	JOIN department
	ON department.department_id = employees.department_department_id;


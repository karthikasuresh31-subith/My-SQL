--Show a list of all employees along with their department name. 
SELECT e.id, e.name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.id = d.emp_id;

--Show only those employees who have a department assigned.
SELECT e.id, e.name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.id = d.emp_id;

--Show all department assignments, even if the employee doesn’t exist in the employee table-- employees table
SELECT d.emp_id, d.department_name, e.name
FROM departments d
LEFT JOIN employees e
ON d.emp_id = e.id;
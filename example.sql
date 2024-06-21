-- Criação das tabelas de exemplo
CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE
);

CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50),
    manager_id INT
);

CREATE TABLE bonuses (
    employee_id INT,
    bonus DECIMAL(10, 2),
    bonus_date DATE
);

-- Inserção de dados nas tabelas
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary, hire_date) VALUES
(1, 'John', 'Doe', 1, 60000.00, '2021-01-15'),
(2, 'Jane', 'Smith', 2, 75000.00, '2020-02-20'),
(3, 'Mike', 'Brown', 1, 50000.00, '2019-03-10');

INSERT INTO departments (department_id, department_name, manager_id) VALUES
(1, 'Engineering', 1),
(2, 'Human Resources', 2);

INSERT INTO bonuses (employee_id, bonus, bonus_date) VALUES
(1, 5000.00, '2021-12-25'),
(2, 3000.00, '2021-12-25');

-- Criação de uma tabela intermediária para calcular o total de compensações
CREATE TABLE total_compensation AS
SELECT e.employee_id, e.first_name, e.last_name, e.salary + COALESCE(b.bonus, 0) AS total_compensation
FROM employees e
LEFT JOIN bonuses b ON e.employee_id = b.employee_id;

-- Criação de uma tabela final para o relatório de compensações
CREATE TABLE compensation_report AS
SELECT t.employee_id, t.first_name, t.last_name, t.total_compensation, d.department_name
FROM total_compensation t
JOIN employees e ON t.employee_id = e.employee_id
JOIN departments d ON e.department_id = d.department_id
WHERE e.hire_date >= '2020-01-01';

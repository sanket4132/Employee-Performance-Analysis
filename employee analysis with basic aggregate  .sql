create database Employee_Performance_Analysis;
use Employee_Performance_Analysis;

#1 Create Table
create table Employees(
EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Age INT,
    Salary INT,
    PerformanceRating INT
);
#2. Insert Sample Data
INSERT INTO Employees VALUES
(1, 'Amit', 'HR', 28, 45000, 4),
(2, 'Sneha', 'Finance', 32, 60000, 5),
(3, 'Rahul', 'IT', 25, 50000, 3),
(4, 'Priya', 'Finance', 30, 62000, 4),
(5, 'Karan', 'IT', 27, 48000, 2),
(6, 'Neha', 'HR', 29, 47000, 5),
(7, 'Vikas', 'IT', 31, 51000, 4);

#3. Useful SQL Queries
#a) Total employees per department
select Department, count(*) as total_employees
from Employees
group by department;

#b) Average salary per department
select Department , avg(salary) as avg_salary
from Employees
group by department;

 #d)Employees with performance rating > 4
 select name, PerformanceRating , Department
 from Employees
 where PerformanceRating > 4;
  
#C) Highest salary in each department
select department ,max(salary) as Highest_salary
from employees
group by department;

#e) List all employees ordered by salary (highest to lowest)
select department ,name ,salary
from employees
order by salary desc;

#F) list all employees ordered by salary (lowest to highest )
select name , department , salary
from employees
order by salary asc;
#g) shows a particular person name with highest salary
SELECT Name, Department, Salary
FROM Employees
WHERE (Department, Salary) IN (
    SELECT Department, MAX(Salary)
    FROM Employees
    GROUP BY Department
);

#aggregate function
#1) count
select department, count(*) as total_count
from employees
group by department;

# 2) max
select department , max(salary) as highest_salary 
from employees
group by department;

# 3) min 
select department , min(salary) as min_salary
from employees
group by department;

#4)sum 
select department ,sum(salary ) as sum_salary
from employees
group by department;

#5) Average
select department ,avg(salary) as avg_salary
from Employees
group by department;




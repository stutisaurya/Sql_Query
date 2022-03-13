--Where,Having,GroupBy Clause

use StutiDatabase

Create table Employee_tbl
(
  empID int,
  empName varchar(100),
  deptId int,
  Salary decimal(10,2),
  joinYear int
)

Insert into Employee_tbl values(101,'sakshi',2,7000.00,2014)
Insert into Employee_tbl values(102,'abhi',1,2700.00,2014)
Insert into Employee_tbl values(103,'rohan',3,3800.00,2016)
Insert into Employee_tbl values(104,'jimmy',2,6700.00,2017)
Insert into Employee_tbl values(105,'ankit',3,5900.00,2018)
Insert into Employee_tbl values(106,'priya',1,8800.00,2013)
Insert into Employee_tbl values(107,'preet',2,8600.00,2013)

select * from Employee_tbl
--Group by

select sum(salary) from Employee_tbl Group by deptId 
select deptId,sum(salary) from Employee_tbl Group by deptId 
select deptId,sum(salary),Avg(salary) as Avgsalary
from Employee_tbl Group by deptId 
select deptId,sum(salary),Avg(salary) as Avgsalary,
Max(salary) as MaxSal, Min(salary) as Minsal
from Employee_tbl Group by deptId 

--where clause
find the total salary,average salary in department 1&3

select deptId, sum(salary) as Totsalary from employee_tbl
where deptId IN (1,3)
Group by deptId
order by deptId

--Having clause

select deptId, sum(salary) as Totsalary from employee_tbl
where deptId IN (1,3)
Group by deptId
Having sum(salary) >10000



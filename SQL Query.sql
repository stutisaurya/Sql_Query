Create database StutiDatabase
use stutiDatabase

--DDL(Create,Alter,Drop,Truncate)
 
 Create table Employee
 (
   ID int,  
   First_Name varchar(100),
   Last_Name varchar(100),
   Mobile_No varchar(10),
   City char(40),
   Gender Char(1),
   Salary Decimal(16,2)
)
drop table Employee
select * from Employee
Alter table Employee add Email_Id varchar(70)
Alter table Employee alter column city char(100) Null


--DML(Insert,Update,Delete)
Insert into Employee values(1,'sakshi','Priyal','9786425542','patna','F',7000.00,'Sakshi12@gmail.com')
Insert into Employee values(2,'Adam','Greek','9786426542','lucknow','M',2800.00,'ad32@gmail.com')
Insert into Employee values(3,'Ravi','Raj','8564225542','Delhi','M',6500.00,'ravi23@gmail.com')
Insert into Employee values(4,'sima','Sahini','7892425528','patna','F',8600.00,'sima12@gmail.com')
Insert into Employee values(5,'Dakota','Jain','9687425567','Lucknow','F',9800.00,'dk@gmail.com')
Insert into Employee values(6,'Christan','Paul','7795425585','patna','M',6500.00,'cpaul@gmail.com')

update Employee set First_Name='Rohan' where ID=3  

delete from Employee where ID=2 





 
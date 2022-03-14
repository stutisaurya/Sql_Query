use StutiDatabase
--join

Create table Company(
C_Id int,
C_Name varchar(40),
C_MailId varchar(50),
Dep_Id int
)
select * from Company
select * from Department
select * from Employee_tbl

alter table Employee_tbl add D_Name varchar (40) null

update Employee_tbl set D_Name='Finance' where empID=101
update Employee_tbl set D_Name='HR' where empID in (102,105)
update Employee_tbl set D_Name='Lawyer' where empID in (103,106)
update Employee_tbl set D_Name='CA' where empID in (104,107)


update Employee_tbl set D_Name='HR', D_Name='Lawyer' where empID=102 and 103 and 104



insert into Company(C_Id,C_Name,C_MailId,Dep_Id)values (101,'HCL','hcl123@gmail.com',10)
insert into Company(C_Id,C_Name,C_MailId,Dep_Id)values (101,'TATA','ta3813@gmail.com',20)
insert into Company(C_Id,C_Name,C_MailId,Dep_Id)values (101,'INFOSYS','info3@gmail.com',30)

Create table Department(
Dep_Id int,
D_Name varchar(40),
D_Location varchar(60)
)
update Company set C_Id=40 where C_Name='TATA'
update Company set C_Id=102 where C_Name='TATA'
update Company set C_Id=103 where C_Name='INFOSYS'



sp_rename 'Department.D_Id','Dep_Id';

insert into Department(Dep_Id,D_Name,D_Location)values (10,'Finance','chennai')
insert into Department(Dep_Id,D_Name,D_Location)values (20,'HR','madras')
insert into Department(Dep_Id,D_Name,D_Location)values (30,'Lawyer','lucknow')
insert into Department(Dep_Id,D_Name,D_Location)values (50,'CA','delhi')

update Department set Dep_Id=40 where D_Location='lucknow'

 

--Inner Join
select * from Company inner join Department ON Company.dep_Id=Department.dep_Id

--Left outer join 
select * from Company C left outer join Department D ON C.Dep_ID=D.Dep_Id

--Right outer join
select * from Company C right outer join Department D ON C.Dep_ID=D.Dep_Id

--Full outer join
select * from Company C FULL outer join Department D ON C.Dep_ID=D.Dep_Id

--cross join
select * from Company cross join Department

--Multitable Join

select C_Id,C_Name,C_MailId,empID,empName,deptId,Salary,joinYear
from Company c
inner join Department d
on c.Dep_Id= d.Dep_Id
inner join Employee_tbl e
on e.D_Name = d.D_Name


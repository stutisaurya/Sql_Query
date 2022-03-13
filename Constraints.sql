 use StutiDatabase
 -- Constraints (pk,fk,Unique,Identity,Constraints)
 
 Create table Student
 (

   StuId int identity(1,1) primary key,
   StuName varchar(40) unique not null,
   Address varchar(30) not null,
   Course varchar (30) DEFAULT 'MBA',
   City varchar(40)
 )
drop table Student
Insert into Student(StuName,address,city)values('Adam','abc','Delhi')
Insert into Student(StuName,address,city)values('Greek','def','UP')
Insert into Student(StuName,address,city)values('Abhi','ghi','MP')
Insert into Student(StuName,address,city)values('Raj','jkl','Goa')


Update student set course='MCA' where StuID=4
select * from Student
select * from StudentMarks

Create table StudentMarks (
Stu_Id int primary key,
college_name varchar(20),
StuId int foreign key references student(StuId)
)
drop table StudentMarks

Insert into StudentMarks(Stu_id,college_name,StuId)values('1','abc','2')
Insert into StudentMarks(Stu_id,college_name,StuId)values('2','BVP','1')
Insert into StudentMarks(Stu_id,college_name,StuId)values('3','SMU','4')

--Table level constraint

create table DemoTableLevel(
     Rollno int,
	 Mobileno int,
	 City varchar(100),
	 Constraint Roll_Mobile_Unique Unique (RollNo,Mobileno)
)

select * from DemoTableLevel

Insert into DemoTableLevel(Rollno,Mobileno,City) values (2,3333,'xyz')
Insert into DemoTableLevel(Rollno,Mobileno,City) values (1,3333,'xyz')
Insert into DemoTableLevel(Rollno,Mobileno,City) values (1,2222,'xyz')
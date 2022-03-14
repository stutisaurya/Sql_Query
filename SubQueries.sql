Use StutiDatabase

select * from Student
select * from StudentMarks

alter table StudentMarks add Science varchar(50)
alter table StudentMarks add Math varchar(50)
alter table StudentMarks add Gk varchar(50)

update StudentMarks set Science=76,Math=66,Gk=57 where college_name='abc'
update StudentMarks set Science=79,Math=82,Gk=81 where college_name='BVP'
update StudentMarks set Science=61,Math=47,Gk=57 where college_name='SMU'


--to find the marks of Adam who lives in delhi 
--single Query  (always return one row and use = operator)
select * from StudentMarks where Stu_Id=
(select StuId from Student where StuName='Adam')

select * from Student
select * from StudentMarks

--to find Math marks where course is MCA
select * from StudentMarks where StuId=
(select StuId from Student where course='MCA') 


--to find college_name where city=MP
select college_name from StudentMarks where StuId=
(select StuId from student where city='UP')
 


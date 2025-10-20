
-- create database 
create database StudentDB;

-- create a student table

create table Student(
StudentID int auto_increment not null,CourseID int,FirstName varchar(50) not null,
LastName varchar(50)not null,
DateOfBirth date not null,Gender varchar(20) not null,PhoneNumber varchar(20),
Email varchar(50) not null unique,
Address varchar(255),primary key(StudentID),foreign key(CourseID) references Course(CourseID)
);

-- select all data from student table

SELECT * FROM Student;

-- create a Teachers table

create table Teachers(TeacherID int auto_increment not null,FirstName varchar(50) not null,
LastName varchar(50)not null,Gender varchar(20) not null);


-- create a Course table

create table Course(CourseID int auto_increment not null,Course_code varchar(50) not null,courseName varchar(50) not null,primary key(CourseID)
);

-- select all data from student table

SELECT * FROM Course;

-- create a Payment table

create table Payment(payment_id int auto_increment not null primary key,StudentID int,paymentDate date not null,amountPaid varchar(255),foreign key(StudentID) references Student(StudentID));

select * from Payment;



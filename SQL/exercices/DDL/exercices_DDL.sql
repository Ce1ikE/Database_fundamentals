				----		Exercices DDL		----

--use Holiday

---- (1)
--create table tblAnimatie
--(
--AnimatieID 
--		SMALLINT Primary key identity(1,1),
--AnimatieNaam char(20)		
--		constraint constANIMNAME unique,
--AnimatiePrice decimal(6,2)
--		constraint constANIMPRICE1 check(10 <= AnimatiePrice and AnimatiePrice <= 200)
--		constraint constANIMPRICE2 default(23),
--AnimatieParticipants smallint
--		constraint constANIMEPARTI check( 0 < AnimatieParticipants and AnimatieParticipants < 50),
--AnimatieCode char(3)
--		constraint constANIMCODE1 unique
--		constraint constANIMCODE2 check(AnimatieCode like '[A-Z][A-Z][A-Z]'),
--);

---- (2)
--create table tblPartic
--(
--ParticID 
--		smallint primary key identity(1,1),
--AnimatieID 
--		smallint foreign key references tblAnimatie(AnimatieID),
--StayID
--		smallint foreign key references Stay(stayId),
--);

----(3)
--create table Country
--(
--CountryID int primary key,
--CountryName char(50) not null
--);

--alter table tourist
--add CountryID int
--	constraint const_CountryID_FK foreign key references Country(CountryID)

----(4)
--alter table tourist
--drop constraint const_CountryID_FK
--alter table tourist
--drop column CountryID

----(5)
--create table emp
--(
--EmpID smallint primary key identity(1,1),
--NameEmp char(20),
--FirstNameEmp char(20),
--);

----(6)
--alter table tblAnimatie
--add ResponsableID smallint 
--	foreign key references emp(EmpID)

----(7)
--alter table Hotel
--add StarRating smallint
--		constraint constHOTELSTAR check(0 <= StarRating and StarRating <= 7)

----(8)
--alter table emp
--add PerctTewerkstelling decimal(5,2)
--		constraint constEMP1 check(13 <= PerctTewerkstelling and PerctTewerkstelling <= 100)
--		constraint constEMP2 default(50)

----(9)
--use School

--create table Students
--(
--StudentID int primary key identity(1,1),
--StudentName char(50) not null 
--);

--create table Courses
--(
--CourseID int primary key identity(1,1),
--CourseDescr char(20),
--CourseECTS int,
--	constraint constCOURSEECTS check(3 <= CourseECTS and CourseECTS <= 6), 
--);

--create table StudentCourse
--(
--StudentID int foreign key references Students(StudentID),
--CourseID int foreign key references Courses(CourseID),
--		constraint PKStudentCourse primary key (StudentID,CourseID)
--);


--create table Results
--(
--StudentID int foreign key references Students(StudentID),
--CourseID int foreign key references Courses(CourseID),
--		constraint FKresults foreign key (CourseID,StudentID) references StudentCourse(CourseID,StudentID),
--		constraint PKresults primary key (StudentID,CourseID,ResultsDate),
--ResultsDate datetime
--		constraint constRESULTSDATE check(datepart(dw,ResultsDate) not in (1,7)), ---- 7 = Sat 1 = Sun
--Results int
--		constraint constRESULTS1 check(1 < Results and Results < 20),	
--);
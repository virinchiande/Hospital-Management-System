drop database if exists Hospital;

create database Hospital;

use Hospital;

create table specialization(
specID varchar(10) primary key,
specName varchar(30));

insert into specialization values (1,"Dentist");
insert into specialization values (2,"Cardiologist");
insert into specialization values (3,"ENT Specialist");
insert into specialization values (4,"General Physician");
insert into specialization values (5,"Dermatologist");
insert into specialization values (6,"Orthopeditian");
insert into specialization values (7,"Neurologist");
insert into specialization values (8,"Pediatrician");


create table nurses(
nurseID varchar(10) PRIMARY KEY,
nurse_name varchar(30)
);

insert into nurses values(10,"Jessica");
insert into nurses values(11,"Jessi");
insert into nurses values(12,"Maise");
insert into nurses values(13,"Sansa");
insert into nurses values(14,"Cersei");
insert into nurses values(15,"Lyanna");
insert into nurses values(16,"Katalyn");
insert into nurses values(17,"Joe");
insert into nurses values(18,"Margery");
insert into nurses values(19,"Danerys");
insert into nurses values(20,"Arya");


create table disease(
disID varchar(10) primary key,
DiseaseName varchar(30));

insert into disease values (1,"Cold");
insert into disease values (2,"Cough");
insert into disease values (3,"Fever");
insert into disease values (4,"Heart attack");
insert into disease values (5,"Neural disease");
insert into disease values (6,"Cavity");
insert into disease values (7,"Gum disease");
insert into disease values (8,"Asthma");
insert into disease values (9,"Leprosy");
insert into disease values (10,"Scabies");
insert into disease values (11,"Eczema");
insert into disease values (12,"Psoriasis");
insert into disease values (13,"Bone marrow");


create table doctor(
docID varchar(10) primary key,
FirstName varchar(30),
LastName varchar(30),
MiddleName varchar(30),
Address varchar(30),
city varchar(30),
state varchar(30),
specID varchar(10),
YearsOfExperience int,
StartDate date,
EndDate date,
PhoneNumber long,
foreign key(specID) references specialization(specID));

insert into doctor values(1,"Tywin","","Lannister","9519 G UT","Charlotte","NC",1,10,"2015-09-09",NULL,9804300937);
insert into doctor values(2,"Olivia","","wilde","9524 G UTN","Charlotte","NC",2,10,"2015-09-10",NULL,9804300976);
insert into doctor values(3,"Ned","","Stark","9529 F UT","Charlotte","NC",3,10,"2015-10-09",NULL,9804300938);
insert into doctor values(4,"Robert","","Barratheon","9516 A UT","Charlotte","NC",4,10,"2015-09-11",NULL,9804300987);
insert into doctor values(5,"Aron","","Targaryen","9535 E UT","Charlotte","NC",5,10,"2015-10-10",NULL,9804300932);
insert into doctor values(6,"Rob","","Stark","9523 D UT","Charlotte","NC",6,10,"2015-09-09",NULL,9804300937);
insert into doctor values(7,"Theon","","Greyjoy","9509 B UT","Charlotte","NC",7,10,"2015-08-09",NULL,9804300567);
insert into doctor values(8,"Ramsey","","Bolton","9519 C UT","Charlotte","NC",8,10,"2015-07-09",NULL,9804300345);

create table pharmacy(
pharID varchar(10) primary key,
pharname varchar(20),
phoneno long
);

insert into pharmacy values(1,"Main",9804307654);
insert into pharmacy values(2,"Temp",9807654321);

create table patient
 (
patientID varchar(10) PRIMARY KEY,
patient_name varchar(30),
problem varchar(40),
category varchar(20),
address varchar(30),
date_discharged date,
date_admitted date,
Gender varchar(10),
room_no varchar(5),
disID varchar(10),
pharflag varchar(3),
nurflag varchar(3),
docflag varchar(3),
nurseID varchar(10),
pharID varchar(10),
docID varchar(10),
foreign key(nurseID) references nurses(nurseID),
foreign key(pharID) references pharmacy(pharID),
foreign key(docID) references doctor(docID),
foreign key(disID) references disease(disID));

insert into patient values(1,"Jon Snow","Cough","General Physician","11005 F Ashford Charlotte" ,NULL,NULL,"M",NULL,2,1,0,1,NULL,1,4);
insert into patient values(2,"Virinchi Ande","Cold","General Physician","11006 F Ashford Charlotte" ,NULL,NULL,"M",NULL,1,1,0,1,NULL,1,4);
insert into patient values(3,"Rashmi Ravindra","Fever","General Physician","11007 F Ashford Charlotte" ,NULL,NULL,"F",NULL,3,1,0,1,NULL,1,4);
insert into patient values(4,"Bhanu Sri","Gum Disease","Dentist","11008 F Ashford Charlotte" ,NULL,NULL,"F",NULL,7,1,0,1,NULL,1,1);
insert into patient values(5,"Sridhar Reddy","Heart attack","Cardilogist","11009 F Ashford Charlotte" ,NULL,"2016-11-11","M",1,4,1,1,1,10,1,2);
insert into patient values(6,"Sathwick Gopu","Cavity","Dentist","11008 H Ashford Charlotte" ,NULL,NULL,"M",NULL,7,1,0,1,NULL,1,1);
insert into patient values(7,"Jeevan Ram","leprosy","Dermatologist","11005 H Ashford Charlotte" ,NULL,NULL,"M",NULL,2,1,0,1,NULL,1,5);
insert into patient values(8,"Vamsy Jasti","Cavity","Dentist","11008 H Ashford Charlotte" ,NULL,NULL,"M",NULL,7,1,0,1,NULL,1,1);
insert into patient values(9,"Bhargav Gunda","Psoriasis","Dermatologist","11005 H Ashford Charlotte" ,NULL,NULL,"M",NULL,2,1,0,1,NULL,1,5);
insert into patient values(10,"Harish varma","Heart attack","Cardilogist","11009 F Ashford Charlotte" ,"2016-11-11","2016-10-10","M",2,4,1,1,1,12,1,2);
insert into patient values(11,"Srikar Medi","Bone Marrow","Orthopeditian","11010 F Ashford Charlotte" ,"2016-08-08","2016-07-07","M",3,13,1,1,1,11,1,4);
insert into patient values(12,"Prem Raj","Bone Marrow","Orthopeditian","11010 G Ashford Charlotte" ,"2016-08-09","2016-07-07","M",4,13,1,1,1,13,1,4);
insert into patient values(13,"Megan Rose","Heart attack","Cardilogist","11009 F Ashford Charlotte" ,NULL,"2016-11-11","F",5,4,1,1,1,14,1,2);
insert into patient values(14,"Snip Cage","Psoriasis","Dermatologist","11005 J Ashford Charlotte" ,NULL,NULL,"M",NULL,2,1,0,1,NULL,2,5);
insert into patient values(15,"Keerthana Reddy","Gum Disease","Dentist","11008 l Ashford Charlotte" ,NULL,NULL,"F",NULL,7,1,0,1,NULL,2,1);
insert into patient values(16,"Sravani Reddy","Fever","General Physician","11008 X Ashford Charlotte" ,NULL,NULL,"F",NULL,3,1,0,0,NULL,2,4);
insert into patient values(17,"Suneetha","Eczema","Dermatologist","11008 Q Ashford Charlotte" ,NULL,NULL,"F",NULL,11,0,1,0,20,2,1);
insert into patient values(18,"Swetha","Eczema","Dermatologist","11008 S Ashford Charlotte" ,NULL,NULL,"F",NULL,11,0,1,0,19,2,1);
insert into patient values(19,"Sarada","Cold","General Physician","11008 K Ashford Charlotte" ,NULL,NULL,"F",NULL,11,0,0,1,NULL,NULL,4);




create table attends(
patientID varchar(10),
nurseID varchar(10),
PRIMARY KEY(patientID,nurseID),
foreign key(patientID) references patient(patientID),
foreign key(nurseID) references nurses(nurseID)
);

insert into attends values(5,10);
insert into attends values(11,11);
insert into attends values(10,12);
insert into attends values(12,13);
insert into attends values(13,14);


create table home(
hno varchar(10) primary key,
address varchar(30)
);

insert into home values(1, "11005 M UTN charlotte");
insert into home values(2, "11005 B UTN charlotte");
insert into home values(3, "11005 A UTN charlotte");

create table assists(
nurseID varchar(10),
hno varchar(10),
patientID varchar(10),
no_of_days int,
primary key(nurseID,hno),
foreign key(nurseID) references nurses(nurseID),
foreign key(hno) references home(hno)
);

insert into assists values(20,1,17,20);
insert into assists values(19,2,18,30);


create table socialservice(
serviceID varchar(10) primary key,
service_name varchar(30)
);

insert into socialservice values(1,"camp");

create table services(
serID varchar(10),
nurseID varchar(10),
days_of_service int,
primary key(serID,nurseID),
foreign key(serID) references socialservice(serviceID),
foreign key(nurseID) references nurses(nurseID)
);

insert into services values(1,18,20);

create table student(
studentID varchar(10) primary key,
student_name varchar(30),
category varchar(20)
);

insert into student values(1,"Jagan Mohan","Skin");
insert into student values(2,"Venkat","Dental");

create table tutor(
nurseID varchar(10),
studentID varchar(10),
primary key(studentID,nurseID),
foreign key(studentID) references student(studentID),
foreign key(nurseID) references nurses(nurseID)
);

insert into tutor values(16,1);
insert into tutor values(16,2);
insert into tutor values(17,1);


create table prescription(
presID varchar(10) primary key,
docID varchar(20),
foreign key(docID) references doctor(docID));

insert into prescription values(1,4);
insert into prescription values(2,4);
insert into prescription values(3,4);
insert into prescription values(4,1);
insert into prescription values(5,2);
insert into prescription values(6,1);
insert into prescription values(7,5);
insert into prescription values(8,1);
insert into prescription values(9,5);
insert into prescription values(10,2);
insert into prescription values(11,4);
insert into prescription values(12,4);
insert into prescription values(13,2);
insert into prescription values(14,5);
insert into prescription values(15,1);
insert into prescription values(16,4);
insert into prescription values(17,1);
insert into prescription values(18,1);


create table possess(
patientID varchar(10),
presID varchar(10),
primary key(patientID,presID),
foreign key(patientID) references patient(patientID),
foreign key(presID) references prescription(presID)
);

insert into possess values(1,1);
insert into possess values(2,2);
insert into possess values(3,3);
insert into possess values(4,4);
insert into possess values(5,5);
insert into possess values(6,6);
insert into possess values(7,7);
insert into possess values(8,8);
insert into possess values(9,9);
insert into possess values(10,10);
insert into possess values(11,11);
insert into possess values(12,12);
insert into possess values(13,13);
insert into possess values(14,14);
insert into possess values(15,15);
insert into possess values(16,16);
insert into possess values(17,17);
insert into possess values(18,18);


create table drugs(
drugID varchar(10) primary key,
drug_name varchar(20),
purpose_of_drug varchar(20),
manufacture_name varchar(20)
);

insert into drugs values(1,"Asprin","Fever","Dr.Reddy's");
insert into drugs values(2,"Amoxicillin","Cold","Dr.Reddy's");
insert into drugs values(3,"Azithromycin","Cough","Dr.Reddy's");
insert into drugs values(4,"Lexapro","Gum Disease","Novartis");
insert into drugs values(5,"Naproxen","Psoriasis","Dr.Reddy's");
insert into drugs values(6,"Alprazolam","Neural disease","Dr.Reddy's");
insert into drugs values(7,"Ativan","Cavity","Dr.Reddy's");
insert into drugs values(8,"Lecostene","Asthma","Novartis");
insert into drugs values(9,"Lexapronix","Leprosy","Novartis");
insert into drugs values(10,"Acyllin","Scabies","Novartis");
insert into drugs values(11,"Sacylilic","Eczema","Novartis");
insert into drugs values(12,"Coalistix","Bone marrow","Novartis");
insert into drugs values(13,"Alphrix","Gum Disease","Novartis");
insert into drugs values(14,"Alphrix","Gum Disease","Dr.Reddy's");
insert into drugs values(15,"Acyllin","Scabies","Dr.Reddy's");
insert into drugs values(16,"Aristroxin","Heart attack","Novartis");




create table drugcontains(
drugID varchar(10),
presID varchar(10),
primary key(drugID,presID),
foreign key(drugID) references drugs(drugID),
foreign key(presID) references prescription(presID)
);


insert into drugcontains values(3,1);
insert into drugcontains values(2,2);
insert into drugcontains values(1,3);
insert into drugcontains values(4,4);
insert into drugcontains values(16,5);
insert into drugcontains values(7,6);
insert into drugcontains values(9,7);
insert into drugcontains values(7,8);
insert into drugcontains values(5,9);
insert into drugcontains values(16,10);
insert into drugcontains values(12,11);
insert into drugcontains values(12,12);
insert into drugcontains values(16,13);
insert into drugcontains values(5,14);
insert into drugcontains values(4,15);
insert into drugcontains values(1,16);
insert into drugcontains values(11,17);
insert into drugcontains values(11,18);
insert into drugcontains values(2,18);

create table contains(
pharID varchar(10),
drugID varchar(10),
primary key(drugID,pharID),
foreign key(drugID) references drugs(drugID),
foreign key(pharID) references pharmacy(pharID)
);

insert into contains values(1,1);
insert into contains values(1,2);
insert into contains values(1,3);
insert into contains values(1,4);
insert into contains values(1,5);
insert into contains values(1,6);
insert into contains values(1,7);
insert into contains values(1,8);
insert into contains values(1,9);
insert into contains values(1,10);
insert into contains values(1,11);
insert into contains values(1,12);
insert into contains values(2,1);
insert into contains values(2,2);
insert into contains values(2,3);
insert into contains values(2,4);
insert into contains values(2,5);
insert into contains values(2,6);
insert into contains values(2,7);
insert into contains values(2,8);
insert into contains values(2,9);
insert into contains values(2,13);
insert into contains values(2,14);
insert into contains values(2,15);
insert into contains values(2,16);



create table nurse_elderly(
patientID varchar(10),
presID varchar(10),
nurseID varchar(10),
primary key(patientID,presID,nurseID),
foreign key(patientID) references patient(patientID),
foreign key(presID) references prescription(presID),
foreign key(nurseID) references nurses(nurseID)
);

insert into nurse_elderly values(5,5,10);
insert into nurse_elderly values(10,10,12);
insert into nurse_elderly values(11,11,11);

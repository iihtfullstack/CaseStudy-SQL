create database fullstack;
commit;
use fullstack;

create table Parent_Task(
Parent_ID INT NOT NULL AUTO_INCREMENT primary key ,
Parent_Task VARCHAR(100) NOT NULL
);
COMMIT;



create table Project(
Project_ID   INT  NOT NULL AUTO_INCREMENT primary key,
Project VARCHAR(100) NOT NULL,
Start_Date DATE NOT NULL,
End_Date DATE NOT NULL,
Priority INT NOT NULL
);
commit;

create table Task(
Task_ID   INT  NOT NULL AUTO_INCREMENT primary key,
Parent_ID INT NOT NULL,
Project_ID   INT  NOT NULL,
Task     VARCHAR(100) NOT NULL,
Start_Date DATE NOT NULL,
End_Date DATE NOT NULL,
Priority INT NOT NULL,
Status VARCHAR(100) NOT NULL,
FOREIGN KEY (Parent_ID) REFERENCES Parent_Task(Parent_ID),
FOREIGN KEY (Project_ID) REFERENCES Project(Project_ID)
);
commit;

create table Users	(
User_ID   INT  NOT NULL AUTO_INCREMENT primary key,
First_Name VARCHAR(100) NOT NULL,
Last_Name VARCHAR(100) NOT NULL,
Employee_ID INT NOT NULL,
Project_ID INT NOT NULL,
Task_ID   INT  NOT NULL,
FOREIGN KEY (Project_ID) REFERENCES Project(Project_ID),
FOREIGN KEY (Task_ID) REFERENCES Task(Task_ID)
);
commit;

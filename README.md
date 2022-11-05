#Tech Stack
Java 8
HTML 
Springboot - An open source java based framework used to build web applications quickly.
H2 Database - In memory database, developed using Java and goes well with springboot.
Spring JDBC - Persistence Layer, a simple JDBC framework from Spring Community, that helps database operations easy with a good range of readily available APIs.
Spring ThemeLeaf - Template Engine
# Getting Started
1. Clone/download the GitRepo main branch using the below link.
	https://github.com/Gangadevimuppala/elibraryApp.git

2. Import as Gradle project in eclipse/intelliJ following the steps below.
	File>Import>Gradle>Existing Gradle Project
	Change the DB file location in application.properties
	1. spring.datasource.url=jdbc:h2:file:~/Users/sureshbabu/data
	2. spring.datasource.jdbc-url=jdbc:h2:file:~/Users/sureshbabu/data

3. Run the springboot Application ElibraryAppApplicationTestWITHH2DB.launch>right click>Run as 			ElibraryAppApplicationTestWITHH2DB 

Running in the VM for the first time? then create tables, open H2 Console using the below URL.
Login to http://localhost:8080/ELibrary/h2-console/

Execute the below table creations, this is needed only when the application is running for the first time in the VM, be mindful of running this after you have created the user set up as it erases everything.

DROP TABLE IF EXISTS E_BOOK;
CREATE TABLE E_BOOK (
CALLNO VARCHAR(500) PRIMARY KEY, 
NAME VARCHAR(500), 
AUTHOR VARCHAR(500), 
PUBLISHER VARCHAR(500), 
QUANTITY INT, 
ISSUED INT);

DROP TABLE IF EXISTS E_LIBRARIAN;
CREATE TABLE  E_LIBRARIAN (
ID INT AUTO_INCREMENT PRIMARY KEY, 
NAME VARCHAR(500), 
PASSWORD VARCHAR(500), 
EMAIL VARCHAR(500), 
MOBILE LONG);

DROP TABLE IF EXISTS E_ISSUEBOOK;
CREATE TABLE  E_ISSUEBOOK(
CALLNO VARCHAR(500) NOT NULL, 
STUDENTID VARCHAR(500) NOT NULL, 
STUDENTNAME VARCHAR(500), 
STUDENTMOBILE LONG, 
ISSUEDDATE DATE, 
RETURNSTATUS VARCHAR(500));

4. All set to, just use the below url to access the application
http://localhost:8080/ELibrary/login

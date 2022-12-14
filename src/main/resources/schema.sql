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
CREATE DATABASE COMPANY;
CREATE TABLE CONTACT(Id INT,Email VARCHAR(30),fname VARCHAR(30),Iname VARCHAR(30),company VARCHAR(3),Active_flag INT,opt_out INT);
INSERT INTO CONTACT VALUES(123,'a@a.com','Kian','Seth','ABC',1,1),(133,'b@a.com','Neha','Seth','ABC',1,0),
(234,'c@c.com','Puru','Malik','CDF',0,0),(342,'d@d.com','Sid','Maan','TEG',1,0);
SELECT * FROM CONTACT;
-- 1.select all columns from the contact table where the active flag is 1
SELECT * FROM CONTACT WHERE Active_flag=1;
-- 2 Deactivate contacts who are opted out 
UPDATE CONTACT SET Active_flag=0 WHERE opt_out=1;
-- 3 Delete all the contacts who have the company name as ‘ABC’
DELETE FROM CONTACT WHERE company='ABC';
-- 4 Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
INSERT INTO CONTACT VALUES(658,'mili@gmail.com','Mili',NULL,'DGH',1,1);
-- 5 Pull out the unique values of the company column
SELECT DISTINCT(company) FROM CONTACT;
-- 6 Update name “mili” to “niti”.
UPDATE CONTACT SET fname='niti' WHERE fname='Mili';
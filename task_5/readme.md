## Week 5 -  **Creat Cloud SQL**

1. Learning about:
    - databases
    - database types
    - Database Management Systems
    - SQL and NonSQL databases
    - DNS
    - DBeaver - database tool
    - firewalls for databases
 
## Goal of the task_5:

The goal of the task is to create Cloud SQL instance.

**How to:**
1. Create SQL Instance in SQL section of GCP.
2. Choose PostgreSQL for the database engine - PostgreSQL 14 version.
3. If possible choose Sandbox configuration. If not - Developoment.
4. In Connections check Public IP chechbox. Click ADD NETWORK. Google what is your IP and copy and paste the ipv4 in the Newtork form followed by /32 . Use only IPv4 here.
5. After creation of instance find and copy its Pubic IP adress.
6. Connect DBeaver with database: 
	- create New Folder DareIT and click Create Connection
	- choose PostgreSQL
	- paste Public IP of the Cloud SQL instance into Host
	- click Test Connection and look out for errors
	- if connection established procced with next steps
7. Create schema in database.
8. Click on teh schema, go to SQL Editor and create New SQL script with code:
```
CREATE TABLE students (
    id int,
    lastName varchar(255),
    firstName varchar(255),
    email varchar(255),
    city varchar(255)
);
```
9. Insert information about student:
```
INSERT INTO dareit.students
(id, lastname, firstname, email, city)
VALUES(0, '', '', '', '');
```
10. Insert information about 5 more students, add _age_ column with _int_ type  and prepare a query that will answer the question **what is average age of the students in the class?**

**Result:**
The file **students.txt** contains the table with id, lastname, firstname, email, city and age columns. 

*SQL Query to find out average age of the students:*
```
SELECT AVG(age)::numeric(10,0)

FROM dareit.students s ;
```
 _Query result:_

36
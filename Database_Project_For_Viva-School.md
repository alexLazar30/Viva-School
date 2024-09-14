# Database Project for Viva School

The scope of this project is to use all the SQL knowledge gained throught the Software Testing course and apply them in practice.

Application under test: __Viva School__

Tools used: MySQL Workbench.

## Database description
The project contains a school database structure. The goal of this database is to demonstrate how to organize a school in the online environment and how the recorded information may be used in specific situations.The database will contain the names of the children, the disciplines they will study, the grades they received in specific courses, and the number of absentees from class.


1. ### Database Schema
You can find below the database schema that was generated through Reverse Engineer and which contains all the tables and the relationships between them.

The tables are connected in the following way:

- **classbook**  is connected with **children** through a **constraint type** relationship which was implemented through **chidlren.id** as a primary key and **classbook.child_id** as a foreign key
- **child_situation**  is connected with **children** through a **constraint type** relationship which was implemented through **chidlren.id** as a primary key and **child_situation.current_child_id** as a foreign key


2. ### Database Queries

#### DDL (Data Definition Language)

  The following instructions were written in the scope of CREATING the structure of the database (CREATE INSTRUCTIONS)
1. On the line below database kids_school will be created
- `create database kids_school;`
2. On the lines below the following tables will be created: children, mandatory_disciplines, optional_disciplines, classbook, child_situation
- `create table children(id INT PRIMARY KEY AUTO_INCREMENT, nume varchar(30), prenume varchar(30), varsta int);`
- `create table mandatory_disciplines( id INT PRIMARY KEY AUTO_INCREMENT, school_curriculum varchar(30), enrolled varchar(30));`
- `create table optional_disciplines(id INT PRIMARY KEY AUTO_INCREMENT, school_curriculum varchar(30),enrolled varchar(30));`
- `create table classbook(id INT PRIMARY KEY AUTO_INCREMENT, child_id int, math varchar(30), physics varchar(30), english varchar(30), art varchar(30), neuroscience_principles varchar(30), physical_education varchar(30), foreign key (child_id) references children(id));`
- `create table child_situation(id INT PRIMARY KEY AUTO_INCREMENT, current_child_id int, number_of_allowed_absences int, total_absences int, foreign key(current_child_id) references children(id));`
3. On the lines bellow a new table will be created and it will be delete with TRUNCATE statement
- `create table children_bio_details(id INT PRIMARY KEY AUTO_INCREMENT, address varchar (30), hobby varchar(30));`
4. On the lines below table 'children_biography' will be created in order to be dropped
- `create table children_biography(id INT PRIMARY KEY AUTO_INCREMENT, address varchar(40), mother_fullname varchar(40), father_fullname varchar(40), phone varchar(30));`
              

  After the database and the tables have been created, a few __ALTER__ instructions were written in order to update the structure of the database, as described below:

- `alter table children_biography rename kids_bio;`
- `alter table children ADD date_of_birth date not null;`
- `alter table children rename column name to firstname;`
- `alter table children add phone_number varchar(30);`
- `alter table optional_disciplines modify column enrolled int;`
- `alter table children_biography modify id INT PRIMARY KEY AUTO_INCREMENT;`

  
  #### DML (Data Manipulation Language)

  In order to be able to use the database I populated the tables with various data necessary in order to perform queries and manipulate the data. 
  In the testing process, this necessary data is identified in the Test Design phase and created in the Test Implementation phase. 

  Below you can find all the insert instructions that were created in the scope of this project:
1. On the line below table 'child_situation' will be filled with data
- `insert insert into child_situation(current_child_id, number_of_allowed_absences, total_absences) values(1, 30, 16),(2, 30, 16), (3, 30, 0), (4, 30, 40), (5, 30, 29), (6, 30, 18), (7, 30, 0), (8, 30, 21), (9, 30, 0), (10, 30, 2), (11, 30, 4), (12, 30, 6)), (13, 30, 35), (14, 30, 9), (15, 30, 23), (16, 30, 36), (17, 30, 30), (18, 30, 15), (19, 30, 30), (20, 30, 30), (21, 30, 6), (22, 30, 9);`
2. On the line below table 'children' will be fill with data
- `insert into children (firstname, last_name, age, date_of_birth, gender) values ('Tudor', 'Matei', 10, '2014-11-12', 'M'), ('Pana', 'Lavinia', 10, '2014-11-12', 'F'), ('Constantinescu', 'Mihai', 12, '2012-04-23', 'M'), ('Ion', 'George', 13, '2011-10-02', 'M'), ('Mihai', 'Andreea', 12, '2012-04-23', 'F'), ('Ilie', 'Adrian', 9, '2015-11-16', 'M'), ('Vasile', 'Cristian', 15, '2009-07-23', 'M'), ('Ion', 'Cecilia', 13, '2011-10-02', 'F'), ('Popoi', 'Roxana', 9, '2015-11-16', 'F'), ('Popescu', 'Ionut', 10, '2014-02-22', 'M'), ('Grigore', 'Paul', 11, '2013-03-21', 'M'), ('Damache', 'Adrian', 12, '2012-12-04', 'M'), ('Cristescu', 'Alexandru', 16, '2008-05-14', 'M'), ('Damian', 'Alin', 12, '2012-06-11', 'M'), ('Enache', 'Catalina', 10, '2014-02-22', 'F'), ('Nedelcu', 'Iuliana', 15, '2009-07-23', 'F'), ('Caragea', 'Matei', 10, '2014-08-01', 'M'), ('Ispas', 'Cristina', 11, '2013-03-21', 'F'), ('Stefan', 'Marian', 10, '2014-03-3', 'M'),  ('Smith', 'Angela', 12, '2012-12-04', 'F'), ('Cristescu', 'Mihaela', 16, '2008-05-14', 'F'), ('Grigore', 'Andreea', 12, '2012-06-11', 'F');`
3. On the line below table 'mandatory_disciplines' will be fill with data
- `insert into mandatory_disciplines (school_curriculum, enrolled) values ('mathematics', '8'),('physics', '12'),('english', '12');`
4. On the line below table 'optional_disciplines' will be fill with data
- `insert into optional_disciplines(school_curriculum, enrolled) values ('art', 10), ('neuroscience_principles', 6), ('physical_education', 12);`
5. On the line below table 'classbook' will be fill with data
- `insert into classbook(child_id, math, physics, english, art, neuroscience_principles, physical_education) values  (2, '6', '8', '9', '10', '9', '10'), (3, '8', '7', '7', '9', '7', '9'), (1, '8', '9', '9', '8', '10', '10'), (4, '8', '8', '8', '8', '9', '10'), (5, '9', '10', '9', '10', '10', '10'), (7, '6', '6', '9', '9', '9', '9'), (6, '7', '7', '6', '5', '10', '9'), (8, '8', '8', '5', '5', '7', '7'), (9, '7', '7', '6', '7', '10', '8'), (11, '9', '10', '9', '10', '9', '9'), (10, '5', '9', '8', '6', '8', '10'), (12, '6', '7', '8', '9', '10', '9'), (14, '6', '8', '9', '10', '9', '10'), (13, '8', '7', '7', '10', '6','9'), (16, '8', '9', '9', '8', '10', '10'), (15, '8', '8', '8', '8', '9', '10'), (20, '9', '10', '9', '10', '10', '10'), (21, '7', '6', '9', '9', '9', '9'), (18, '7', '8', '5', '5', '5', '9'), (17, '8', '8', '8', '5', '7', '7'), (19, '7', '7', '9', '7', '10', '8'), (22, '9', '10', '9', '10', '9', '9');`
  

 After the insert, in order to prepare the data to be better suited for the testing process, I updated some data in the following way:
6. On the line bellow we will update the name for the child 'Tudor Matei' to 'Tudor Mihai'
- `update children SET last_name='Mihai' WHERE id=1;`
7. On the line below we will update the gender 'M' for ther column gender in the 'children' table
- `update children set gender='M' where id=1;`
8. On the line below we will update multiple Records based on multiple id's using IN operator
- `update children set gender='M' where id in( 3, 4, 6, 7, 10);`
  
  #### DQL (Data Query Language)

After the testing process, I deleted the data that was no longer relevant in order to preserve the database clean: 
1. On the line below a children from the 'children' table will be deleted
- `DELETE from children where id=23;`

In order to simulate various scenarios that might happen in real life I created the following queries that would cover multiple potential real-life situations:

##### where
2. `select * from children where age=10;`

##### AND
3. `select last_name, date_of_birth from children where date_of_birth like '2012%' and gender='F';`

##### OR
4. `select last_name, age from children where age=10 or age=13;`

##### NOT
5. `select  firstname, last_name, age from children where not age=10 and gender='M';`

##### like
6. `select firstname, last_name from children where firstname like'I%';`

##### inner join
7. `select current_child_id, firstname, last_name, number_of_allowed_absences, total_absences from children inner join child_situation on children.id=child_situation.current_child_id;`

##### left join
8. `select firstname, last_name, total_absences from children left join child_situation on children.id=child_situation.current_child_id;`

##### right join
9. `select child_id, math, physics, english, art, neuroscience_principles, physical_education, total_absences from child_situation right join classbook on child_situation.id=classbook.child_id order by child_situation.id;`

##### cross join
10. `select child_id, firstname, last_name, age, date_of_birth, gender, math, physics, english, art, neuroscience_principles, physical_education from children cross join classbook where children.id=classbook.child_id order by children.id;`

#### Aggregate functions

##### MIN()
11. `select * from optional_disciplines where enrolled=( select MIN(enrolled) from optional_disciplines);`

##### MAX()
12. `select * from child_situation where total_absences=( select MAX(total_absences) from child_situation );`

##### COUNT()
13. `select COUNT(age) as children_with_thirteen_years_old from children where age=13;`
14. `select count(gender) as no_of_girls from children where gender='F';`

##### SUM()
15. `select SUM(enrolled) as total_enrolled from mandatory_disciplines;`
16. `select SUM(enrolled) as total_enrolled from optional_disciplines;`

##### AVG()
17. `select AVG(total_absences) as average_absences from child_situation;`

##### group by
18. `select current_child_id, sum(total_absences) as absences from child_situation group by current_child_id having sum(total_absences)>20;`
19. `select COUNT(id) as no_of_childs, age from children group by age;`

##### having
20. `select current_child_id, sum(total_absences) as absences from child_situation group by current_child_id having sum(total_absences)>20;`

##### Subqueries
21. `select * from child_situation where total_absences=( select MAX(total_absences) from child_situation );`
22. `select * from optional_disciplines where enrolled=( select MIN(enrolled) from optional_disciplines);`

### Conclusions

Following my project, I learned how to establish a database, create tables within the database, and populate these tables with various types of information via data definition language (DDL) commands. At the same time, I learned to create links between certain tables by using foreign keys. The Viva School project is an example of how students can be saved on a server. I began using the data manipulation language (DML) and data query language (DQL) when the tables had been created and the relationships between them built.

I created several tables using DDL commands, including one for children, one for mandatory and optional classroom, one for the class catalog which contains the grades for the classes, one for general information about the children, and one for the number of absences for each child.  
Also I alter some tables schema by adding, removing or modify some columns in it. Last but not least, several tables were deleted using DDL commands.
Regarding DML commands I run operations like insert, update and delete some data from the mandatory and optional classroom tables, class catalog tables and children table

Regarding DQL commands I run operations like cross join, left and right join and filter these results after some columns or group by some columns.
As a result, I consider that I have completed all of the commands and instructions that I have studied and have carried out useful tasks that have real-world applications.

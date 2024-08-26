# 1. On the line below table 'children' will be fill with data
insert into children (firstname, last_name, age, date_of_birth) values
('Tudor', 'Matei', 10, '2014-11-12'),
('Constantinescu', 'Mihai', 12, '2012-04-23'),
('Ion', 'George', 13, '2011-10-02'),
('Ilie', 'Adrian', 9, '2015-11-16'),
('Vasile', 'Cristian', 15, '2009-07-23'),
('Popescu', 'Ionut', 10, '2014-02-22'),
('Grigore', 'Paul', 11, '2013-03-21'),
('Damache', 'Adrian', 12, '2012-12-04'),
('Cristescu', 'Alexandru', 16, '2008-05-14'),
('Damian', 'Alin', 12, '2012-06-11'),
('Caragea', 'Matei', 10, '2014-08-01'),
('Stefan', 'Marian', 10, '2014-03-3');

insert into children (firstname, last_name, age, date_of_birth, gender) values
('Pana', 'Lavinia', 10, '2014-11-12', 'F'),
('Mihai', 'Andreea', 12, '2012-04-23', 'F'),
('Ion', 'Cecilia', 13, '2011-10-02', 'F'),
('Popoi', 'Roxana', 9, '2015-11-16', 'F'),
('Nedelcu', 'Iuliana', 15, '2009-07-23', 'F'),
('Enache', 'Catalina', 10, '2014-02-22', 'F'),
('Ispas', 'Cristina', 11, '2013-03-21', 'F'),
('Smith', 'Angela', 12, '2012-12-04', 'F'),
('Cristescu', 'Mihaela', 16, '2008-05-14', 'F'),
('Grigore', 'Andreea', 12, '2012-06-11', 'F'),
('Ene', 'Cornelia', 10, '2014-08-01', 'F');


# 2. On the line below table 'mandatory_disciplines' will be fill with data
insert into mandatory_disciplines (school_curriculum, enrolled) values 
('mathematics', '8'),
('physics', '12'),
('english', '12');


# 3. On the line below table 'optional_disciplines' will be fill with data
alter table optional_disciplines modify column enrolled int;
insert into optional_disciplines(school_curriculum, enrolled) values
('art', 10),
('neuroscience_principles', 6),
('physical_education', 12);

# 4. On the line below table 'classbook' will be fill with grades for the mandatory and optional disciplines
insert into classbook(child_id, math, physics, english, art, neuroscience_principles, physical_education) values 
(2, '6', '8', '9', '10', '9', '10'),
(3, '8', '7', '7', '9', '7', '9'),
(1, '8', '9', '9', '8', '10', '10'),
(4, '8', '8', '8', '8', '9', '10'),
(5, '9', '10', '9', '10', '10', '10'),
(7, '6', '6', '9', '9', '9', '9'),
(6, '7', '7', '6', '5', '10', '9'),
(8, '8', '8', '5', '5', '7', '7'),
(9, '7', '7', '6', '7', '10', '8'),
(11, '9', '10', '9', '10', '9', '9'),
(10, '5', '9', '8', '6', '8', '10'),
(12, '6', '7', '8', '9', '10', '9');

insert into classbook(child_id, math, physics, english, art, neuroscience_principles, physical_education) values 
(14, '6', '8', '9', '10', '9', '10'),
(13, '8', '7', '7', '10', '6','9'),
(16, '8', '9', '9', '8', '10', '10'),
(15, '8', '8', '8', '8', '9', '10'),
(20, '9', '10', '9', '10', '10', '10'),
(21, '7', '6', '9', '9', '9', '9'),
(18, '7', '8', '5', '5', '5', '9'),
(17, '8', '8', '8', '5', '7', '7'),
(19, '7', '7', '9', '7', '10', '8'),
(23, '9', '10', '9', '10', '9', '9'),
(22, '9', '10', '9', '10', '9', '9');

# 5. On the line below table 'child_situation' will be filled with data 
insert into child_situation(current_child_id, number_of_allowed_absences, total_absences) values
(1, 30, 25),
(2, 30, 16),
(3, 30, 0),
(4, 30, 40),
(5, 30, 29),
(6, 30, 18),
(7, 30, 0),
(8, 30, 21),
(9, 30, 0),
(10, 30, 2),
(11, 30, 4),
(12, 30, 6);


insert into child_situation(current_child_id, number_of_allowed_absences, total_absences) values
(13, 30, 23),
(14, 30, 35),
(15, 30, 9),
(16, 30, 23),
(17, 30, 36),
(18, 30, 30),
(19, 30, 15),
(20, 30, 30),
(21, 30, 30),
(22, 30, 6),
(23, 30, 9);


# 6. On the line bellow we will update the name for the child 'Tudor Matei' to 'Tudor Mihai'
UPDATE children SET last_name='Mihai' WHERE id=1;

# 7. On the line below the data from the last row from the table 'classbook' will be deleted
DELETE from classbook WHERE id=12;

# 8. On the line below we will update the gender 'M' for ther column gender in the 'children' table
update children set gender='M' where id=1; 

# 9. On this line we will update multiple Records based on multiple id's using IN operator  
update children set gender='M' where id in(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);






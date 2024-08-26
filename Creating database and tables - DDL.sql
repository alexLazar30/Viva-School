# In this project I will develop the schema of a school database 

# On the line below database kids_school will be created
create database kids_school;

# On the lines below the following tables will be created: children, mandatory_disciplines, optional_disciplines, classbook, child_situation,

create table children(
			id INT PRIMARY KEY AUTO_INCREMENT,
            nume varchar(30),
            prenume varchar(30),
            varsta int
            );

create table mandatory_disciplines(
			id INT PRIMARY KEY AUTO_INCREMENT,
			school_curriculum varchar(30),
			enrolled varchar(30)
			);

create table optional_disciplines(
			id INT PRIMARY KEY AUTO_INCREMENT,	
			school_curriculum varchar(30),
			enrolled varchar(30)
			);
            
create table classbook(
			 id INT PRIMARY KEY AUTO_INCREMENT,
             child_id int,
             math varchar(30),
             physics varchar(30),
             english varchar(30),
             art varchar(30),
             neuroscience_principles varchar(30),
             physical_education varchar(30),
             
             foreign key (child_id) references children(id)
             
			); 
create table child_situation(
			id INT PRIMARY KEY AUTO_INCREMENT,
            current_child_id int,
            number_of_allowed_absences int,
            total_absences int,
            
            foreign key(current_child_id) references children(id)
			);
            
# On the line below a new column will be added for the table 'children'
alter table children ADD date_of_birth date not null;

# On the line bellow columns name 'nume', 'prenume', 'varsta' will be renamed to 'firstname', 'last_name', 'age';

alter table children rename column name to firstname;
alter table children rename column prenume to last_name;
alter table children rename column varsta to age;

# 
alter table children add phone_number varchar(30);

# On the line below the column 'phone_number' will be removed from the children table 
alter table children drop column phone_number; 

# On the lines bellow a new table will be created and it will be delete with TRUNCATE statement

create table children_bio_details(
			id INT PRIMARY KEY AUTO_INCREMENT,
            address varchar (30),
            hobby varchar(30)
			);
            
insert into children_bio_details( address, hobby) values 
('Republic Street, nr.1', 'quitar'),
('Victory Street, nr.23', 'soccer'),
('Magheru Boulevard, 14', 'aikido');

TRUNCATE table children_bio_details;

# On the lines below table 'children_biography' will be dropped

create table children_biography(
			id INT PRIMARY KEY AUTO_INCREMENT,
            address varchar(40),
            mother_fullname varchar(40),
            father_fullname varchar(40),
            phone varchar(30)
                );
insert into children_biography (address, mother_fullname, father_fullname, phone) values
	('Str. Stefan cel Mare', 'Ioana', 'Adrian', '0734575861'),
    ('Mihai Bravu, 23', 'Andreea', 'Constantin', '0734575952'),
    ('Str. Colentina, nr. 5', 'Oana', 'Madalin', '0734455762');



             
                
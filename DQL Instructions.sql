# 1. On the line below we wil select all the data from the 'children' table
 select * from children;
 
# 2. On the line below we will select columns: firstname, last_name and age from 'children' table
select firstname, last_name, age from children;

# 3. On the line below we will select all the children with age of 10.
select * from children where age=10; 

# 4. On the line below we will select all the children with total absences lower than 20 from the table 'child_situation'
select current_child_id, total_absences from child_situation where total_absences<=10;

# 5. On the line below we will select all the children with the total abscences higher than 30
select id, current_child_id, total_absences from child_situation where total_absences >=30;

# 6. On the line below we will select all the children with lastname Mihai from the table 'children'
select * from children where last_name='Mihai';

# 7. On the line below we will select all the children whose year of birth is '2015' from  the table 'children'
select * from children where date_of_birth like '2015%';

# 8. On the line below we will select all the girls name from the class whose year of birth is '2012' from the table 'children'
select last_name, date_of_birth from children where date_of_birth like '2012%' and gender='F';

# 9. On the line below we will select all the full names based on the first name that starts with 'I'
select firstname, last_name from children where firstname like'I%';

# 10. On the line below we will select all the children last_name with age of 10 and 13 from the table 'children'
select last_name, age from children where age=10 or age=13;

# 11. On the line below we will select all the child id's based on total absences with the value of 30 and the closest value higher than 30
select current_child_id from child_situation where total_absences=30 or total_absences=35;

# 12. On the line below we will select all the children who are not 10 years old and are boys
select  firstname, last_name, age from children where not age=10 and gender='M';

# 13. On the line below we will select all the math grades except of grade 5 and 10
select id, child_id, math from classbook where not math=5 and not math=10; 

# 14. On the line below the average value for the total absences will be calculated from the 'child_situation' table 
select AVG(total_absences) as average_absences from child_situation;
 
# 15. On the line below we will calculate the number of the children with the age of 13 years old
select COUNT(age) as children_with_thirteen_years_old from children where age=13;

# 16. On the line below we will calculate the number of girls from the school from the 'children' table
select count(gender) as no_of_girls from children where gender='F';

# 17. On the line below we will calculate the total enrolled from the mandatory disciplines from the 'mandatory_disciplines' table
select SUM(enrolled) as total_enrolled from mandatory_disciplines;

# 18. On the line below we will calculate the total enrolled from the optional disciplines from the 'optional_disciplines' table
select SUM(enrolled) as total_enrolled from optional_disciplines;

# 19. On the line below we will calculate the child with the higher number of absences from the 'child_situation' table by using an aggregate function in a subquery 

select * from child_situation
 where total_absences=( select MAX(total_absences) from child_situation );
  
 # 20. On the line below we will calculate the school curriculum with the lowest number of enrolled students from the 'optional_disciplines' table by using an aggregate function in a subquery 
select * from optional_disciplines
where enrolled=( select MIN(enrolled) from optional_disciplines);

# 21.  On the line below we will get all the columns records from the tables 'children' and 'classbook' using  Cross Join 
select child_id, firstname, last_name, age, date_of_birth, gender, math, physics, english, art, neuroscience_principles, physical_education
from children cross join classbook where children.id=classbook.child_id order by children.id;
 
# 22. On the line below we will join tables 'children' and 'child_situation' in order to get the fullname of the child and the
# total abscences using Inner Join statement

select current_child_id, firstname, last_name, number_of_allowed_absences, total_absences from children
inner join child_situation on children.id=child_situation.current_child_id;

# 23. On the line below we will use Left Join statement in order to get all the rows
# from the left table 'children' and the matching records on the right side of Left Join from the 'child_situation' table

select firstname, last_name, total_absences from children left join child_situation on children.id=child_situation.current_child_id;

# 24. On the line below, we will display the general situation of each child, both in terms of grades and the number of absences

select child_id, math, physics, english, art, neuroscience_principles, physical_education, total_absences 
from child_situation right join classbook on child_situation.id=classbook.child_id order by child_situation.id;

# 25. On the line below we will get all the children in ascending order based on their date of birth from the 'children' table 

select firstname, last_name, date_of_birth from children order by date_of_birth ASC;

# 26. On the line bellow we will get all the absences from the 'child_situation' table in descending order
select firstname, total_absences from children inner join
child_situation on children.id=child_situation.current_child_id order by total_absences DESC;

# 27. On the line below we will get how many children are 9 years old, 10 years old and so on
select COUNT(id) as no_of_childs, age from children group by age;

# 28. On the line below we will get the childs with the absences higher than 20
select current_child_id, sum(total_absences) as absences from child_situation group by current_child_id having sum(total_absences)>20;

# 29 On the line below we will display only the first 3 children born in 2012
select firstname, last_name, date_of_birth from children where date_of_birth like '2012%' limit 3;

# 30. On the line below we will use an aliases named 'kids' when we will get the data from the 'optional_disciplines' table 
select id, school_curriculum, enrolled as registered_kids from optional_disciplines;



 






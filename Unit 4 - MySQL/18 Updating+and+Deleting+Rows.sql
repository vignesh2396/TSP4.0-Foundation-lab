
-- Initial prep, creating emp table and inserting records

create table temp_schema.emp (emp_id integer, 
emp_name varchar(255), 
emp_dept varchar(255), 
salary integer);

insert into temp_schema.emp 
values 
(1, 'John', 'Finance', 2000),
(2,'Anita', 'Sales', 5000),
(3, 'Margaret', 'Finance', 6000),
(4, 'Alice', 'IT', 2000),
(5, 'Amit', 'Finance', 7000),
(6, 'Gabriel', 'IT', 8000);


/*
UPDATE table_name
SET column1 = value1, 
column2 = value2, ...
WHERE condition;
*/
select * from temp_schema.emp;

UPDATE temp_schema.emp
SET emp_name = 'Gabrielle'
WHERE emp_id = 6;


UPDATE temp_schema.emp
SET emp_name = 'Gabrielle'
WHERE name= 'Gabriel';


UPDATE temp_schema.emp
SET emp_dept= 'Technology', 
salary = 5000
WHERE emp_dept= 'IT';


UPDATE temp_schema.emp
SET emp_name = 'Bob';

select * from temp_schema.emp;


UPDATE temp_schema.emp
SET salary = 2000
where salary > 5000 and emp_dept = 'Finance';


/*
DELETE FROM table_name 
WHERE condition;
*/


DELETE FROM temp_schema.emp
where emp_dept = 'Sales';


DELETE FROM temp_schema.emp;
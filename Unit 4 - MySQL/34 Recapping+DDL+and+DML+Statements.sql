
-- Using the Where Clause and Operators in DML

create table countries.countries_copy as select * from countries.countries;

select * from countries.countries_copy;

delete from countries.countries_copy where name like'A%';

update countries.countries_copy set population = NULL where population = 0;

drop table countries.countries_copy;

create table countries.temp (col1 int, col2 varchar(50) check (col2 in ('Boat', 'Tree','Lake')));

insert into countries.temp values (1, 'Hello');

insert into countries.temp values (1, 'Tree');



-- Using Operators in DDL

CREATE TABLE countries.temp (col1 INT, col2 VARCHAR(50) CHECK (col2 IN ('Boat' , 'Tree', 'Lake')));

select * from countries.temp;

insert into countries.temp values (1, 'Hello');

insert into countries.temp values (1, 'Tree');

drop table countries.temp;
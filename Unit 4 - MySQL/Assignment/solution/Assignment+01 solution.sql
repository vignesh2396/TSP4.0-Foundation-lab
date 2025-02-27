/*
1. Create a new schema called assignment_schema
*/

create schema ASSIGNMENT_SCHEMA;

/*
2. Inside of the new schema create the following table called movie_ratings with the same records. 
Note: You will need to create the table first and then insert the records
*/

create table ASSIGNMENT_SCHEMA.MOVIE_RATINGS (MOVIE varchar(255), GENRE varchar(255), RATING numeric(4,1));

insert into assignment_schema.movie_ratings values
('The Shawshank Redemption', 'Drama', 9.3),
('The Godfather', 'Crime', 9.2);

select * from assignment_schema.movie_ratings;

/*
3. Now add a constraint to the table that will prevent the new record from being inserted
*/

alter table assignment_schema.movie_ratings
modify column movie varchar(255) unique;

/*
4. Try to insert the record and confirm its insertion has been prevented
*/

insert into assignment_schema.movie_ratings
values ('The Godfather', 'Drama', 9.1);















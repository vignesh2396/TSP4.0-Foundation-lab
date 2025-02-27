/*
1. In the movie_ratings table in the assignment_schema, add a check constraint to the table 
preventing values that are 0 or below from being entered in the ratings column
*/

alter table assignment_schema.movie_ratings
add CHECK (rating >0);

/*
2. Test this constraint to ensure it works properly
*/

insert into assignment_schema.movie_ratings
values
('Test','Test',-10);

/*
3. Drop the movie_ratings table
*/
drop table assignment_schema.movie_ratings;

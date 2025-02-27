
-- creating a new table in countries schema
create table countries.test (col1 int);

-- dropping the test table
drop countries.test (col1 int);

/*
GRANT privileges ON object TO user;

REVOKE privileges ON object FROM user;
*/

-- granting the user select privileges
grant select on countries.* to 'user1'@'localhost';

-- user1 can use this to test select access
select * from countries.test;

-- granting user1 select and create privileges
grant select, create on countries.* to 'user1'@'localhost';

-- testing create privileges for user1
create table countries.test (col1 int);

-- revoking create privileges to user1
revoke create on countries.* from 'user1'@'localhost';

-- revoking all privileges to user1
revoke all on countries.* from 'user1'@'localhost';

-- granting user1 all privileges on a single table
grant all on countries.regions to 'user1'@'localhost';

-- revoking user1 all privileges on a single table
revoke all on countries.regions from 'user1'@'localhost';
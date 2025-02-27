-- root
create schema temp;
create table temp.table1 (name varchar(15), age int);
grant all on temp.* to 'user1'@'localhost';

-- turning off auto commit, only lasts for session
set autocommit=0;
insert into temp.table1 values ('Nirav', 23);
insert into temp.table1 values ('Ankit', 30);
commit;

-- explicitly starting a transaction
begin;
-- start transaction;
insert into temp.table1 values ('Liam', 50);
commit;

-- user1
select * from temp.table1;
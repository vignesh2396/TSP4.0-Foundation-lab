select * from temp.table1;

-- starting a transaction
begin;

update temp.table1 set age = 29 where name ='Ankit';

-- rollback will rollbak uncommited changes only
rollback;


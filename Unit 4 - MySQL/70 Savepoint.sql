select * from temp.table1;

begin;

insert into temp.table1 values ('Susan', 29);

savepoint sp_1;

delete from temp.table1 where name = 'Nirav';

-- rolls back changes to latest savepoint reference
rollback to savepoint sp_1;

-- once you commit you lose the savepoint
commit;
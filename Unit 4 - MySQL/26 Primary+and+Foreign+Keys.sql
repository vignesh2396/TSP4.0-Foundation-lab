 
-- Creating the Primary Key Table
CREATE TABLE temp_schema.pk_table (
    col_1 INTEGER,
    col_2 VARCHAR(10),
    PRIMARY KEY (col_1)
);


-- Creating the Foreign Key Table
CREATE TABLE temp_schema.fk_table (
    col_1 VARCHAR(10),
    col_2 INTEGER,
    FOREIGN KEY (col_2)
        REFERENCES temp_schema.pk_table (col_1)
);

-- You cannot insert this record until the 
-- corresponding value is in the PK column
insert into temp_schema.fk_table values ('apple', 1);

-- following this insertion the prior statement will work
insert into temp_schema.pk_table values (1, 'fruit');

-- You cannot insert this record until the corresponding value is in the PK column
insert into temp_schema.fk_table values ('kangaroo', 2);

-- following this insertion the prior statement will work
insert into temp_schema.pk_table values (2, 'animal');

select * from temp_schema.pk_table;
-- The primary key column prevents duplicate and null values 
insert into temp_schema.pk_table values (2, 'animal');
insert into temp_schema.pk_table values (NULL, 'animal');


-- Dropping the PK will not work until 
-- the dependency has been removed
alter table temp_schema.pk_table
drop primary key;

-- Dropping the FK
alter table temp_schema.fk_table
drop constraint fk_table_ibfk_1;

desc temp_schema.pk_table;

-- Adding PK via ALTER TABLE
alter table temp_schema.pk_table
add primary key (col_1);

-- Adding FK via ALTER TABLE
alter table temp_schema.fk_table
add foreign key (col_2) 
references temp_schema.pk_table(col_1);

















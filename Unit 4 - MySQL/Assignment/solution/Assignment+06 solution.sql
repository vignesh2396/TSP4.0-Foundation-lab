/*
1. Create a table in the HR schema called SALES_PEOPLE. The structure of this table should be the same as the EMP table... with one difference:

==> Instead of the SAL and COMM columns hava a column called TOTAL_PAY
*/
describe hr.emp;

CREATE TABLE hr.sales_people (
    emp_no INT,
    e_name VARCHAR(255),
    job VARCHAR(255),
    mgr INT,
    hire_date DATE,
    total_pay DECIMAL(10 , 2 ),
    deptno INT
);
/* 
2. Insert records into the SALES_PEOPLE table from the EMP table with only the records where the job is SALESMAN. (SAL + COMM = TOTAL_PAY)
*/
insert into hr.sales_people
select emp_no, e_name, job, mgr, hire_date, sal+comm, dept_no from hr.emp where job ='SALESMAN';

-- select all records from the table
select * from hr.sales_people;
-- update the records to change the job title from "SALESMAN" TO "SENIOR SALESMAN" if the employee TOTAL_PAY is over 2000.
update hr.sales_people
set job = "SENIOR SALESMAN"
where total_pay > 2000;
-- select all records from the table.
select * from hr.sales_people;

-- drop the table
drop table hr.sales_people;

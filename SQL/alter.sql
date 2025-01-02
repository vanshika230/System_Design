Create table account(
id int primary key,
name varchar(255) UNIQUE,
balance INT NOT NULL DEFAULT 0
);

select * from account;

-- ADD new column
ALTER TABLE account ADD interest FLOAT NOT NULL DEFAULT 0;

-- MODIFY data type
alter table account MODIFY interest DOUBLE NOT NULL DEFAULT 0;

DESC account;

-- CHANGE COLUMN - RENAME THE COLUMN
alter table account CHANGE COLUMN interest saving_interest FLOAT NOT NULL DEFAULT 0;

-- drop 
alter table account DROP saving_interest;

-- rename table 
alter table account RENAME TO account_details; 

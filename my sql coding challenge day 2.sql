create database onlinebookstore;
use onlinebookstore;

-- Using Primary key & Foregin key--
create table Books (
Book_ID int primary key);

create table orders (
order_ID int primary key,
Book_ID int,
foreign key (Book_ID) References Books (Book_ID)
);

-- Using Unique key--
alter table Books
add column ISBN varchar(10) unique;
select * from Books;

-- Delete vs Truncate--
delete from orders
where ordertype = "TEST";

truncate table orders;
select * from orders;


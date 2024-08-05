CREATE DATABASE library;
 
USE library;
 

select * from books1;
describe books1;

select * from members1;
select * from authors;

-- add data from one table to another
insert into authors (AuthorID,AuthorName)
select ISBN10, Author
from books1;

-- remove column from a table
alter table authors
drop column BirthDate;

alter table books1
add bookID int; 


-- count the number of authors and how many times they are mentioned
select distinct count(author) as NumberOfBooks, author from books1
group by author;


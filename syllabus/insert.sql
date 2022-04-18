-- insert into author values ('ATH02', 'Afnan Shihab', 'afnan@mail.com', '9217563056', 'ACTIVE');
-- insert into author values ('ATH03', 'Jaseena Shihab', 'jaseena@mail.com', '7558976075', 'ACTIVE');
-- insert into author values ('ATH04', 'Shihab', 'shihab@mail.com', '9496422700', 'ACTIVE');

-- insert into publisher values ('PUB02', 'O Reilly', 'C2, Ashar Apartments');
-- insert into publisher values ('PUB03', 'Penguin', 'B1, Ashar Apartments');
-- insert into publisher values ('PUB04', 'MIT Press', 'B2, Ashar Apartments');

-- insert into member values ('MEM02', 'Amina', 'BRC02', 2, '9346303227', 'amina@mail.com', '03-JAN-2022', 'ACTIVE');
-- insert into member values ('MEM03', 'Shereefa', 'BRC01', 2, '9446303225', 'shereefa@mail.com', '10-JAN-2022', 'ACTIVE');
-- insert into member values ('MEM04', 'Abdulla', 'BRC02', 3, '9388602865', 'abdulla@mail.com', '01-FEB-2022', 'ACTIVE');

insert into book values ('BK002', 'Python', 'LN002', 2599.0, 'PUB01', '20-JAN-2015', 2, 'ACTIVE');
insert into book values ('BK003', 'Databases', 'LN001', 1599.0, 'PUB03', '26-JUL-2015', 10, 'ACTIVE');
insert into book values ('BK004', 'Aadujeevitham', 'LN001', 5599.0, 'PUB04', '20-JAN-2015', 8, 'ACTIVE');
insert into book values ('BK005', 'Steve Jobs', 'LN002', 5599.0, 'PUB04', '20-JAN-2015', 8, 'ACTIVE');

select author.name, count(book_author.book_id) from book_author, author where book_author.author_id=author.author_id group by author.name;

insert into late_fee_rule values (&fromdays, &todays, &amount);
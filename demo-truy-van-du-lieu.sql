-- Liet ke
select * from Books;
select Name,Content,YearPublish as namxuatban,Price from Books;
-- Sap xep
select * from Books order by Price asc;
select * from Books order by Price desc;
-- asc: -- number: low->high
 -- string: alphabe
 -- date time:  old -> new
-- desc > < asc
select top 1 * from Books order by Price desc;
select top 5 percent * from Books order by Price desc;

-- Loc (filter)
select * from Books where TypeId = 2;
select * from Books where TypeId = 2 and Qty > 0;
select * from Books where TypeId = 2 or NumberPublish = 1;
select * from Books where YearPublish >= '2022-01-01';
select * from Books where Name like N'Thủy Hử';
select * from Books where YearPublish between '2022-01-01' and '2022-09-01';
select * from Books where NumberPublish in (1,2,3);
select * from Books where NumberPublish in (1,2,3) order by Price desc;

-- Search
select * from Books where Name like N'Thủy%';-- start of
select * from Books where Name like N'%ử'; -- end of
select * from Books where Name like N'%ử%'; -- contain

-- Thong ke
select count(*) as soluong from Books;
select sum(Price) as TongTien from Books;
select avg(Price) as Tvc from Books;
select sum(Price * Qty) as  tongtienthucsu from Books;

select count(*) as soluong,TypeId from Books group by TypeId;
select sum(Price * Qty) as  tienhang,TypeId from Books group by TypeId;

-- Mo rong
-- subquery
select * from Books;
select * from Types;

select * from Books where TypeId in
(select Id from Types where Name like N'Văn học cổ đại');

-- join table
select Books.Name, Books.Content, Types.Name as TypeName from Books
inner join Types on Types.Id = Books.TypeId where Books.Qty > 0;
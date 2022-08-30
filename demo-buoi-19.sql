select * from Authors;

alter table Authors add Age int;

update Authors set Age = 1;

alter table Authors add check(Age > 0 and Age < 150);

alter table Authors add Birthday date;
alter table Authors alter column Birthday datetime;
alter table Authors drop column Birthday;

alter table Authors drop constraint CK__Authors__Age__6E01572D;

alter table Authors add constraint them_check_age 
check(Age>0 and Age<150);

-- PROCEDURE
create procedure list_all_authors as
select * from Authors;
select * from Types;
select * from Publishions;

exec list_all_authors;

create procedure add_author @an nvarchar(100), @ag int as
insert into Authors (Name,Age) values(@an,@ag);

exec add_author @an=N'Phạm Đăng Danh', @ag = 18;
exec add_author @an = N'Lưu Quán Trung', @ag=105;

--drop procedure add_author;
-- Viết Procedure: Đưa vào tên tác giả, liệt kê sách của tác giả đó
create procedure list_book_by_author @an nvarchar(100) as
select * from Books where AuthorId in (select Id from Authors where Name like @an);

exec list_book_by_author @an = N'Nam Cao';

-- TRIGGER
create trigger can_not_delete_author
on Authors
after delete
as
begin
print 'Khong cho xoa tac gia';
rollback transaction;
end

delete from Authors where Id = 4;

drop trigger can_not_delete_author;

create trigger check_age_insert
on Authors
after insert
as
begin
if exists (select * from inserted where Age < 20)
 begin
 print 'It tuoi qua, doc them sach di';
 rollback transaction;
 end
end

create trigger ko_cho_giam_tuoi_tg
on Authors
after update
as
 begin
if (select Age from inserted) < (select Age from deleted)
begin
  print 'khong cho giam tuoi tac gia';
  rollback transaction;
end

 end

 update Authors set Age = 104 where Id = 6;
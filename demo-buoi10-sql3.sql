-- CREATE DATA
insert into Types(Name) values(N'Văn học nước ngoài');
insert into Types(Name) values(N'Văn học cổ đại'),(N'Văn học hiện đại');
-- READ
select * from Types;

insert into Authors(Name) values(N'Dale Can');
select * from Authors;

insert into Publishions(Name,Address) 
values(N'NXB Giáo dục',N'20 Quang Trung, Hà Đông');
select * from Publishions;

insert into Books(Name,Content,TypeId,PublishionId,AuthorId)
values(N'Ngôi nhà nhỏ trên thảo nguyên',N'Tình cảm hành động',2,1,1);
insert into Books(Name,Content,TypeId,PublishionId,AuthorId)
values(N'Thủy Hử',N'Truyện kinh dị cổ trang',3,1,1);


select * from Books;

-- UPDATE
update Books set Price = 50000 where Id = 2;
update Books set NumberPublish=2, Qty = 10 where Id = 1;

-- DELETE
delete from Books where Id = 2;
 
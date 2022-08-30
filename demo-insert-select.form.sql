insert into Types(Name) values(N'Văn học nước ngoài');
insert into Types(Name) values(N'Văn học cổ đại'),(N'Văn học hiện đại');


insert into Authors(Name) values(N'Dale Can');


insert into Publishions(Name,Address) values(N'NXB Giáo dục',N'20 Quang Trung , Hà Đông');


insert into Books(Name,Content,TypeId,PublishionId,AuthorId) values(N'Ngôi nhà nhỏ trên thảo nguyên',N'Tình cảm hành động',2,1,1);
insert into Books(Name,Content,TypeId,PublishionId,AuthorId) values(N'Thủy Hử',N'Kinh dị cổ trang',3,1,1);

update Books set Price = 30000;
update Books set NumberPublish = 2,Qty = 10 where Id = 2 ;
select * from Books;
select * from Publishions;
select * from Authors;
select * from Types;

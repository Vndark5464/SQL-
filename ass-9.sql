create table NHACUNGCAP(
MaNhaCC nvarchar(20) primary key ,
TenNhaCC nvarchar(255) not null ,
DiaChi nvarchar(255) not null ,
SoDT nvarchar(50) not null ,
MaSoThue nvarchar(20) not null
);
create table LOAIDICHVU(
MaLoaiDV nvarchar(20) primary key ,
TenLoaiDV nvarchar(255) not null );

create table MUCPHI(
MaMP nvarchar(20) primary key ,
DonGia decimal(16,0) not null check(DonGia >=0 ) default 0,
MoTa ntext
);

create table DONGXE(
DongXe nvarchar(20) primary key ,
HangXe nvarchar(255) not null ,
SoChoNgoi int not null);

create table DANGKYCUNGCAP(
MaDKCC nvarchar(25) primary key ,
MaNhaCC nvarchar(20) not null foreign key references NHACUNGCAP(MaNhaCC),
MaLoaiDV nvarchar(20) not null foreign key references LOAIDICHVU(MaLoaiDV),
DongXe nvarchar(20) not null foreign key references DONGXE(DongXe),
MaMP nvarchar(20) not null foreign key references MUCPHI(MaMP),
NgayBatDauCungCap date not null default GETDATE(),
NgayKetThucCungCap date not null default GETDATE(),
SoLuongXeMayDangKy int not null );

insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values (N'NCC001',N'Cty TNHH Toàn Pháp',N'Hai Chau',N'05113999888',N'568941');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values (N'NCC002',N'Cty Cổ Phần Đông Du',N'Lien Chieu',N'05113999889',N'456789');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values (N'NCC003',N'Ông Nguyễn Văn A',N'Hoa Thuan',N'05113999890',N'321456');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values (N'NCC004',N'Cty Cổ Phần Toàn Cầu Xanh',N'Hai Chau',N'05113999891',N'513346');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values (N'NCC005',N'Cty TNHH AMA',N'Thanh Khe',N'05113999892',N'546546');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values (N'NCC006',N'Bà Trần Thị Bích Vân',N'Lien Chieu',N'05113999893',N'524545');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values (N'NCC007',N'Cty TNHH Phan Thành',N'Thanh Khe',N'05113999894',N'113021');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values (N'NCC008',N'Ông Phan Đình Nam',N'Hoa Thuan',N'05113999895',N'121230');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values (N'NCC009',N'Tập Đoàn Đông Nam Á',N'Lien Chieu',N'05113999896',N'533654');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values (N'NCC010',N'Cty Cổ Phần Rạng Đông',N'Lien Chieu',N'05113999897',N'187864');


insert LOAIDICHVU(MaLoaiDV,TenLoaiDV) values (N'DV01',N'Dịch vụ xe taxi');
insert LOAIDICHVU(MaLoaiDV,TenLoaiDV) values (N'DV02',N'Dịch vụ xe buýt công cộng theo tuyến cố định');
insert LOAIDICHVU(MaLoaiDV,TenLoaiDV) values (N'DV03',N'Dịch vụ xe thuê theo hợp đồng');


insert into MUCPHI(MaMP,DonGia,MoTa) values (N'MP01',N'10000',N'Áp dụng từ 1/2015');
insert into MUCPHI(MaMP,DonGia,MoTa) values (N'MP02',N'15000',N'Áp dụng từ 2/2015');
insert into MUCPHI(MaMP,DonGia,MoTa) values (N'MP03',N'20000',N'Áp dụng từ 1/2010');
insert into MUCPHI(MaMP,DonGia,MoTa) values (N'MP04',N'25000',N'Áp dụng từ 2/2011');


insert into DONGXE(DongXe,HangXe,SoChoNgoi) values (N'Hiace',N'Toyota',N'16');
insert into DONGXE(DongXe,HangXe,SoChoNgoi) values (N'Vios',N'Toyota',N'5');
insert into DONGXE(DongXe,HangXe,SoChoNgoi) values (N'Excape',N'Ford',N'5');
insert into DONGXE(DongXe,HangXe,SoChoNgoi) values (N'Cerato',N'KIA',N'7');
insert into DONGXE(DongXe,HangXe,SoChoNgoi) values (N'Foxte',N'KIA',N'5');
insert into DONGXE(DongXe,HangXe,SoChoNgoi) values (N'Starex',N'Huyndai',N'7');
insert into DONGXE(DongXe,HangXe,SoChoNgoi) values (N'Grand-i10',N'Huyndai',N'7');

select * from NHACUNGCAP;
select * from LOAIDICHVU;
select * from MUCPHI;
select * from DONGXE;


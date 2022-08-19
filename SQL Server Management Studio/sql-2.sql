create table SANPHAM(
TenSanPham nvarchar(255) primary key,
MoTa ntext,
DonVi nvarchar(50) not null,
Gia nvarchar(255) not null

);
create table KHACHHANG(
TenKH nvarchar(50) primary key,
SoDienThoai nvarchar(50) not null,
DiaChi nvarchar(255) not null
);

create table DONDATHANG(
MaSoDonHang nvarchar(20) primary key,
NgayDatHang date default GETDATE(),
SanPhamId nvarchar(255) foreign key references SANPHAM(TenSanPham),
IdDonHang nvarchar(50) foreign key references KHACHHANG(TenKH),
SoLuong nvarchar not null,
TongSoTien nvarchar not null
);

insert into KHACHHANG( TenKH,DiaChi,SoDienThoai) values (N'Nguyễn Văn An',N'111 Nguyễn Trãi,Thanh Xuân,Hà Nội',N'987654321');
insert into KHACHHANG( TenKH,DiaChi,SoDienThoai) values (N'Nguyễn Văn Ba',N'112 Nguyễn Trãi,Thanh Xuân,Hà Nội',N'123456789');
insert into KHACHHANG( TenKH,DiaChi,SoDienThoai) values (N'Nguyễn Văn Cảnh',N'113 Nguyễn Trãi,Thanh Xuân,Hà Nội',N'192837465');


insert into DONDATHANG(MaSoDonHang,NgayDatHang,SoLuong,TongSoTien) values (N'123',N'11/18/09',N'1',N'1000');
insert into DONDATHANG(MaSoDonHang,NgayDatHang,SoLuong,TongSoTien) values (N'124',N'01/24/09',N'2',N'400');
insert into DONDATHANG(MaSoDonHang,NgayDatHang,SoLuong,TongSoTien) values (N'125',N'10/27/09',N'1',N'100');


insert into SANPHAM (TenSanPham,MoTa,DonVi,Gia) values (N'Máy Tính T450',N'Máy nhập mới',N'Chiếc',N'1000');
insert into SANPHAM (TenSanPham,MoTa,DonVi,Gia) values (N'Điện Thoại Nokia5670',N'Điện thoại đang hot',N'Chiếc',N'200');
insert into SANPHAM (TenSanPham,MoTa,DonVi,Gia) values (N'Máy In Samsung 450',N'Máy in đang ế',N'Chiếc',N'100');
insert into SANPHAM (TenSanPham,MoTa,DonVi,Gia) values (N'Điện Thoại SamSung A12',N'Máy nhập mới',N'Chiếc',N'4000');
insert into SANPHAM (TenSanPham,MoTa,DonVi,Gia) values (N'Điện Thoại Iphone 13 Pro Max',N'Điện thoại đang hot',N'Chiếc',N'33300');
insert into SANPHAM (TenSanPham,MoTa,DonVi,Gia) values (N'Điện Thoại Huawei Mate 30',N'ĐIện thoại đang ế',N'Chiếc',N'100');
insert into SANPHAM (TenSanPham,MoTa,DonVi,Gia) values (N'Máy Tính Dell Vostrol 3400',N'Máy tính nhập mới',N'Chiếc',N'28000');
insert into SANPHAM (TenSanPham,MoTa,DonVi,Gia) values (N'Điện Thoại Oppo A37',N'Điện thoại hàng cũ',N'Chiếc',N'1200');
insert into SANPHAM (TenSanPham,MoTa,DonVi,Gia) values (N'Điện Thoại SamSung A01s',N'Điện thoại hàng cũ',N'Chiếc',N'2200');


select * from KHACHHANG;
select * from SANPHAM;
select * from DONDATHANG;

select * from KHACHHANG order by TenKH ASC;
select * from SANPHAM order by Gia DESC ;



create database QLBH --CSDL Lab 2
go
use QLBH
go

Create table KhachHang
(
	MaKhachHang nvarchar(5) not null,
	HovaTenLot nvarchar(50) not null,
	Ten nvarchar(50) not null,
	Diachi nvarchar(255),
	Email nvarchar(50) not null,
	DienThoai nvarchar(13) not null,
	primary key(MaKhachHang)
)
go

create table SanPham
(
	MaSanPham int not null identity, --Tu dong tang
	Mota nvarchar(255) not null,
	SoLuong int not null,
	DonGia money not null,
	TenSP nvarchar(50) not null,
	primary key(MaSanPham),
	check(SoLuong>0),
	check(DonGia>0)
)
go
Create table HoaDon
(
	MaHoaDon int not null,
	NgayMuaHang datetime not null,
	MaKhachHang nvarchar(5) not null,
	TrangThai nvarchar(30) not null,
	primary key(MaHoaDon),
	foreign key(MaKhachHang) references KhachHang(MaKhachHang)
)
go

create table HoaDonChiTiet
(
	MaHoaDon int not null,
	MaSanPham int not null,
	SoLuong int not null,
	MaHoaDonChiTiet int not null identity,
	primary key(MaHoaDonChiTiet), --Tu dong tang
	foreign key(MaHoaDon) references HoaDon(MaHoaDon),
	foreign key(MaSanPham) references SanPham(MaSanPham)
)
go

--Nhập liệu bảng KhachHang
insert into KhachHang(MaKhachHang,HovaTenLot,Ten,Diachi,Email,DienThoai)
values('KH001',N'Lê Minh',N'Hương',N'Hà nội','HuongLM@fpt.edu.vn','0912876823')
insert into KhachHang(MaKhachHang,HovaTenLot,Ten,Diachi,Email,DienThoai)
values('KH002',N'Lê Minh',N'Hà',N'Hà nội','HaLM@fpt.edu.vn','0912876825')
insert into KhachHang(MaKhachHang,HovaTenLot,Ten,Diachi,Email,DienThoai)
values('KH003',N'Lê Minh',N'Đăng',N'Hà nội','DangLM@fpt.edu.vn','0912876815')
insert into KhachHang(MaKhachHang,HovaTenLot,Ten,Diachi,Email,DienThoai)
values('KH004',N'Lê Xuân',N'Lý',N'Thanh Hóa','LyLX@gmail.com','0979876823')
insert into KhachHang(MaKhachHang,HovaTenLot,Ten,Diachi,Email,DienThoai)
values('KH005',N'Trần Thu',N'Trang',N'Hà nội','TrangTT@fpt.edu.vn','0978876823')
insert into KhachHang(MaKhachHang,HovaTenLot,Ten,Diachi,Email,DienThoai)
values('KH006',N'Lê Minh ',N'Hà',N'Hà nam','HaTT@fpt.edu.vn','09798745823')
go
--Nhập liệu bảng sanpham- do masanpham tự động tăng nên không phải nhập
insert into SanPham(Mota,SoLuong,DonGia,TenSP)values(N'coi truyền hình',5,10000,N'Tivi')
insert into SanPham(Mota,SoLuong,DonGia,TenSP)values(N'dùng để làm mát',3,5000,N'Quạt điện')
insert into SanPham(Mota,SoLuong,DonGia,TenSP)values(N'dùng để chiếu sáng',3,5000,N'Bóng đèn sợi đốt')
insert into SanPham(Mota,SoLuong,DonGia,TenSP)values(N'dùng để chiếu sáng',3,5000,N'Bóng đèn tuýp')
insert into SanPham(Mota,SoLuong,DonGia,TenSP)values(N'dùng để làm mát',10,10000,N'Điều hòa')
insert into SanPham(Mota,SoLuong,DonGia,TenSP)values(N'dùng trong lớp học',10,500,N'Bàn học sinh')
insert into SanPham(Mota,SoLuong,DonGia,TenSP)values(N'dùng trong lớp học',30,50,N'Ghế học sinh')
insert into SanPham(Mota,SoLuong,DonGia,TenSP)values(N'dùng trong lớp học',3,100,N'Máy tính')
insert into SanPham(Mota,SoLuong,DonGia,TenSP)values(N'dùng trong lớp học',3,10,N'Bảng viết')
insert into SanPham(Mota,SoLuong,DonGia,TenSP)values(N'dùng trong lớp học',2,20,N'Bàn giáo viên')
go
insert into HoaDon(MaHoaDon,NgayMuaHang,MaKhachHang,TrangThai)values(1,'09-12-2016','KH001',N'Đã thanh toán')
insert into HoaDon(MaHoaDon,NgayMuaHang,MaKhachHang,TrangThai)values(2,'12-15-2016','KH002',N'Đã thanh toán')
insert into HoaDon(MaHoaDon,NgayMuaHang,MaKhachHang,TrangThai)values(3,'12-16-2016','KH002',N'Đã thanh toán')
insert into HoaDon(MaHoaDon,NgayMuaHang,MaKhachHang,TrangThai)values(4,'12-17-2016','KH003',N'chưa thanh toán')
insert into HoaDon(MaHoaDon,NgayMuaHang,MaKhachHang,TrangThai)values(5,'3-9-2017','KH006',N'Đã thanh toán')
insert into HoaDon(MaHoaDon,NgayMuaHang,MaKhachHang,TrangThai)values(6,'6-5-2017','KH004',N'Chưa thanh toán')
insert into HoaDon(MaHoaDon,NgayMuaHang,MaKhachHang,TrangThai)values(7,'1-24-2017','KH005',N'Chưa thanh toán')
insert into HoaDon(MaHoaDon,NgayMuaHang,MaKhachHang,TrangThai)values(8,'1-25-2017','KH002',N'Chưa thanh toán')
insert into HoaDon(MaHoaDon,NgayMuaHang,MaKhachHang,TrangThai)values(9,'2-26-2017','KH006',N'Đã thanh toán')
insert into HoaDon(MaHoaDon,NgayMuaHang,MaKhachHang,TrangThai)values(10,'3-7-2017','KH005',N'chưa thanh toán')
go

--Nhập liệu bảng chitiet hoadon - MaHoaDonchiTiet tự động tăng nên không phải nhập

insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(1,1,1)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(1,2,5)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(1,3,10)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(2,3,2)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(2,4,6)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(2,7,4)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(3,1,10)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(3,2,2)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(3,3,2)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(3,4,20)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(10,10,10)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(10,9,5)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(10,5,4)
insert into HoaDonChiTiet(MaHoaDon,MaSanPham,SoLuong) values(10,3,30)
go
select * from HoaDon
select * from SanPham
select * from HoaDonChiTiet
select * from KhachHang

--Câu 1:
--Lấy thông tin sau, sắp giảm dần theo MaKhachHang:
--MaKhachHang, Họ tên, MaHoaDon, NgayMuaHang, MaSanPham, TenSP, Số lượng mua, Thành Tiền. Trong đó Thành tiền = số lượng mua * DonGia

SELECT KhachHang.MaKhachHang, HovaTenLot + ' ' + Ten as HoTen,
		HoaDon.MaHoaDon, NgayMuaHang, SanPham.MaSanPham,TenSP,
		HoaDonChiTiet.SoLuong as SoLuongMua,
		HoaDonChiTiet.SoLuong* DonGia as ThanhTien
FROM KhachHang join HoaDon ON KhachHang.MaKhachHang = HoaDon.MaKhachHang
				join HoaDonChiTiet ON HoaDon.MaHoaDon = HoaDonChiTiet.MaHoaDon
				join SanPham ON SanPham.MaSanPham = HoaDonChiTiet.MaSanPham
ORDER BY KhachHang.MaKhachHang DESC


--Câu 2:  Hiển thị thông tin các hóa đơn mua hàng trong tháng 9 năm 2019, sắp tăng dần theo makhachhang: MaKhacHang, họ tên, mahoadon, ngày mua hàng.

SELECT KhachHang.MaKhachHang, HovaTenLot + ' ' + Ten as HoTen,
	MaHoaDon, NgayMuaHang
FROM KhachHang join HoaDon ON KhachHang.MaKhachHang = HoaDon.MaKhachHang
WHERE MONTH(NgayMuaHang)=9 and YEAR(NgayMuaHang)=2019
ORDER BY KhachHang.MaKhachHang ASC


--Câu 3: 
--Cho biết thông tin mua hàng của các khách hàng có địa chỉ ở Hà nội (kể cả khách hàng không mua hàng lần nào): 
--MaKhachHang, họ và tên, số lần mua.

SELECT KhachHang.MaKhachHang, HovaTenLot + ' ' + Ten as HoTen, COUNT (HoaDon.MaHoaDon) AS 'SoLanMua' 

FROM KhachHang

LEFT JOIN HoaDon ON KhachHang.MaKhachHang = HoaDon.MaKhachHang

LEFT JOIN HoaDonChiTiet ON HoaDon.MaHoaDon = HoaDonChiTiet.MaHoaDon WHERE KhachHang.Diachi LIKE '%Hà Nội%'

GROUP BY KhachHang.MaKhachHang, KhachHang.HovaTenLot, KhachHang.Ten


--Câu 4: Cho biết top 1 số sản phầm được mua nhiều lần nhất: masanpham, tenSP, số lần mua.

SELECT TOP 1 HoaDonChiTiet.MaSanPham, TenSP, COUNT(*) as SoLanMua 

FROM HoaDonChiTiet JOIN SanPham ON HoaDonChiTiet.MaSanPham = SanPham.MaSanPham 

GROUP BY HoaDonChiTiet.MaSanPham, TenSP

ORDER BY SoLanMua DESC

--Câu 5: cho biết những sản phẩm chưa được mua lần nào: masanpham, tên sản phẩm, so luong, đơn giá.

SELECT HoaDonChiTiet.MaSanPham, TenSP, HoaDonChiTiet. SoLuong, DonGia 

FROM SanPham

LEFT JOIN HoaDonChiTiet ON SanPham.MaSanPham = HoaDonChiTiet.MaSanPham

WHERE HoaDonChiTiet.MaSanPham IS NULL

--Câu 5a: cho biết những Khách hàng chưa mua hàng lần nào: MaKH, họ tên, địa chỉ, điện thoại.

SELECT KhachHang.MakhachHang, HovaTenLot + ' ' + Ten as HoTen, Diachi, DienThoai 

FROM KhachHang 

LEFT JOIN HoaDon ON KhachHang.MaKhachHang = HoaDon.MakhachHang

WHERE HoaDon.MaHoaDon IS NULL

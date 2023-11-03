CREATE DATABASE QLYTHUVIEN
USE QLYTHUVIEN
--t?o b?ng t�c gi?
CREATE TABLE TACGIA(
MaTacGia varchar(10) PRIMARY KEY,
TenTacGia nvarchar(50)
)
---t?o b?ng s�ch
CREATE TABLE SACH(
MaSach varchar(10) PRIMARY KEY,
TenSach nvarchar(50),
NamXuatBan int,
SoLuong int,
MaTacGia varchar(10),
FOREIGN KEY (MaTacGia) REFERENCES TACGIA(MaTacGia)
)

--2, Vi?t m?t Stored Procedure ?? th�m m?t t�c gi? m?i v�o b?ng TacGia. 
--Stored Procedure n�y s? nh?n c�c tham s? ??u v�o l� MaTacGia v� TenTacGia. 
--H�y ki?m tra c�c ?i?u ki?n sau:
---  	MaTacGia kh�ng ???c ?? tr?ng v� ph?i l� duy nh?t.
---  	TenTacGia kh�ng ???c ?? tr?ng.

CREATE PROC sp_tacgia @ma varchar(10),@ten nvarchar(50)
AS
BEGIN
	IF @ma is null or @ten is null 
	PRINT N'Kh�ng ???c ?? tr?ng d? li?u'
	ELSE
	BEGIN TRY
	INSERT INTO TACGIA VALUES(@ma,@ten)
	PRINT N'Th�m th�nh c�ng'
	END TRY
	BEGIN CATCH
	PRINT N'Th�m th?t b?i'
	END CATCH
END

EXEC sp_tacgia 'TG1',N'Nguy?n Quang Huy'
EXEC sp_tacgia 'TG2',NULL
SELECT * FROM TACGIA

--3, Vi?t m?t Stored Procedure ?? th�m m?t s�ch m?i v�o b?ng Sach.
--Stored Procedure n�y s? nh?n c�c tham s? ??u v�o l� MaSach, TenSach, NamXuatBan, SoLuong v� MaTacGia.
--H�y ki?m tra c�c ?i?u ki?n sau:
---   	MaSach kh�ng ???c ?? tr?ng v� ph?i l� duy nh?t.
---   	TenSach kh�ng ???c ?? tr?ng.
---   	MaTacGia ph?i t?n t?i trong b?ng TacGia.

CREATE PROC sp_sach @maSach varchar(10), @tenSach nvarchar(50), @namXB int,@sl int , @maTG varchar(10)
AS
BEGIN
	IF @maSach is null or @tenSach is null or @maTG is null
	PRINT N'Kh�ng ???c ?? tr?ng d? li?u'
	ELSE
	BEGIN TRY
	INSERT INTO SACH VALUES(@maSach,@tenSach,@namXB,@sl,@maTG)
	PRINT N'Th�m th�nh c�ng'
	END TRY
	BEGIN CATCH
	PRINT N'Th�m th?t b?i'
	END CATCH
END

EXEC sp_sach 'S1',N'SQL server',2022,2,'TG1'
SELECT * FROM SACH

--4, Update Stored procedure ? c�u s? 3, th�m 2 ?i?u ki?n:
---   	NamXuatBan kh�ng ???c ?? tr?ng v� kh�ng v??t qu� n?m hi?n t?i
---   	SoLuong ph?i l� m?t s? nguy�n kh�ng �m
ALTER PROC sp_sach @maSach varchar(10), @tenSach nvarchar(50), @namXB int,@sl int , @maTG varchar(10)
AS
BEGIN
	IF @maSach is null or @tenSach is null or @maTG is null or @namXB is null or @sl is null
	PRINT N'Kh�ng ???c ?? tr?ng d? li?u'
	ELSE
	IF @namXB > YEAR(GETDATE())
	PRINT N'N?m xu?t b?n kh�ng ???c v??t qu� n?m hi?n t?i'
	ELSE
	IF @sl<0
	PRINT N'S? l??ng kh�ng ???c �m'
	ELSE
	BEGIN TRY
	INSERT INTO SACH VALUES(@maSach,@tenSach,@namXB,@sl,@maTG)
	PRINT N'Th�m th�nh c�ng'
	END TRY
	BEGIN CATCH
	PRINT N'Th�m th?t b?i'
	END CATCH
END
EXEC sp_sach 'S2',N'SQL server',2022,2,'TG1'
SELECT * FROM SACH

--5, Vi?t m?t Stored Procedure truy?n v�o t�n 1 t�c gi? v� x�a ?i t�c gi? ?� bao g?m t?t c? s�ch c?a t�c gi? ?�.
--Ki?m tra check l?i c�c ?i?u ki?n c� th? x?y ra.

CREATE PROC sp_xoaTG @ten nvarchar(50)
AS
BEGIN
IF @ten is null
PRINT N'Kh�ng ???c ?? tr?ng t�n t�c gi?'
ELSE
BEGIN TRY
	DECLARE @tbTacGia TABLE (MaTG varchar(10))
	INSERT INTO @tbTacGia 
	SELECT MaTacGia FROM TACGIA WHERE TenTacGia LIKE @ten
	DELETE FROM SACH WHERE MaTacGia IN (SELECT MATG FROM @tbTacGia)
	DELETE FROM TACGIA WHERE MaTacGia IN (SELECT MATG FROM @tbTacGia)
END TRY 
BEGIN CATCH
 PRINT N'X�a th?t b?i'
END CATCH
END

EXEC sp_xoaTG N'Nguy?n Quang Huy'
SELECT * FROM SACH
SELECT * FROM TACGIA
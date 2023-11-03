USE QLDA
SELECT * FROM NhanVien
SELECT * FROM PHANCONG
--C�u 1: Vi?t 1 function truy?n v�o m� c?a 1 ph�ng ban, 
--s? d?ng h�m n�y ?? t�nh t?ng th?i gian ???c ph�n c�ng l�m vi?c c?a c? ph�ng ?� (NHANVIEN, PHANCONG)

CREATE FUNCTION tinhTG (@MA INT)
RETURNS FLOAT
AS
BEGIN 
RETURN (SELECT SUM(THOIGIAN) FROM NHANVIEN INNER JOIN PHANCONG ON NHANVIEN.MANV=PHANCONG.MA_NVIEN
WHERE PHG=@MA)
END

SELECT dbo.tinhTG(4)

--C�u 2: Vi?t 1 function tr? v? h? v� t�n, 
--??a ch? v� ??a ?i?m l�m vi?c c?a nh?ng nh�n vi�n ?ang l�m vi?c ? n?i kh�c v?i ??a ch? c?a m�nh (NHANVIEN, DIADIEM_PHG)
SELECT * FROM NHANVIEN
SELECT * FROM DIADIEM_PHG
Create function checkDC()
RETURNS @diachiNV table (hoTen nvarchar(50),diachi nvarchar(50),diadiem nvarchar(50))
AS 
BEGIN
	INSERT INTO @diachiNV
	SELECT CONCAT(HONV,'',TENLOT,'',TENNV) AS HOTEN,DCHI,DIADIEM FROM NHANVIEN
	INNER JOIN DIADIEM_PHG ON NHANVIEN.PHG=DIADIEM_PHG.MAPHG
	WHERE DCHI NOT LIKE CONCAT('%',DIADIEM,'%')
	RETURN
END

SELECT * FROM dbo.checkDC()
SELECT * FROM THANNHAN
--C�u 3: Vi?t 1 function tr? v? h? v� t�n, t�nh tr?ng c� th�n nh�n hay kh�ng
CREATE FUNCTION checkTN()
RETURNS @ketqua table (hoten nvarchar(50),tinhtrang nvarchar(50))
as
begin
	INSERT INTO @KETQUA 
	SELECT CONCAT(HONV,' ',TENLOT,' ',TENNV) AS HOTEN,
	IIF(MANV IN(SELECT DISTINCT MA_NVIEN FROM THANNHAN 
	JOIN NHANVIEN ON NHANVIEN.MANV=THANNHAN.MA_NVIEN),N'C� th�n nh�n',N'Kh�ng c� th�n nh�n') AS ThanNhan
	FROM NHANVIEN
	RETURN
end

SELECT * FROM dbo.checkTN()


﻿
CREATE DATABASE QUANLYNHAHANG

USE QUANLYNHAHANG

GO

CREATE TABLE ACCOUNT
(
    USERNAME VARCHAR(30) NOT NULL,
    GMAIL VARCHAR(30) NOT NULL UNIQUE,
    PASS VARCHAR(30) NOT NULL,
    [ROLE] INT DEFAULT 0, --(0: KHÁCH HÀNG, 1: NHÂN VIÊN, 2: QUẢN LÝ)
    CONSTRAINT PK_ACC PRIMARY KEY (USERNAME)
);
GO
INSERT ACCOUNT (USERNAME, GMAIL, PASS) VALUES ('hung1','hungvtph419515@fpt.edu.vn', 'hung123')

INSERT ACCOUNT VALUES ('hung2','hungvtph419D515@fpt.edu.vn', 'hung123',1)

INSERT ACCOUNT VALUES ('hung3','hungvtph419515W@fpt.edu.vn', 'hung123', 2)

UPDATE ACCOUNT SET GMAIL = ?, PASS = ? WHERE USERNAME = ?

SELECT * FROM ACCOUNT

DELETE ACCOUNT WHERE [USER] = 'hung' 
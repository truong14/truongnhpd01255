-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:56:43.978




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV nchar(5)  NOT NULL,
    TenNV nvarchar(100)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh text  NOT NULL,
    Email text  NOT NULL,
    Mucluong int  NOT NULL,
    Maphong nchar(5)  NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    Maphong nchar(5)  NOT NULL,
    Tenphong nvarchar(100)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (Maphong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (Maphong)
    REFERENCES TPhongban (Maphong)
;





-- End of file.


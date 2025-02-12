CREATE DATABASE Gozlukcu_DB
GO -- Buraya kadar olan tüm komutları bitir devam et
USE Gozlukcu_DB
GO
--SQL           C#
--nvarchar(x)   string
--int           int
--bigint        long
--money         decimal
--decimal(18,2) decimal
--bit           bool
CREATE TABLE Urunler(
    ID int IDENTITY (1,1),-- IDENTITY Sadece Primary key alanına eklenebilir.
	Isim nvarchar(50) NOT NULL, --kolon NULL bırakılmaz
	Marka nvarchar(50),
	Stok smallint,
	Fiyat money,
	CONSTRAINT pk_urun PRIMARY KEY(ID)
	-- primary key Birincil Anahtar Eşsiz veri yapmak için kullanılır.
)
CREATE DATABASE Gozlukcu_DB
GO--BURAYA KADAR OLAN TÜM KOMUTLARI BÝTÝR SONRA DEVAM ET
USE Gozlukcu_DB
GO
--SQL         C#
--NVARCHAR(X) STRÝNG
--BÝGÝNT      LONG
--ÝNT         ÝNT
--SMALLÝNT    --
--TÝNYÝNT     --
--MONEY       DECÝMAL
--DECÝMAL(18,2) DECÝMAL
--BÝT           BOOL
CREATE TABLE URUNLER
(
   ID INT IDENTITY(1,1), --IDENTITY sadece primary key alanýna eklenebilir
   Isim nvarchar(50)NOT NULL,--kolon null býrakýlamaz
   Marka nvarchar(50),
   stok smallint,
   fiyat money,
   SatisaAcik bit,
   CONSTRAINT pk_urun PRIMARY KEY (ID)
   --primary key birincil anahtar eþsiz veri yapmak için kullanýlýr
)

   
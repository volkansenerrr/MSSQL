CREATE DATABASE Dershane_DB
GO
USE Dershane_DB 
GO
CREATE TABLE Siniflar
(
   ID int  IDENTITY (1,1),
   Isim NVARCHAR (50),
   Kontenjan TINYINT,
   Sorumlu NVARCHAR(50),
   CONSTRAINT pk_sinif PRIMARY KEY (ID)
)
GO
CREATE TABLE Ogrenciler
(
  ID int IDENTITY (1,1),
  Sinif_ID INT, -- Bu kolonun türü int olmak zorunda
  Isim NVARCHAR (50) NOT NULL,
  Soyisim NVARCHAR(50),
  Telefon NVARCHAR (11), --5304947122
  Adres NVARCHAR (250),
  CONSTRAINT pk_ogrenci PRIMARY KEY(ID),
  CONSTRAINT fk_ogrenci_sinif FOREIGN KEY(Sinif_ID)
  REFERENCES Siniflar(ID)
)


CREATE DATABASE BenimDershanem_DB
GO
USE BenimDershanem_DB
GO
CREATE TABLE Dersler 
(
   ID INT IDENTITY(1,1),
   Isim NVARCHAR(50),
   Saat SMALLINT,
   CONSTRAINT pk_ders PRIMARY KEY(ID)
)
GO
INSERT INTO Dersler(Isim,Saat) VALUES ('Web Yazýlým Uzmanlýðý',120)
INSERT INTO Dersler(Isim,Saat) VALUES ('Ýleri Yazýlým Uzmanlýðý',150)
INSERT INTO Dersler(Isim,Saat) VALUES ('Grafik Tasarým',110)
INSERT INTO Dersler(Isim,Saat) VALUES ('MS Office Ýþletmenliði',48)
GO
CREATE TABLE Ogrenciler 
(
   ID INT IDENTITY(1,1),
   Isim NVARCHAR(75),
   Soyisim NVARCHAR(75),
   KimlikNo NVARCHAR(11),
   Telefon NVARCHAR(11),
   Cinsiyet NVARCHAR(5),
   CONSTRAINT pk_ogrenci PRIMARY KEY(ID)
)
GO
INSERT INTO Ogrenciler (Isim, Soyisim, KimlikNo, Telefon, Cinsiyet) VALUES('Murtaza','Þuayipoðlu','58745214789','05424887954','Erkek')
INSERT INTO Ogrenciler (Isim, Soyisim, KimlikNo, Telefon, Cinsiyet) VALUES('Dilara Nur','Þavran','5329632587','05404452954','Kadýn')
GO
CREATE TABLE Siniflar 
(
   ID INT IDENTITY(1,1),
   Isim NVARCHAR(5),
   Kontenjan TINYINT,
   CONSTRAINT pk_sinif PRIMARY KEY(ID)
)
GO
INSERT INTO Siniflar (Isim,Kontenjan) VALUES ('302',10)
INSERT INTO Siniflar (Isim,Kontenjan) VALUES ('303',18)
GO
CREATE TABLE Egitmenler 
(
   ID INT IDENTITY(1,1),
   Isim NVARCHAR(50),
   Soyisim NVARCHAR(50),
   Telefon NVARCHAR(11),
   CONSTRAINT pk_egitmen PRIMARY KEY(ID) 
)
GO
INSERT INTO Egitmenler (Isim,Soyisim,Telefon) VALUES ('Alp','Sarýkýþla','5302050200')
GO
CREATE TABLE Gruplar 
(
   ID INT IDENTITY(1,1),
   DersID INT,
   EgitmenID INT,
   SinifID INT,
   Isim NVARCHAR(50),
   BaslangicTarihi DATE,
   CONSTRAINT pk_grup PRIMARY KEY(ID),
   CONSTRAINT fk_grup_ders FOREIGN KEY(DersID) REFERENCES DERSLER(ID),
   CONSTRAINT fk_grup_egitmen FOREIGN KEY (EgitmenID) REFERENCES Egitmenler(ID),
   CONSTRAINT fk_grup_sinif FOREIGN KEY (SinifID) REFERENCES Siniflar(ID) 
)
GO
CREATE TABLE OgrenciGruplar
(
   ID INT IDENTITY(1,1),
   OgrenciID INT,
   GrupID INT,
   CONSTRAINT pk_OgrenciGrup PRIMARY KEY(ID),
   CONSTRAINT fk_OgrenciGrup_Ogrenci FOREIGN KEY(OgrenciID) REFERENCES Ogrenciler(ID),
   CONSTRAINT fk_OgrenciGrup_Grup FOREIGN KEY(GrupID) REFERENCES Gruplar(ID)
)

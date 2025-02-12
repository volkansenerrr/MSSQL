CREATE DATABASE Dershanem_DB
GO
USE Dershanem_DB

GO

CREATE TABLE Dersler
(
	ID int IDENTITY(1,1),
	Isim nvarchar(50),
	Saat smallint,
	CONSTRAINT pk_ders PRIMARY KEY(ID)
)
GO

INSERT INTO Dersler(Isim, Saat) VALUES('Web yazýlým', 120)
INSERT INTO Dersler(Isim, Saat) VALUES('Ýleri yazýlým', 150)
INSERT INTO Dersler(Isim, Saat) VALUES('Grafik tasarým', 110)
INSERT INTO Dersler(Isim, Saat) VALUES('MS OFFICE iþletmenkik', 48)
GO

CREATE TABLE Ogrenciler
(
	ID int IDENTITY(1,1),
	Isim nvarchar(75),
	Soyisim nvarchar(75),
	KimlikNo nvarchar(11),
	Telefon nvarchar(11),
	Cinsiyet nvarchar(5),
	CONSTRAINT pk_ogrenci PRIMARY KEY(ID)
)
GO

INSERT INTO Ogrenciler(Isim, Soyisim, Telefon, KimlikNo, Cinsiyet) VALUES('Murtaza', 'Þuayipoðlu', '55555555555', '5632356564', 'Erkek')
INSERT INTO Ogrenciler(Isim, Soyisim, Telefon, KimlikNo, Cinsiyet) VALUES('Dilara Nur', 'Þavran', '55555545555', '5632356564', 'Kadýn')
GO

CREATE TABLE Siniflar
(
	ID INT IDENTITY(1,1),
	Isim nvarchar(50),
	Kontenjan tinyint,
	CONSTRAINT pk_sinif PRIMARY KEY(ID)
)
GO

INSERT INTO Siniflar(Isim, Kontenjan) VALUES('302', 10)
INSERT INTO Siniflar(Isim, Kontenjan) VALUES('303', 10)
GO

CREATE TABLE Egitmenler
(
	ID int IDENTITY(1,1),
	Isim varchar(50),
	Soyisim nvarchar(50),
	Telefon nvarchar(11),
	CONSTRAINT pk_egitmen PRIMARY KEY(ID)
)
GO

INSERT INTO Egitmenler(Isim, Soyisim, Telefon) VALUES('alp', 'sarýkýþla', '5236548956')
INSERT INTO Egitmenler(Isim, Soyisim, Telefon) VALUES('Mustafa', 'Sarýkatioðlu', '5236548956')
INSERT INTO Egitmenler(Isim, Soyisim, Telefon) VALUES('Mustafa', 'Çaðýþ', '5239548956')
GO

CREATE TABLE Gruplar
(
	ID int IDENTITY(1,1),
	dersID int,
	egitmenID int,
	sinifID int,
	Isim nvarchar(50),
	BaslangicTarihi date,
	CONSTRAINT pk_grup PRIMARY KEY(ID),
	CONSTRAINT fk_grup_ders FOREIGN KEY(dersID) REFERENCES Dersler(ID),
	CONSTRAINT fk_grup_egitmen FOREIGN KEY(egitmenID) REFERENCES Egitmenler(ID),
	CONSTRAINT fk_grup_sinif FOREIGN KEY(sinifID) REFERENCES Siniflar(ID)	
)
GO


CREATE TABLE OgrenciGruplar
(
	ID int IDENTITY(1,1),
	OgrenciID int,
	GrupID int,
	CONSTRAINT pk_OgrenciGrup PRIMARY KEY(ID),
	CONSTRAINT fk_OgrenciGrup_ogrenci FOREIGN KEY(OgrenciID) REFERENCES Ogrenciler(ID),
	CONSTRAINT fk_OgrenciGrup_grup FOREIGN KEY(GrupID) REFERENCES Gruplar(ID)
)







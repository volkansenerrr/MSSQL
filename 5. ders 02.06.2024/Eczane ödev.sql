CREATE DATABASE Eczane_DB
GO
Use Eczane_DB

create table Ilac
(
   IlacID INT PRIMARY KEY IDENTITY(1,1),
   IlacAdi nvarchar(100) not null,
   Fiyat money not null
)
go


create table Eczane
(
	EczaneID INT PRIMARY KEY IDENTITY(1,1),
	EczaneAdi nvarchar(100) not null,
	Adres nvarchar(250) not null,
)
go


create table Personel
(
	PersonelID INT PRIMARY KEY IDENTITY(1,1),
	Ad nvarchar(50) not null,
	Soyad nvarchar(50) not null,
	EczaneID INT,
	FOREIGN KEY (EczaneID) REFERENCES Eczane (EczaneID),
)
go


create table Musteri
(
	MusteriID INT PRIMARY KEY IDENTITY(1,1),
	Ad nvarchar(50) not null,
	Soyad nvarchar(50) not null,
	Telefon nvarchar(15) not null,
)
go


create table Recete
(
	ReceteID INT PRIMARY KEY IDENTITY(1,1),
	MusteriID INT,
	FOREIGN KEY (MusteriID) REFERENCES Musteri (MusteriID),
)
go


create table IlacStok
(
	IlacStokID INT PRIMARY KEY IDENTITY(1,1),
	EczaneID INT,
	IlacID INT,
	StokMiktari SMALLINT not null,
	FOREIGN KEY (EczaneID) REFERENCES Eczane (EczaneID),
	FOREIGN KEY (IlacID) REFERENCES Ilac (IlacID),
)
go


create table IlacSatis
(
	IlacSatisID INT PRIMARY KEY IDENTITY(1,1),
	ReceteID INT,
	IlacID INT,
	Miktar INT not null,
	Fiyat money not null,
	FOREIGN KEY (ReceteID) REFERENCES Recete (ReceteID),
	FOREIGN KEY (IlacID) REFERENCES Ilac (IlacID),
)
go

create table satilanÝlaçlar
//


INSERT INTO Ilac(IlacAdi, Fiyat) VALUES ('Parol', 50.75);
INSERT INTO Ilac(IlacAdi, Fiyat) VALUES ('Aspirin', 60.75);
INSERT INTO Ilac(IlacAdi, Fiyat) VALUES ('Nurofen', 36.25);


INSERT INTO Eczane(EczaneAdi, Adres) VALUES ('Furkan Eczanesi', 'Eskiþehir, Sivrihisar')
INSERT INTO Eczane(EczaneAdi, Adres) VALUES ('Saðlýk Eczanesi', 'Ýstanbul, Adalar')


INSERT INTO Personel(Ad, Soyad, EczaneID) VALUES ('Murtaza', 'Yýlmaz', 1)
INSERT INTO Personel(Ad, Soyad, EczaneID) VALUES ('Þuayip', 'Demir', 2)


INSERT INTO Musteri(Ad, Soyad, Telefon) VALUES ('Recep', 'Ývedik', '5551234567')
INSERT INTO Musteri(Ad, Soyad, Telefon) VALUES ('Neriman', 'Yýlmaz', '5557654321')


INSERT INTO Recete(MusteriID) VALUES (1)
INSERT INTO Recete(MusteriID) VALUES (2)


INSERT INTO IlacStok(EczaneID, IlacID, StokMiktari) VALUES (1, 1, 100);
INSERT INTO IlacStok(EczaneID, IlacID, StokMiktari) VALUES (2, 2, 50);


INSERT INTO IlacSatis(ReceteID, IlacID, Miktar,Fiyat) VALUES (1, 1, 2, 75.00)
INSERT INTO IlacSatis(ReceteID, IlacID, Miktar, Fiyat) VALUES (2, 2, 1, 82.00)
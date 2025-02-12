create database kutupp_db
go
use kutupp_db
go

create table kitapturu
(
   TurID INT PRIMARY KEY IDENTITY(1,1),
   TurAdý varchar(50) not null,
)
go

create table yazarlar
(
	YazarID INT PRIMARY KEY IDENTITY(1,1),
	Ad varchar(50) not null,
	Soyad varchar(50) not null,
)
go

create table yayinevi
(
	YayinEviID INT PRIMARY KEY IDENTITY(1,1),
	YayineviAdi varchar(100) not null,
)
go

create table Kitapisimleri
(
	KitapID INT PRIMARY KEY IDENTITY(1,1),
	KitapAdi varchar(100) not null,
	TurID INT,
	YazarID INT,
	YayinEviID INT,
	FOREIGN KEY (TurID) REFERENCES kitapturu (TurID),
	FOREIGN KEY (YazarID)  REFERENCES yazarlar(YazarID),
	FOREIGN KEY (YayinEviID)  REFERENCES yayinevi(YayinEviID),
)

INSERT INTO kitapturu(TurAdý) VALUES ('psikoloji')
INSERT INTO kitapturu(TurAdý) VALUES ('korku')
INSERT INTO kitapturu(TurAdý) VALUES ('roman')
INSERT INTO kitapturu(TurAdý) VALUES ('gerilim')
INSERT INTO kitapturu(TurAdý) VALUES ('polisiye')

INSERT INTO yazarlar(Ad,Soyad) VALUES ('ömer','seyfettin')
INSERT INTO yazarlar(Ad,Soyad) VALUES ('sabahattin', 'ali')
INSERT INTO yazarlar(Ad,Soyad) VALUES ('peyami','safa')
INSERT INTO yazarlar(Ad,Soyad) VALUES ('kemal','tahir')
INSERT INTO yazarlar(Ad,Soyad) VALUES ('sait faik', 'abasýyanýk')

INSERT INTO yayinevi(YayineviAdi) VALUES ('everest yayýnlarý')
INSERT INTO yayinevi(YayineviAdi) VALUES ('destek yayýnlarý')
INSERT INTO yayinevi(YayineviAdi) VALUES ('okyanus yayýnlarý')
INSERT INTO yayinevi(YayineviAdi) VALUES ('benim hocam yayýnlarý')
INSERT INTO yayinevi(YayineviAdi) VALUES ('indigo kitap')

INSERT INTO Kitapisimleri(KitapAdi,TurID,YazarID,YayinEviID) VALUES ('keloðlan',3,1,1)
INSERT INTO Kitapisimleri(KitapAdi,TurID,YazarID,YayinEviID) VALUES ('IT',4,2,3)
INSERT INTO Kitapisimleri(KitapAdi,TurID,YazarID,YayinEviID) VALUES ('Harry Potter', 1,3,1)
INSERT INTO Kitapisimleri(KitapAdi,TurID,YazarID,YayinEviID) VALUES ('0 km',5,4,2)
INSERT INTO Kitapisimleri(KitapAdi,TurID,YazarID,YayinEviID) VALUES ('sýrlar uçurumu',1,5,5)
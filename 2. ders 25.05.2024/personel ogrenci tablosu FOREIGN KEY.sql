create database dershane_db
go
use dershane_db
go
create table siniflar
(

	ID int IDENTITY	(1,1),
	Isim nvarchar(50),
	kontenjan tinyint,
	sorumlu nvarchar(50),
	CONSTRAINT pk_sinif PRIMARY KEY (ID)


)
GO
CREATE TABLE ogrenciler
(		
	ID int IDENTITY(1,1),
	Sinif_ID int, --bu kolonun türü int olmak zorunda
	Isim nvarchar(50) NOT NULL,
	Soyisim nvarchar(50), 
	telefon nvarchar(11), --5303030303
	adres nvarchar(250),
	CONSTRAINT pk_ogrenci PRIMARY KEY(ID),
	CONSTRAINT fk_ogrenci_sinif FOREIGN KEY (Sinif_ID)
	REFERENCES Siniflar(ID)
)


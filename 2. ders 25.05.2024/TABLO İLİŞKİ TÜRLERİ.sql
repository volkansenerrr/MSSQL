--TABLO ÝLÝÞKÝ TÜRLERÝ
--birebir iliþki
--fakültenin ismi gibi alanlarý tabloya kolon açarak yazabiliriz

--bire çok iliþki
--fakültenin bölümleri gibi bir fakültenin birden çok bölümün bir fakültesi
--gibi durumlarda bire çok iliþki oluþur ve 2 tablo arasýna foreign key eklenir.

--çoka çok iliþki
--öðrencinin aldýðý derslre ve dersi alan öðrenciler gibi çoka çok durumlarda 
--ara tablo oluþturulur

create database universite_db

go
use universite_db
go
create table fakulteler
( 
	ID int IDENTITY(1,1),
	Isim nvarchar(120) NOT NULL,
	Dekan nvarchar(120),
	CONSTRAINT pk_fakulte PRIMARY KEY(ID)
)

GO
create table bolumler
(	
	ID int IDENTITY(1,1),
	Fakulte_ID int,--veri türü int olmak zorunda
	Isim nvarchar(120) not null,
	CONSTRAINT pk_bolum PRIMARY KEY(ID),
	CONSTRAINT fk_bolum_fakulte FOREIGN KEY (Fakulte_ID) REFERENCES Fakulteler(ID)
)
GO
create table dersler
(
	kod nvarchar(50),
	Bolum_ID int,
	Isim nvarchar(50),
	Kredi tinyint,
	saat tinyint,
	
	CONSTRAINT pk_ders PRIMARY KEY(kod),
	CONSTRAINT fk_ders_bolum FOREIGN KEY (bolum_ID) REFERENCES bolumler(ID)
)
go
create table ogrenciler
(
	okulno nvarchar(50),
	Bolum_ID int,
	Isim nvarchar(50) not null,
	soyad nvarchar(50),
	babaadi nvarchar(50),
	
	CONSTRAINT pk_ogrenci PRIMARY KEY (okulno),
	CONSTRAINT fk_ogrenci_bolum FOREIGN KEY (bolum_ID) REFERENCES bolumler(ID)
)
go
create table alinanders
(

	ogrencino nvarchar(50),
	derskodu nvarchar(50),
	CONSTRAINT pk_alinanders PRIMARY KEY (ogrencino,derskodu),
	CONSTRAINT fk_alinanders_ogrenci FOREIGN KEY(ogrencino) REFERENCES ogrenciler(okulno),
	CONSTRAINT fk_alinanders_ders FOREIGN KEY(derskodu) REFERENCES dersler(kod)

)








use personel_DB;
create table tablo
(
	PersonelID NVARCHAR(50) NOT NULL,
	Ad NVARCHAR(50),
	Soyad NVARCHAR(50),
	DogumTarihi DATE,
	Departman NVARCHAR(50),
	Pozisyon NVARCHAR(50),
	Maas MONEY,
)


	use personel_DB;
	create table OGRENCÝ(
OKULNO nvarchar(50) not null,
 Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    DogumTarihi DATE,
    BOLUM NVARCHAR(50),
	SINIF NVARCHAR(50),
	); 
	DROP table OGRENCÝ
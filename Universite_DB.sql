--TABLO İLİŞKİ TÜRLERİ
--Birebir ilişki
--Fakültenin ismi gibi alanları tabloya kolon açarak yazabiliriz.


--Bire çok ilişki
--Fakültenin bölümleri gibi bir fakültenin birden çok bölümü bir bölümün bir fakültesi
--gibi durumlarda bire çok ilişki oluşur ve 2 tablo arasına foreign key eklenir.

--Çok'a çok ilişki
--Öğrencinin aldığı dersler ve dersi alan öğrenciler gibi çoka çok durumlarda
--ARA TABLO OLUŞTURULUR.

CREATE DATABASE Universite_DB
GO
USE Universite_DB
GO
CREATE TABLE Fakulteler 
(
  ID INT IDENTITY (1,1),
  Isim NVARCHAR (120) NOT NULL,
  Dekan NVARCHAR (120),
  CONSTRAINT pk_fakulte PRIMARY KEY(ID)
)
GO
CREATE TABLE Bolumler 
(
  ID INT IDENTITY(1,1),
  Fakulte_ID INT, --Veri türü int olmak zorunda
  Isim NVARCHAR(120) NOT NULL,
  CONSTRAINT pk_bolum PRIMARY KEY(ID),
  CONSTRAINT fk_bolum_fakulte FOREIGN KEY(Fakulte_ID) REFERENCES Fakulteler(ID)
)
GO
CREATE TABLE Dersler 
(
  Kod INT IDENTITY (1,1),
  Bolum_ID INT,
  Isim NVARCHAR(120) NOT NULL,
  Kredi TINYINT,
  Saat TINYINT,
  CONSTRAINT pk_ders PRIMARY KEY(Kod),
  CONSTRAINT fk_ders_bolum FOREIGN KEY (Bolum_ID) REFERENCES Bolumler(ID)
)
GO
CREATE TABLE Ogrenciler 
(
  OkulNo NVARCHAR(11),
  Bolum_ID INT,
  Isim NVARCHAR (75) NOT NULL,
  Soyisim NVARCHAR (75),
  BabaAdi NVARCHAR (75),
  CONSTRAINT pk_ogrenci PRIMARY KEY (OkulNo),
  CONSTRAINT fk_ogrenci_bolum FOREIGN KEY(Bolum_ID) REFERENCES Bolumler(ID)
)
GO
CREATE TABLE AlinanDers
(
  OgrenciNo NVARCHAR(11),
  DersKodu INT,
  CONSTRAINT pk_alinanders PRIMARY KEY (OgrenciNo,DersKodu),
  CONSTRAINT fk_alinanders_ogrenci FOREIGN KEY(OgrenciNo) REFERENCES Ogrenciler(OkulNo),
  CONSTRAINT fk_alinanders_ders FOREIGN KEY(DersKodu) REFERENCES Dersler(Kod)
)
--Veri Ekleme
--Insert 
--int veri tipi boş bırakılırsa nullable ınt şeklinde null...
GO
INSERT INTO Fakulteler (Isim, Dekan) VALUES ('Tıp Fakültesi', 'Nasuh Berber'); 
INSERT INTO Fakulteler (Isim, Dekan) VALUES ('Diş Hekimliği Fakültesi', 'Volkan Şener');
INSERT INTO Fakulteler (Isim, Dekan) VALUES ('Eczacılık Fakültesi', 'Alp Sarıkışla');
INSERT INTO Fakulteler (Isim, Dekan) VALUES ('Mühendislik Fakültesi', 'Mehmet Cemşit');
INSERT INTO Fakulteler (Isim, Dekan) VALUES ('İktisadi ve İdari Bilimler Fakültesi', 'Şuayip Bayraktar');
GO
INSERT INTO Bolumler (Isim,Fakulte_ID) VALUES ('Tıp',1);
INSERT INTO Bolumler (Isim,Fakulte_ID) VALUES ('Diş Hekimliği',2);
INSERT INTO Bolumler (Isim,Fakulte_ID) VALUES ('Eczacılık',3);
INSERT INTO Bolumler (Isim,Fakulte_ID) VALUES ('Bilgisayar Mühendisliği',4);
INSERT INTO Bolumler (Isim,Fakulte_ID) VALUES ('Çalışma Ekonomisi ve Endüstri İlişkileri',5);
GO
INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('12548578544',1,'Şukela','Dümbelek','Sezgin'); --- TIP ÖĞRENCİLERİ
INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('12544566545',1,'Zindan','Şukelek','Fehmi');
INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('19848578546',1,'Zeliha','Muhtar','Zodyak');

INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('15327578879',2,'Asrın','Jamiryo','Ahmet');---DİŞ HEKİMLİĞİ ÖĞRENCİLERİ
INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('12544545159',2,'Kelime','Mahmud','Gandalf');
INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('19848578147',2,'Mantar','İftahar','İsmail');

INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('17548578544',3,'Şukulata','Zazabey','Mehmet');---ECZACILIK ÖĞRENCİLERİ
INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('12524566544',3,'Miğfernaz','Cemşit','Frodo');
INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('19848428544',3,'Aragorn','Kuduz','Bilbo');

INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('12542589368',4,'Legolas','Muntazam','İlkkan'); --- BİLGİSAYAR MÜHENDİSLİĞİ ÖĞRENCİLERİ
INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('13558877458',4,'Faramir','Mevki','John');
INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('15475522585',4,'Mehdi','Serbas','Şuayip');

INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('12859463584',5,'Cimri','Saka','Yılmaz');--- ÇALIŞMA EKONOMİSİ VE ENDÜSTRİ İLİŞKİLERİ
INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('12544560004',5,'Zülküf','Yezgin','El Fahri');
INSERT INTO Ogrenciler (OkulNo, Bolum_ID, Isim, Soyisim, BabaAdi) VALUES ('19848297854',5,'Tuko','Fırat','Ragnar');
GO
INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Anatomi',1,6,4);          --- Tıp Öğrencisi
INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Biyofizik',1,6,2);
INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Biyoistatistik',1,6,3);

INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Diş Morfolojisi, Manipülasyon ve Protetik Diş Tedavisi',2,5,2);    --- Diş Hekimliği
INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Doku',2,5,3);
INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Metabolizma',2,5,4);

INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Eczacılık Tarihi ve Terminolojisi',3,5,2); --- Eczacılık
INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Temel Eczacılık Bilimleri I',3,5,3);
INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Eczacılık Mevzuatı',3,5,4);

INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Bilgisayar Mühendisliği Kavramları ve Algoritmalar',4,5,4); --- Bilgisayar Mühendisliği
INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Bilgisayar Programlamanın Temelleri',4,4,3);
INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Veri Yapıları',4,3,2);

INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('İktisada Giriş',5,3,2); --- Çalışma Ekonomisi ve Endüstri İlişkileri
INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Genel İşletme',5,4,3);
INSERT INTO Dersler (Isim, Bolum_ID, Kredi, Saat) VALUES ('Sosyal Politika',5,5,4);
GO
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12548578544',1);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12544566545',1);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('19848578546',2);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12544566545',2);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12548578544',3);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('19848578546',3);
																	
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('15327578879',4);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12544545159',4);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('19848578147',5);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('15327578879',5);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12544545159',6);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('19848578147',6);
																	
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('17548578544',7);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12524566544',7);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('19848428544',8);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('17548578544',8);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12524566544',9);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('19848428544',9);

INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12542589368',10);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('13558877458',10);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('15475522585',11);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12542589368',11);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('13558877458',12);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('15475522585',12);

INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12859463584',13);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12544560004',13);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('19848297854',14);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12859463584',14);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('12544560004',15);
INSERT INTO AlinanDers (OgrenciNo,DersKodu) VALUES ('19848297854',15);

--Veri Güncelleme
--Update
--*****NOT : UPDATE İŞLEMLERİNDE WHERE İLE SATIR KISITLAMASI
--YAPILMAZ İSE TÜM TABLO UPDATE EDİLİR*****
UPDATE Fakulteler SET Isim = 'Tıp Fakültesi',Dekan = 'Nasuh Berber' WHERE ID = 1
UPDATE Fakulteler SET Isim = 'Diş Hekimliği Fakültesi',Dekan = 'Volkan Şener' WHERE ID = 2


--DELETE
--Satır silme işlemi
--*****NOT : UPDATE İŞLEMLERİNDE WHERE İLE SATIR KISITLAMASI
--YAPILMAZ İSE TÜM TABLO İÇİNDEKİ VERİLER SİLİNİR*****
DELETE FROM AlinanDers

--Eğer silinmeye çalışılan verinin Primary Key kolonu Foreign Key olarak başka bir tabloda 
--kullanılıyor ise silinmesine izin vermez
DELETE FROM Bolumler WHERE ID=1
DELETE FROM Fakulteler WHERE ------

--SELECT 
--Veri Seçme/Listeleme


--Fakülteler tablosundaki tüm kolonların tüm satırlarını getir
SELECT * FROM Fakulteler


SELECT Isim, Dekan FROM Fakulteler

SELECT Isim FROM Fakulteler

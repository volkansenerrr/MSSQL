CREATE DATABASE Kutuphane_DB
GO
USE Kutuphane_DB
GO
CREATE TABLE Kitap_turleri 
(
  Kitap_turleri_id  INT IDENTITY(1,1) PRIMARY KEY,
  tur_adi NVARCHAR(250) NOT NULL
)
GO
CREATE TABLE Yazarlar 
(
   yazar_id INT IDENTITY (1,1) PRIMARY KEY,
   adi NVARCHAR(250) NOT NULL,
   soyadi NVARCHAR(250) NOT NULL
)
GO
CREATE TABLE Yayýn_evleri 
(
   yayin_evi_id INT IDENTITY (1,1) PRIMARY KEY,
   yayin_evi_isim NVARCHAR(250) NOT NULL
)
GO
CREATE TABLE Kitaplar 
(
   kitap_id INT IDENTITY (1,1) PRIMARY KEY,
   isim NVARCHAR (250) NOT NULL,
   yazar_id INT,
   yayin_evi_id INT,
   Kitap_turleri_id INT,
   yayin_yili INT NOT NULL,
   FOREIGN KEY (yazar_id) REFERENCES Yazarlar(yazar_id),
   FOREIGN KEY (yayin_evi_id) REFERENCES Yayýn_evleri(yayin_evi_id),
   FOREIGN KEY (Kitap_turleri_id) REFERENCES Kitap_turleri(Kitap_turleri_id)
)
GO
INSERT INTO Kitap_turleri (tur_adi) VALUES ('ARAÞTIRMA-ÝNCELEME');
INSERT INTO Kitap_turleri (tur_adi) VALUES ('ROMAN');
INSERT INTO Kitap_turleri (tur_adi) VALUES ('ARAÞTIRMA-ÝNCELEME');
INSERT INTO Kitap_turleri (tur_adi) VALUES ('POLÝTÝK');
GO
INSERT INTO Yazarlar (adi,soyadi) VALUES ('OSMAN','PAMUKOÐLU');
INSERT INTO Yazarlar (adi,soyadi) VALUES ('VICTOR','HUGO');
INSERT INTO Yazarlar (adi,soyadi) VALUES ('LEV','TOLSTOY');
INSERT INTO Yazarlar (adi,soyadi) VALUES ('ADOLF','HÝTLER');
GO
INSERT INTO Yayýn_evleri (yayin_evi_isim) VALUES ('ÝNKÝLAP KÝTAPEVÝ');
INSERT INTO Yayýn_evleri (yayin_evi_isim) VALUES ('ANONÝM YAYINCILIK');
INSERT INTO Yayýn_evleri (yayin_evi_isim) VALUES ('CAN YAYINLARI');
INSERT INTO Yayýn_evleri (yayin_evi_isim) VALUES ('OLÝMPOS YAYINLARI');
GO
INSERT INTO Kitaplar (isim, yazar_id, yayin_evi_id, Kitap_turleri_id, yayin_yili) VALUES ('DEVRÝMLERÝN EFENDÝSÝ', 1, 1, 1, 2019);
INSERT INTO Kitaplar (isim, yazar_id, yayin_evi_id, Kitap_turleri_id, yayin_yili) VALUES ('BÝR ÝDAM MAHKUMUNUN SON GÜNÜ', 2, 2, 2, 2024);
INSERT INTO Kitaplar (isim, yazar_id, yayin_evi_id, Kitap_turleri_id, yayin_yili) VALUES ('ÝNSAN NE ÝLE YAÞAR ?', 3, 3, 3, 2007);
INSERT INTO Kitaplar (isim, yazar_id, yayin_evi_id, Kitap_turleri_id, yayin_yili) VALUES ('KAVGAM', 4, 4, 4, 2018);


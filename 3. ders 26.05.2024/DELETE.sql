--delete
--satýr silme iþlemi
--***NOT: DEKETE ÝÞLEMLERÝNDE WHERE ÝLE SATIR KISITLAMASI
--YAPILMAZ ÝSE TÜM TABLO ÝÇÝNDEKÝ VERÝLER SÝLÝNÝR

--DELETE FROM Bolum
--delete from Bolum WHERE BolumID=10

--eðer silinmeye çalýþýlan verinin primary key kolonu
--foreign key olarak baþkabir tabloda kullanýyor ise silinmesine izin vermez
--delete from bolumler where bolumID=10
--delete from fakulte where bolumID= 5


--SATIR BAZINDA KISITLAMA YAPMA
-- WHERE

--Fiyatý 50 üzerinde olan ürünler

SELECT * FROM Products WHERE UnitPrice >=50

--Ürün adý konbu olan ürünlerin ýd, isim ve fiyatý

SELECT ProductID, ProductName, UnitPrice FROM Products WHERE ProductName= 'Konbu'

--deniz ürünleri(seafood)(8) kategorisinde olan ürünler

SELECT ProductID, ProductName FROM Products WHERE CategoryID=8 

--Deniz ürünleri kategorisindeki ürünlerin ID,isim, kategoriýd, fiyat, stok bilgisi

SELECT ProductID, ProductName, CategoryID, UnitPrice, UnitsInStock FROM Products WHERE CategoryID=8

--satýþý devam etmeyen

SELECT * FROM Products Where Discontinued=1
SELECT ProductID, ProductName FROM Products WHERE Discontinued=1

--sipariþ vermem gereken ürünler


--(sipariþ vermem gereken ürünler)
--stoðu sýfýr ürünler
SELECT * FROM Products Where UnitsInStock=0

--stok miktarý güvenlik stoðu altýnda olan ürünler

SELECT* FROM Products WHERE UnitsInStock<=ReorderLevel

--and ve or ile çoklu koþul yazýlabilir
--satýþý devam eden ve stok miktarý güvenlik stoðu altýnda olan ürünler
--(sipariþ vermem gereken ürünler)
SELECT* FROM Products WHERE UnitsInStock <=ReorderLevel and Discontinued=0

--deniz ürünleri(8) ve konfeksiyon(3) kategorisinde olan ürünler
SELECT* FROM Products WHERE CategoryID=8 or CategoryID=3

--fiyatý 20 ile 50 arasýnda olan ürünler
SELECT* FROM Products WHERE UnitPrice>=20 and UnitPrice<=50
SELECT* FROM Products WHERE UnitPrice>=20 and UnitPrice<=50 and Discontinued=0

--deniz ürünleri kategorisinde fiyatý 50 üzerinde olan ürünler
SELECT * FROM PRODUCTS WHERE  UnitPrice>=50 and CategoryID=8 




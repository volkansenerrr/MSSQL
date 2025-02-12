--Satýr bazýnda kýsýtlama yapma
--Where
SELECT * FROM Products

--Fiyatý 50 üzerinde olan ürünler
SELECT * FROM Products WHERE UnitPrice >= 50

--Ürün Adý Konbu Olan Ürünler
SELECT ProductID,ProductName,UnitPrice FROM Products WHERE ProductName = 'Konbu'


--Deniz Ürünleri(Seafood)(8) Kategorisinde olan ürünler
SELECT * FROM Products WHERE CategoryID = 8

--Deniz ürünleri kategorisindeki ürünlerin ID,isim,Kategori,Fiyat,Stok bilgisi
SELECT ProductID, ProductName, CategoryID, UnitPrice, UnitsInStock FROM Products WHERE CategoryID=8

--Satýþý devam etmeyen ürünler
SELECT * FROM Products WHERE Discontinued = 1

--Sadece kolonunu getirmek 
SELECT Discontinued FROM Products WHERE Discontinued = 1

--Stoðu sýfýr olan ürünler
SELECT * FROM Products WHERE UnitsInStock = 0

--Stok miktarý güvenli stoðu altýnda olan ürünler
SELECT * FROM Products WHERE UnitsInStock <= ReorderLevel

--AND ve OR ile çoklu koþul yazýlabilir.
--Satýþý devam eden ve stok miktarý güvenlik stoðu altýnda olan ürünler
--(--Sipariþ vermem gereken ürünler)
SELECT * FROM Products WHERE UnitsInStock <= ReorderLevel AND Discontinued = 0 

--Deniz ürünleri(8) ve Konfeksiyon(3) kategorisinde olan ürünler
SELECT * FROM Products WHERE CategoryID = 8 OR CategoryID = 3

--Fiyatý 20 ile 50 arasýnda olan ürünler
SELECT * FROM Products WHERE UnitPrice >= 20 AND UnitPrice <= 50   

--Fiyatý 20 ile 50 arasýnda olan ürünler ve satýþý devam eden ürünler
SELECT * FROM Products WHERE UnitPrice >= 20 AND UnitPrice <= 50 AND Discontinued = 0

--Deniz ürünleri kategorisinde fiyatý 50 üzerinde olan ürünler
SELECT * FROM Products WHERE CategoryID = 8 AND UnitPrice >= 50 

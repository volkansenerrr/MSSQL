--Kategoriler

SELECT*FROM Categories


--kategorilerin ýd, isim ve açýklamasýný yazdýr

SELECT CategoryID, CategoryName Description FROM Categories

--kategori sayýsý

SELECT COUNT(*)FROM Categories

SELECT COUNT(*) AS[Kategori Sayý]FROM Categories

--Ürünlerin sayýsý

SELECT COUNT(*) FROM PRODUCTS

--Deniz ürünleri kategorisindeki ürün sayýsý

SELECT COUNT(*) FROM products Where CategoryID=8

--nancy davolionun yaptýðý satýþlarýn sayýsý

SELECT*FROM Employees
SELECT * FROM Orders

SELECT COUNT(*) FROM Orders WHERE EmployeeID=1
SELECT*FROM Orders WHERE EmployeeID=1

--Almanya,Amerika veya fransaya gönderilen sipariþler

SELECT*FROM Orders Where ShipCountry= 'germany' or ShipCountry='france' or ShipCountry='USA'

--Almanya,Amerika veya fransaya gönderilen sipariþler sayýsý

SELECT COUNT(*) FROM Orders 

--Ýsmi A ile BAÞLAYAN ürünler

SELECT* FROM Products WHERE ProductName LIKE 'A%'

--Ýsmi A ile BÝTEN ürünler

SELECT* FROM Products WHERE ProductName LIKE '%A'

--Ýsmi içerisinde a geçen ürünler

SELECT* FROM Products WHERE ProductName LIKE '%A%'

--ismi içerisinde un geçen ürünler

SELECT*FROM Products WHERE ProductName LIKE '%un%'

INSERT INTO Products(ProductName,UnitPrice) VALUES('Cappy %100 portakal suyu' , 97)

SELECT* FROM Products WHERE ProductName LIKE '%\%%' ESCAPE '\'
--sum

--stoðumda toplam kaç adet ürün var

SELECT* FROM Products
SELECT COUNT (*) FROM Products
SELECT SUM (UnitsInstock) FROM Products

--stoðumda toplam kaç tllik ürün var

SELECT SUM (UnitsInStock*UnitPrice)FROM Products
SELECT ProductName,UnitsInStock,UnitPrice,
UnitsInStock*UnitPrice AS[Total Price] FROM Products



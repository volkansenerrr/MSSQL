--Katergoriler
SELECT * FROM Categories

--Kategorilerin ID, Ýsim, Açýklama kolonlarý
SELECT CategoryID, CategoryName,DESCRIPTION FROM Categories

--Kategori Sayýsý
SELECT COUNT(*) FROM Categories
SELECT COUNT(*) AS [Kategori Sayýsý] FROM Categories

--Ürünlerin Sayýsý
SELECT COUNT(*) FROM Products 

--Deniz ürünleri kategorisindeki ürün sayýsý
SELECT COUNT(*) FROM Products WHERE CategoriesID = 8

--Nancy Davolio'nun yaptýðý satýþlarýn sayýsý
SELECT * FROM Employees
SELECT * FROM Orders
SELECT COUNT(*) FROM Orders WHERE EmployeeID = 1
SELECT * FROM Orders WHERE EmployeeID = 1

--Almanya, Amerika veya Fransa'ya gönderilen sipariþler
SELECT * FROM Orders
SELECT * FROM Orders WHERE ShipCountry = 'Germany' OR ShipCountry = 'France' OR ShipCountry = 'USA'


--Almanya'ya gönderilen sipariþlerin sayýsý
SELECT COUNT(*) FROM Orders WHERE ShipCountry = 'Germany'
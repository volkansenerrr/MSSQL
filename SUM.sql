--SUM
--Stoðumda toplam kaç adet ürün var.

SELECT * FROM Products
SELECT COUNT(*) FROM Products
SELECT SUM(UnitsInStock) FROM Products

--Stoðumda toplam kaç tl'lik ürün var?
SELECT SUM(UnitsInStock * UnitPrice) FROM Products 
SELECT ProductName,UnitsInStock,UnitPrice,UnitsInStock*UnitPrice AS [Total Price] FROM Products
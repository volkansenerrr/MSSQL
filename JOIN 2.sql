--JOIN
SELECT * FROM Products
SELECT * FROM Categories

SELECT Products.*,Categories.* FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID

SELECT Products.ProductID, Products.ProductName, Categories.CategoryName,Products.UnitsInStock, Products.UnitPrice FROM
Products JOIN Categories ON Products.CategoryID = Categories.CategoryID

SELECT P.ProductID, P.ProductName, C.CategoryName, P.UnitsInStock, P.UnitPrice FROM Products AS P JOIN Categories AS C ON P.CategoryID = C.CategoryID


--Ürünlerin ID, Ýsim, KategoriAdý, Tedarikçi Firma adý, Stok Miktarý, Fiyatý
SELECT P.ProductID, P.ProductName, C.CategoryName, S.CompanyName, P.UnitsInStock, P.UnitPrice FROM Products AS P JOIN Categories
AS C ON P.CategoryID = C.CategoryID JOIN Suppliers AS S ON P.SupplierID = S.SupplierID

--Sipariþ vermem gereken ürünlerin 
--ID,Isim,kategoriAdý
--Tedarikçi firma adý, Firma Yetkili, Firma Telefonu, Stok Miktarý, Fiyatý

SELECT P.ProductID, P.ProductName, C.CategoryName, S.CompanyName, S.ContactName, S.ContactTitle, S.Phone,
p.UnitsInStock, P.ReorderLevel, P.Discontinued
FROM Products AS P JOIN Categories AS C ON P.CategoryID = C.CategoryID JOIN Suppliers AS S ON P.SupplierID = S.SupplierID
WHERE P.UnitsInStock <= P.ReorderLevel AND P.Discontinued = 0

 
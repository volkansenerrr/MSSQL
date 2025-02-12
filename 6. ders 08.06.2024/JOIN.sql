--JOIN


SELECT*FROM Products
SELECT*FROM Categories


SELECT Products.*, Categories.*  FROM Products
JOIN Categories ON Products.CategoryID= Categories.CategoryID

SELECT Products.ProductID,Products.ProductName,Categories.CategoryName,
Products.UnitsInStock,Products.UnitPrice FROM Products
JOIN Categories ON Products.CategoryID=Categories.CategoryID

SELECT P.ProductID,P.ProductName, C.CategoryName, P.UnitsInStock, P.UnitPrice
FROM Products AS P

JOIN Categories AS C ON P.CategoryID=C.CategoryID


--ürünlerin, ýd isim kategoriadý, tedarikçi firma adý, stok miktrý, fiýyatý


SELECT P.ProductID, P.ProductName, C.CategoryName, S. CompanyName,
P.UnitsInStock, P.UnitPrice

FROM Products AS P

JOIN Categories AS C ON P.CategoryID=C.CategoryID
JOIN Suppliers AS S ON P.SupplierID = S.SupplierID

--sipariþ vermem gereken ürünlerin ID isim kategori adý tedarikçi firmadý firma yetkili firma telefonu stok miktarý
-- ve fiyatý


SELECT P.ProductID, P.ProductName, C.CategoryName,
S.CompanyName, S.ContactName,S.ContactTitle,S.Phone,
P.UnitsInStock, P.ReorderLevel, P.Discontinued
FROM Products AS P
JOIN Categories AS C ON P.CategoryID=C.CategoryID
JOIN Suppliers AS S ON P.SupplierID = S.SupplierID
WHERE P.UnitsInStock <= P.ReorderLevel AND P.Discontinued=0






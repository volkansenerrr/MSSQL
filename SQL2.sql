SELECT P.ProductID, P.ProductName, P.SupplierID, S.CompanyName, S.ContactName, S.Phone, C.CategoryID, C.CategoryName, 
P.QuantityPerUnit, P.UnitPrice, P.UnitsInStock, P.ReorderLevel, P.Discontinued
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID
JOIN Suppliers AS S ON P.SupplierID = S.SupplierID

SELECT P.*, P.ProductID, S.CompanyName, S.ContactName, S.Phone, C.CategoryName
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID
JOIN Suppliers AS S ON P.SupplierID = S.SupplierID

CREATE VIEW TumUrunBilgisi 
AS SELECT P.ProductID, P.ProductName, P.SupplierID, S.CompanyName, S.ContactName, S.Phone, C.CategoryID, C.CategoryName, 
P.QuantityPerUnit, P.UnitPrice, P.UnitsInStock, P.ReorderLevel, P.Discontinued
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID
JOIN Suppliers AS S ON P.SupplierID = S.SupplierID

SELECT * FROM TumUrunBilgisi

SELECT ProductName, CompanyName, CategoryName FROM TumUrunBilgisi WHERE UnitPrice > 50

SELECT ProductID, ProductName, ProductName + ' ' + CompanyName + ' ' + CategoryName AS MergedRow FROM TumUrunBilgisi
WHERE ProductName + ' ' + CompanyName + ' ' + CategoryName LIKE '%Mea%'

SELECT OD.OrderID, OD.Quantity, OD.UnitPrice, TUB.ProductName, TUB.CategoryName, TUB.CompanyName 
FROM [Order Details] AS OD
JOIN TumUrunBilgisi AS TUB ON OD.ProductID = TUB.ProductID
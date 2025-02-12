--Ýsmi A ile baþlayan ürünler
SELECT * FROM Products WHERE ProductName LIKE 'A%'

--Ýsmi A ile biten ürünler
SELECT * FROM Products WHERE ProductName LIKE '%A'

--Ýsmi içerisinde a geçen ürünler
SELECT * FROM Products WHERE ProductName LIKE '%A%'

--Ýsmi içerisinde un geçen ürünler



INSERT INTO Products(ProductName, UnitPrice) VALUES ('Cappy %100 Portakal Suyu', 97)

SELECT * FROM Products WHERE ProductName LIKE '%\%%' ESCAPE '\'
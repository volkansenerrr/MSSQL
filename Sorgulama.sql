USE NORTHWND
--Tüm Kategoriler Ve Tüm Kolonlar
SELECT * FROM Categories

--Kategorilerin ID,Isim,Açýklama Kolonlarý
SELECT CategoryID, CategoryName, [Description] FROM Categories

--Ürünler Tablosunun tüm kolonlarý
SELECT * FROM Products

--Ürünleri ID, Isim, Fiyat, Stok
SELECT ProductID, ProductName, UnitPrice, UnitsInStock FROM Products
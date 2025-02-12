--STORED PROCEDURE
--Saklý Yordam
--SQL'in metot oluþturma tekniði

CREATE PROCEDURE usp_TumUrunBilgisi
AS BEGIN
SELECT P.ProductID, P.ProductName, P.SupplierID, S.CompanyName, S.ContactName, S.Phone, C.CategoryID, C.CategoryName, 
P.QuantityPerUnit, P.UnitPrice, P.UnitsInStock, P.ReorderLevel, P.Discontinued
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID
JOIN Suppliers AS S ON P.SupplierID = S.SupplierID
END

EXEC usp_TumUrunBilgisi

--Kategori Ekle 1
CREATE PROCEDURE usp_KategoriEkle
(
    @isim nvarchar(15),
	@aciklama ntext
)AS BEGIN 
INSERT INTO Categories(CategoryName, Description) VALUES(@isim, @aciklama)
END

exec usp_KategoriEkle 'murtaza', 'Murtazadan kategori olmaz'
SELECT * FROM Categories

CREATE PROCEDURE usp_KategoriEkleListele
(
    @isim nvarchar(15),
	@aciklama ntext
)AS BEGIN 
INSERT INTO Categories(CategoryName, Description) VALUES(@isim, @aciklama) SELECT * FROM Categories
END

EXEC usp_KategoriEkleListele 'Þuayip', 'Þuayipten Kategori Olur'

CREATE PROCEDURE usp_KategoriYoksaEkle
(
   @isim nvarchar(15),
   @aciklama ntext
)
AS BEGIN
   declare @sayi int
   SELECT @sayi = COUNT(*) FROM Categories WHERE CategoryName = @isim 
   IF @sayi = 0
       BEGIN
           INSERT INTO Categories(CategoryName, Description) VALUES(@isim, @aciklama)
       END
   ELSE 
       BEGIN
	       PRINT('Bu kategori Eklenmiþ')
	   END
END

EXEC usp_KategoriEkleListele 'Murtaza', 'Murtaza Denemesi'
SELECT * FROM Categories
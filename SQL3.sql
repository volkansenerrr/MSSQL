CREATE TRIGGER AlimEkleStokArttir
ON Alimlar
AFTER INSERT--Alýmlar tablosuna ekleme iþleminden sonra 
AS BEGIN
	declare @urunID int
	declare @adet smallint
	SELECT @urunID = Urun_ID, @Adet = Adet FROM inserted
	UPDATE Urunler SET Stok = Stok + @Adet WHERE ID = @urunID
END

CREATE TRIGGER AlimSilStokAzalt
ON Alimlar
AFTER DELETE
AS BEGIN
     declare @urun_ID int
	 declare @adet smallint
	 SELECT @urun_ID = @urun_ID, @Adet = adet FROM deleted
	 UPDATE Urunler SET Stok = Stok - @adet WHERE ID=@urun_ID
END

CREATE TRIGGER AlimGuncelleStokGuncelle
ON Alimlar
AFTER UPDATE
AS BEGIN
    declare @urunID int 
	declare @eskiadet smallint
	declare @yeniadet smallint
	SELECT @urunID = Urun_ID, @eskiadet = adet FROM deleted
	SELECT @yeniadet = adet FROM inserted
	UPDATE Urunler SET Stok = Stok - (@eskiadet - @yeniadet) WHERE ID = @urunID
END
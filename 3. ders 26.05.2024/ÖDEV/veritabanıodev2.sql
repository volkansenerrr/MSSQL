CREATE DATABASE fklt_db;
GO

USE fklt_db;
GO

CREATE TABLE Fakulte (
    FakulteID INT PRIMARY KEY,
    FakulteAdi NVARCHAR(50)
);
GO


CREATE TABLE Bolum (
    BolumID INT PRIMARY KEY,
    BolumAdi NVARCHAR(50),
    FakulteID INT,
    FOREIGN KEY (FakulteID) REFERENCES Fakulte(FakulteID)
);
GO


CREATE TABLE Ogrenci (
    OgrenciID INT PRIMARY KEY,
    OgrenciAdi NVARCHAR(50),
    BolumID INT,
    FOREIGN KEY (BolumID) REFERENCES Bolum(BolumID)
);
GO


CREATE TABLE Ders (
    DersID INT PRIMARY KEY,
    DersAdi NVARCHAR(50),
    BolumID INT,
    FOREIGN KEY (BolumID) REFERENCES Bolum(BolumID)
);
GO


CREATE TABLE OgrenciDers (
    OgrenciID INT,
    DersID INT,
    FOREIGN KEY (OgrenciID) REFERENCES Ogrenci(OgrenciID),
    FOREIGN KEY (DersID) REFERENCES Ders(DersID),
    PRIMARY KEY (OgrenciID, DersID)
);
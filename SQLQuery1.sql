CREATE DATABASE BTE_THERAPY
GO
USE BTE_THERAPY
GO
CREATE TABLE Hastalar
(
ID INT IDENTITY(1,1),
AdSoyad NVARCHAR(60),
Foto NVARCHAR(50),
EMail NVARCHAR(50),
Parola NVARCHAR(MAX),
Adres NVARCHAR(300),
Telefon NVARCHAR(15),
Cinsiyet BIT,
DogumTarih DATE,
KayitTarihi DATETIME,
Durum BIT,
CONSTRAINT pk_HastalarID PRIMARY KEY(ID)
)
GO
CREATE TABLE Fizyoterapist
(
ID INT IDENTITY(1,1),
AdSoyad NVARCHAR(60),
Foto NVARCHAR(50),
EMail NVARCHAR(50),
Parola NVARCHAR(MAX),
Telefon NVARCHAR(15),
Cinsiyet BIT,
DogumTarih DATE,
KayitTarihi DATETIME,
Durum BIT,
CONSTRAINT pk_FizyoterapistID PRIMARY KEY(ID)
)
GO
CREATE TABLE Kategori
(
ID INT IDENTITY(1,1),
Kategori NVARCHAR(60),
url NVARCHAR(50),
CONSTRAINT pk_KategoriID PRIMARY KEY(ID)
)
GO
CREATE TABLE AltKategori
(
ID INT IDENTITY(1,1),
UstKategoriID INT,
AltKategori NVARCHAR(50),
CONSTRAINT pk_AltKategoriID PRIMARY KEY(ID),
CONSTRAINT fk_AltKategoriUstKategoriID FOREIGN KEY(UstKategoriID) REFERENCES Kategori(ID)
)
GO
CREATE TABLE FizyoterapistTakip
(
ID INT IDENTITY(1,1),
FizyoterapistID INT,
HastaID INT,
CONSTRAINT pk_FizyoterapistTakipID PRIMARY KEY(ID),
CONSTRAINT fk_FizyoterapistTakipFizyoterapistID FOREIGN KEY(FizyoterapistID) REFERENCES Fizyoterapist(ID),
CONSTRAINT fk_FizyoterapistTakipHastaID FOREIGN KEY(HastaID) REFERENCES Hastalar(ID),
)
GO
CREATE TABLE Egzersiz
(
ID INT IDENTITY(1,1),
Ad NVARCHAR(50),
Video NVARCHAR(MAX),
Baslik NVARCHAR(50),
Icerik NVARCHAR(MAX),
KategoriID INT,
Foto NVARCHAR(50),
Foto1 NVARCHAR(50),
Foto2 NVARCHAR(50),
Foto3 NVARCHAR(50),
Foto4 NVARCHAR(50),
CONSTRAINT pk_EgzersizID PRIMARY KEY(ID),
CONSTRAINT fk_EgzersizKategoriID FOREIGN KEY(KategoriID) REFERENCES Kategori(ID)
)
GO
CREATE TABLE HastaEgzersizi
(
ID INT IDENTITY(1,1),
EgzersizID INT,
HastaID INT,
CONSTRAINT pk_HastaEgzersiziID PRIMARY KEY(ID),
CONSTRAINT fk_HastaEgzersiziEgzersizID FOREIGN KEY(EgzersizID) REFERENCES Egzersiz(ID),
CONSTRAINT fk_HastaEgzersiziHastaID FOREIGN KEY(HastaID) REFERENCES Hastalar(ID)
)
GO
CREATE TABLE HastaTakip
(
ID INT IDENTITY(1,1),
HastaEgzersizID INT,
AtamaTarihi DATETIME,
YapildiMi BIT,
CONSTRAINT pk_HastaTakipID PRIMARY KEY(ID),
CONSTRAINT fk_HastaTakipHastaEgzersizID FOREIGN KEY(HastaEgzersizID) REFERENCES HastaEgzersizi(ID)
)
GO
INSERT INTO Kategori(Kategori,url) VALUES('Mesane ve Baðýrsak Eðitimi','mesaneVeBagirsak')
INSERT INTO Kategori(Kategori,url) VALUES('Duyu Eðitimi','duyu')
INSERT INTO Kategori(Kategori,url) VALUES('Pasif Yaklaþýmlar','pasifYaklasimlar')
INSERT INTO Kategori(Kategori,url) VALUES('Aktif Yaklaþýmlar','aktifYaklasimlar')
INSERT INTO Kategori(Kategori,url) VALUES('Postür Eðitimi','posturEgitimi')

GO


INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(1,'Alarm Tedavisi')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(1,'Ýþeme ve Dýþkýlama Eðitimi')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(1,'Sývý ve Beslenme Önerileri')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(1,'Doðru Tuvalet Pozisyonu')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(1,'Davranýþ Deðiþikliði')

INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(2,'Proprioseptif Duyu')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(2,'Vestibüler Duyu')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(2,'Ýnteroseptif Duyu')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(2,'Taktil Duyu')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(2,'Tat ve Koku Duyusu')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(2,'Görsel Duyu')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(2,'Ýþitsel Duyu')

INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(3,'Diyafram')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(3,'Abdominal Duvar')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(3,'Torakolumbal Fasya')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(3,'Kalça Çevresi Kaslar')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(3,'Pelvik Taban')

INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(4,'Solunum Egzersizleri')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(4,'Kor Stabilizasyon Egzersizleri')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(4,'Pelvik Taban Egzersizleri')

INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(5,'Çocuklarda Postür ve Postürel Farkýndalýk')
INSERT INTO AltKategori(UstKategoriID, AltKategori) VALUES(5,'Postür Egzersizleri')

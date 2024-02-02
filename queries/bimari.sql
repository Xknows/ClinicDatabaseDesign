--drop table Bimari
CREATE TABLE Bimari(
nobatIDPaziresh int PRIMARY KEY,
bimariState nvarchar(5) NOT NULL CHECK(bimariState IN ('ok','bad','worst')),
bimariType nvarchar(500) NOT NULL,
nobatID int NOT NULL,
)

INSERT INTO Bimari(nobatIDPaziresh,bimariState,bimariType,nobatID)
VALUES (1,'ok','sarma khordegi kodakan',1),
       (2,'worst','ofonat tahal nyaz be erja darad',2),
       (3,'ok','tab',3),
       (4,'bad','corona',4),
	   (5,'ok','chiz khasi nabod-check dorei bod',5),
	   (6,'ok','feshar khoon',6)
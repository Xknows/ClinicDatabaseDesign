--drop table Karmand
CREATE TABLE Karmand(
karmandID int PRIMARY KEY,
mahalKar nvarchar(50) NOT NULL,
sabege tinyint NOT NULL,
daramad money,
karmandMalyatID bigint,
bazneshaste varchar(3) NOT NULL CHECK(bazneshaste IN('yes','no'))
)

INSERT INTO Karmand(karmandID,mahalKar,sabege,daramad,karmandMalyatID,bazneshaste)
VALUES (453,'aksbardari',4,10340000,7435723574,'no'),
       (123,'paziresh',10,15400500,8754976384,'no'),
       (321,'pharmacy',8,13890000,7675894376,'no'),
       (987,'herasat',25,12000000,0007689374,'no'),
	   (345,'pharmacy',30,NULL,NULL,'yes'),
	   (646,'paziresh',30,NULL,NULL,'yes'),
	   (452,'herasat',30,NULL,NULL,'yes')
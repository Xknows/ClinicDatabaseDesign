--drop table Bazneshastegi
CREATE TABLE Bazneshastegi(
bazneshateID bigint PRIMARY KEY,
karmandPersonlyID int NOT NULL,
bazneshasteStatus nvarchar(3) NOT NULL CHECK (bazneshasteStatus IN('yes')),
Daramad money,
zamanBazneshastegi varchar(4) NOT NULL -- DATE --> kar nakard! -- 
)

INSERT INTO Bazneshastegi(bazneshateID,karmandPersonlyID,bazneshasteStatus,Daramad,zamanBazneshastegi)
VALUES (1,345,'yes',13000000,'1985'),
       (2,646,'yes',16000000,'1990'),
       (3,452,'yes',16500000,'1992')
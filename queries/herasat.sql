--drop table Herasat
CREATE TABLE Herasat(
residegiID int PRIMARY KEY,
shekayatStatus nvarchar(500) NOT NULL,
karmandID int NOT NULL,
)

INSERT INTO Herasat(residegiID,shekayatStatus,karmandID)
VALUES (1,'shekayat sabt shod va barabar ganon amal khahad shod.',987)
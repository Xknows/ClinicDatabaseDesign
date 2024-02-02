--drop table Shekayat
CREATE TABLE Shekayat(
codeMeliShaki bigint PRIMARY KEY,
shekayatID int NOT NULL ,
shekayatType nvarchar(500) NOT NULL,
addressShaki nvarchar(MAX),
)

INSERT INTO Shekayat(codeMeliShaki,shekayatID,shekayatType,addressShaki)
VALUES (1367654321,1,'na rezayati az amalcard doctor','tabriz-baghmishe')
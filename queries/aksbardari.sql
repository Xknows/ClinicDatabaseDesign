--drop table Aksbardari
CREATE TABLE Aksbardari(
nobatID int PRIMARY KEY,
aksType nvarchar(11) NOT NULL CHECK(aksType IN ('MRI','CT-SCAN','radiography')),
karmandID int NOT NULL,
)

INSERT INTO Aksbardari(nobatID,aksType,karmandID)
VALUES (4,'CT-SCAN',453)
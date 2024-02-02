--drop table Pharmacy
CREATE TABLE Pharmacy(
nobatID int PRIMARY KEY,
darooName nvarchar(300) NOT NULL CHECK(darooName IN ('capsol','ampol','sharbat','sayer')),
darooNumber nvarchar(500),
karmandID int NOT NULL,
)

INSERT INTO Pharmacy(nobatID,darooName,darooNumber,karmandID)
VALUES (1,'capsol',NULL,321),
       (2,'sayer',NULL,321),
       (3,'ampol',1,321),
       (4,'ampol',1,321),
       (5,'sharbat',1,321),
	   (6,'capsol',3,321)
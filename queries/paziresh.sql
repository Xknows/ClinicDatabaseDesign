--drop table Paziresh 
CREATE TABLE Paziresh(
nobatID int NOT NULL,
codeMeli bigint PRIMARY KEY,
doctorLastName nvarchar(300) NOT NULL,
karmandID int NOT NULL,
)

INSERT INTO Paziresh(nobatID,codeMeli,doctorLastName,karmandID)
VALUES (1,1361234567,'Karimi',123),
       (2,1367654321,'Gorbani',123),
       (3,1451233897,'Karimi',123),
       (4,5631254567,'Nabavi',123),
       (5,1934653937,'Karimi',123),
       (6,1238476457,'Karimi',123)

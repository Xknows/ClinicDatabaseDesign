--drop table Erja
CREATE TABLE Erja(
raeisCheked int NOT NULL,
erjaAddress nvarchar(MAX),
erjaType nvarchar(8) CHECK (erjaType IN('vajeb','mostahab')),
erjaStatus nvarchar(5) PRIMARY KEY CHECK (erjaStatus IN('worst'))
)

INSERT INTO Erja(raeisCheked,erjaAddress,erjaType,erjaStatus)
VALUES (101,'tehran bimrestan vali-asr','vajeb','worst')
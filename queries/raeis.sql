--drop table Raeis
CREATE TABLE Raeis(
codeNezamPezeshki bigint PRIMARY KEY,
VIPID int NOT NULL,
sabegeRyasat tinyint NOT NULL ,
)

INSERT INTO Raeis(codeNezamPezeshki,VIPID,sabegeRyasat)
VALUES (65234,101,1)
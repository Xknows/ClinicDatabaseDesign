--drop table Morajegar
CREATE TABLE Morajegar(
codeMeli bigint PRIMARY KEY,
age tinyint NOT NULL,
firstName nvarchar(100) NOT NULL,
lastName nvarchar(300) NOT NULL,
)

INSERT INTO Morajegar(codeMeli,age,firstName,lastName)
VALUES (1361234567,6,'Ali','Alavi'),
       (1367654321,34,'Mohammad','Alavi'),
       (1451233897,16,'Hassan','Hasani'),
       (5631254567,63,'Hamed','Alizadeh'),
       (1934653937,23,'Ehsan','Naseri'),
       (1238476457,45,'Zahra','Rastgo'),
	   (7650926459,29,'Eman','Vahedifar')
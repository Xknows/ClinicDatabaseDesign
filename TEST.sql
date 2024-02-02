select * from Morajegar where codeMeli in(select codeMeli from Paziresh where doctorLastName='Karimi')
SELECT * FROM Morajegar INNER JOIN Paziresh ON Morajegar.codeMeli = Paziresh.codeMeli INNER JOIN Bimari ON Bimari.nobatID = Paziresh.nobatID INNER JOIN Doctor ON Paziresh.doctorLastName = Doctor.lastName INNER JOIN Pharmacy on Bimari.nobatID=Pharmacy.nobatID order by nobatIDPaziresh;
SELECT firstName,lastName,age,doctorLastName,nobatIDPaziresh,bimariState FROM Morajegar INNER JOIN Paziresh ON Morajegar.codeMeli = Paziresh.codeMeli INNER JOIN Bimari ON Bimari.nobatID = Paziresh.nobatID where doctorLastName='Karimi' order by nobatIDPaziresh;
SELECT firstName,age,doctorLastName,nobatIDPaziresh,bimariState  FROM Morajegar INNER JOIN Paziresh ON Morajegar.codeMeli = Paziresh.codeMeli INNER JOIN Bimari ON Bimari.nobatID = Paziresh.nobatID order by nobatIDPaziresh;

SELECT firstName,lastName,doctorLastName,bimariType,erjaAddress FROM Morajegar INNER JOIN Paziresh ON Morajegar.codeMeli = Paziresh.codeMeli INNER JOIN Bimari ON Bimari.nobatID = Paziresh.nobatID INNER JOIN Erja on Bimari.bimariState=Erja.erjaStatus;

SELECT lastName,shekayatType,shekayatStatus FROM Morajegar INNER JOIN Shekayat ON Morajegar.codeMeli = shekayat.codeMeliShaki inner join Herasat on Shekayat.shekayatID=Herasat.residegiID
SELECT firstName,lastName,doctorLastName,shekayatType,shekayatStatus FROM Morajegar INNER JOIN Shekayat ON Morajegar.codeMeli = shekayat.codeMeliShaki inner join Herasat on Shekayat.shekayatID=Herasat.residegiID INNER JOIN Paziresh ON Morajegar.codeMeli = Paziresh.codeMeli INNER JOIN Bimari ON Bimari.nobatID = Paziresh.nobatID



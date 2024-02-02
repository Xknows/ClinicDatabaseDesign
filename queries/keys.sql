--    Alter table Morajegar with Nocheck 
--    Add Constraint Fk_MorajegarToPaziresh
--    Foreign Key(codeMeli) References Paziresh(codeMeli)
	
--Alter table Paziresh with Nocheck 
--    Add Constraint Fk_PazareshToDoctor
--    Foreign Key(doctorLastName) References Doctor(lastName)

--   Alter table Paziresh with Nocheck 
--    Add Constraint Fk_PazareshToBimari
--    Foreign Key(nobatID) References Bimari(nobatIDPaziresh)


--		Alter table Bimari with Nocheck 
--    Add Constraint Fk_NobatIDToPharmacyNobatID
--    Foreign Key(nobatID) References Pharmacy(nobatID)

--  		Alter table Bimari with Nocheck 
--    Add Constraint Fk_NobatIDToAksbardariNobatID
--    Foreign Key(nobatID) References Aksbardari(nobatID)

--  		Alter table Morajegar with Nocheck 
--    Add Constraint Fk_MorajegarToShekayat
--    Foreign Key(codemeli) References Shekayat(codeMeliShaki)

--		Alter table Shekayat with Nocheck 
--    Add Constraint Fk_ShekayatIDToHerasat
--    Foreign Key(ShekayatID) References Herasat(residegiID)

--	Alter table Morajegar with Nocheck 
--    Add Constraint Fk_MorajegarToBimarOrganci
--    Foreign Key(codeMeli) References BimarOrganci(codeMeli)

--    Alter table BimarOrganci with Nocheck 
--    Add Constraint Fk_BimarOrganciToOrganc
--    Foreign Key(bimarOrganciID) References Organc(organcPazireshID)

-- 	  Alter table Doctor with Nocheck 
--    Add Constraint Fk_DoctorToRaeis
--    Foreign Key(codeNezamPezeshki) References Raeis(codeNezamPezeshki)

--	Alter table Bimari with Nocheck 
--    Add Constraint Fk_BimarToErja
--    Foreign Key(bimariState) References Erja(erjaStatus)


--  ----------_________________/\____________/\________/\_--

----------------mising raeis to karmand--


-- 	Alter table Karmand with Nocheck 
--    Add Constraint Fk_KarmandToMalyat
--    Foreign Key(karmandMalyatID) References OmorMalyati(karmandMalyatID)

--   	Alter table Bazneshastegi with Nocheck 
--    Add Constraint Fk_BazneshasteToKarmand
--    Foreign Key(karmandPersonlyID) References Karmand(karmandID)

--	   	Alter table Aksbardari with Nocheck 
--    Add Constraint Fk_AksbardariToKarmand
--    Foreign Key(karmandID) References Karmand(karmandID)

--		   	Alter table Paziresh with Nocheck 
--    Add Constraint Fk_PazireshToKarmand
--    Foreign Key(karmandID) References Karmand(karmandID)

--		   	Alter table Pharmacy with Nocheck 
--    Add Constraint Fk_PharmacyToKarmand
--    Foreign Key(karmandID) References Karmand(karmandID)

--		   	Alter table Herasat with Nocheck 
--    Add Constraint Fk_HerasatToKarmand
--    Foreign Key(karmandID) References Karmand(karmandID)
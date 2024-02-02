--drop table BimarOrganci
CREATE TABLE BimarOrganci(
codeMeli bigint PRIMARY KEY,
bimariStatus nvarchar(MAX),
bimarOrganciID int NOT NULL
)

INSERT INTO BimarOrganci(codeMeli,bimariStatus,bimarOrganciID)
VALUES (4650926459,'tasadof ba mashin',1)
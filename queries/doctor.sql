--drop table Doctor
CREATE TABLE Doctor(
lastName nvarchar(300) PRIMARY KEY,
firstName nvarchar(300) NOT NULL,
codeNezamPezeshki bigint NOT NULL,
takhasos nvarchar(200) NOT NULL,
sabege tinyint NOT NULL ,
age tinyint NOT NULL , 
)


INSERT INTO Doctor(lastName,firstName,codeNezamPezeshki,takhasos,sabege,age)
VALUES ('Karimi','Karim',76592,'omomi',12,45),
       ('Gorbani','Yones',98619,'dakheli',2,38),
       ('Nabavi','Mortaza',45346,'kodakan',5,40),
       ('Bagerzadepayentape','Moein',65234,'zanan',20,55)
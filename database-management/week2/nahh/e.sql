DROP DATABASE lab2;

CREATE DATABASE lab2;

USE lab2;

CREATE TABLE IF NOT EXISTS Author(
    authorId VARCHAR(6) PRIMARY KEY,
    authorName VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS AgeRestriction(
    ageRestrictionId INT AUTO_INCREMENT PRIMARY KEY,
    ageRestrictionName VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS BookLanguage(
    languageId VARCHAR(3) PRIMARY KEY,
    languageName VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS HevlelGazar(
    hevlelGazarId VARCHAR(4) PRIMARY KEY,
    hevlelGazarNer VARCHAR(45) NOT NULL,
    hevlelGazarLocation VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS HavtasHelber(
    havtasHelberId VARCHAR(1) PRIMARY KEY,
    havtasHelberName VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS AlbanTushaal(
    albanTushaalCode VARCHAR(2) PRIMARY KEY,
    albanTushaalName VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS EmployeeAngilal(
    angilalCode INT PRIMARY KEY AUTO_INCREMENT,
    angilalName VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Employee(
    employeeId VARCHAR(4) PRIMARY KEY,
    employeeName VARCHAR(45) NOT NULL,
    employeeGender VARCHAR(2) NOT NULL,
    employeePhone VARCHAR(25) NOT NULL,
    employeeAddress VARCHAR(45) NOT NULL,
    employeeRegId VARCHAR(10) NOT NULL,
    employeeUsername VARCHAR(30) NOT NULL,
    employeePassword VARCHAR(65) NOT NULL,
    albanTushaalCode VARCHAR(2) NOT NULL,
    angilalCode INT NOT NULL,
    FOREIGN KEY(albanTushaalCode)
        REFERENCES AlbanTushaal(albanTushaalCode),
    FOREIGN KEY(angilalCode)
        REFERENCES EmployeeAngilal(angilalCode)
);

CREATE TABLE IF NOT EXISTS HotAimag(
    hotAimagCode VARCHAR(2) PRIMARY KEY,
    hotAimagName VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS DuuregSum(
    duuregSumCode VARCHAR(3) PRIMARY KEY,
    duuregSumName VARCHAR(45) NOT NULL,
    hotAimagCode VARCHAR(2) NOT NULL,
    FOREIGN KEY(hotAimagCode)
        REFERENCES HotAimag(hotAimagCode)
);

CREATE TABLE IF NOT EXISTS Horoo(
    horooCode INT PRIMARY KEY AUTO_INCREMENT,
    horooNer VARCHAR(45) NOT NULL,
    duuregSumCode VARCHAR(3) NOT NULL,
    FOREIGN KEY(duuregSumCode)
        REFERENCES DuuregSum(duuregSumCode)
);

CREATE TABLE IF NOT EXISTS Zahialagch(
    zahialagchCode INT PRIMARY KEY AUTO_INCREMENT,
    zahialagchNer VARCHAR(45),
    zahialagchHuis TINYINT,
    zahialagchRegister VARCHAR(100),
    zahialagchUtas VARCHAR(15),
    zahialagchBairGudamjToot VARCHAR(200),
    ZahialagchNemeltMedeelel VARCHAR(500),
    HorooCode INT NOT NULL,
    FOREIGN KEY(HorooCode)
        REFERENCES Horoo(HorooCode)
);

CREATE TABLE IF NOT EXISTS Zahialga(
    zahialgaId INT AUTO_INCREMENT PRIMARY KEY,
    zahialgaDate DATE NOT NULL,
    zahialgaTulbur DECIMAL(13,2) NOT NULL,
    zahialgaStatus VARCHAR(45) NOT NULL,
    zahialagchCode INT NOT NULL,
    FOREIGN KEY(zahialagchCode)
        REFERENCES Zahialagch(zahialagchCode)   
);

CREATE TABLE IF NOT EXISTS Shaltgaan(
    shaltgaanId VARCHAR(1) PRIMARY KEY,
    shaltgaanTailbar VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Butsaalt(
    butsaaltId INT PRIMARY KEY AUTO_INCREMENT,
    butsaaltDate DATE NOT NULL,
    shaltgaanId VARCHAR(1) NOT NULL,
    zahialgaId INT NOT NULL,
    FOREIGN KEY(shaltgaanId)
        REFERENCES Shaltgaan(shaltgaanId),
    FOREIGN KEY(zahialgaId)
        REFERENCES Zahialga(zahialgaId)
);


CREATE TABLE IF NOT EXISTS Delivery(
    deliveryId INT PRIMARY KEY AUTO_INCREMENT,
    deliveryDate DATE NOT NULL,
    employeeId VARCHAR(4) NOT NULL,
    zahialgaId INT NOT NULL,
    FOREIGN KEY(employeeId)
        REFERENCES Employee(employeeId),
    FOREIGN KEY(zahialgaId)
        REFERENCES Zahialga(zahialgaId)
);

CREATE TABLE IF NOT EXISTS TulburTulult(
    tulburHuudasCode INT PRIMARY KEY AUTO_INCREMENT,
    tulburHemjee DECIMAL(13,2) NOT NULL,
    tulburHelber VARCHAR(45) NOT NULL,
    tulburDate DATE NOT NULL,
    ZahialgaCode INT NOT NULL
);

CREATE TABLE IF NOT EXISTS BookCatagory(
    bookCatagoryCode VARCHAR(2) PRIMARY KEY,
    bookCatagoryName VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS BookSubCatagory(
    bookSubCatagoryId VARCHAR(2) PRIMARY KEY,
    bookSubCatagoryName VARCHAR(45),
    bookCatagoryCode VARCHAR(2),
    FOREIGN KEY(bookCatagoryCode)
        REFERENCES BookCatagory(bookCatagoryCode)
);

CREATE TABLE IF NOT EXISTS Book(
    bookId VARCHAR(20) PRIMARY KEY,
    bookName VARCHAR(45) NOT NULL,
    publishDate DATE NOT NULL,
    pageNumber INT NOT NULL,
    price DECIMAL NOT NULL,
    ISBN VARCHAR(20) NOT NULL,
    hevlelGazarId VARCHAR(4) NOT NULL,
    languageId VARCHAR(3) NOT NULL,
    havtasHelberId VARCHAR(1) NOT NULL,
    bookSubCatagoryId VARCHAR(2) NOT NULL,
    ageRestrictionId INT NOT NULL,
    FOREIGN KEY(hevlelGazarId)
        REFERENCES HevlelGazar(hevlelGazarId),
    FOREIGN KEY(languageId)
        REFERENCES BookLanguage(languageId),
    FOREIGN KEY(havtasHelberId)
        REFERENCES HavtasHelber(havtasHelberId),
    FOREIGN KEY(bookSubCatagoryId)
        REFERENCES BookSubCatagory(bookSubCatagoryId),
    FOREIGN KEY(ageRestrictionId)
        REFERENCES AgeRestriction(ageRestrictionId)
);

CREATE TABLE IF NOT EXISTS BookDans(
    bookDansId INT PRIMARY KEY AUTO_INCREMENT,
    bookDansName VARCHAR(45) NOT NULL,
    ognoo DATE NOT NULL,
    bookId VARCHAR(20) NOT NULL,
    FOREIGN KEY(bookId)
        REFERENCES Book(bookId)
);

CREATE TABLE IF NOT EXISTS ZahialgaDelgerengui(
    zahialgaDelgerenguiId INT PRIMARY KEY AUTO_INCREMENT,
    zahialgaId INT NOT NULL,
    bookDansId INT NOT NULL,
    FOREIGN KEY(zahialgaId)
        REFERENCES Zahialga(zahialgaId),
    FOREIGN KEY(bookDansId)
        REFERENCES BookDans(bookDansId)
);

CREATE TABLE IF NOT EXISTS Authors(
    authorsId INT PRIMARY KEY AUTO_INCREMENT,
    bookId VARCHAR(20) NOT NULL,
    authorId VARCHAR(6) NOT NULL,
    FOREIGN KEY(bookId)
        REFERENCES Book(bookId),
    FOREIGN KEY(authorId)
        REFERENCES Author(authorId)
);
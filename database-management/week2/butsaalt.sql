CREATE TABLE Butsaalt(
    butsaaltId INT PRIMARY KEY AUTO_INCREMENT,
    butsaaltDate DATE NOT NULL,
    shaltgaanId VARCHAR(1) NOT NULL,
    zahialgaId INT NOT NULL,
    FOREIGN KEY(shaltgaanId)
        REFERENCES Shaltgaan(shaltgaanId),
    FOREIGN KEY(zahialgaId)
        REFERENCES Zahialga(zahialgaId)
);
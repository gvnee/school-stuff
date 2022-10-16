CREATE TABLE Zahialga(
    zahialgaId INT AUTO_INCREMENT PRIMARY KEY,
    zahialgaDate DATE NOT NULL,
    zahialgaTulbur DECIMAL(13,2) NOT NULL,
    zahialgaStatus VARCHAR(45) NOT NULL,
    zahialagchCode INT NOT NULL,
    FOREIGN KEY(zahialagchCode)
        REFERENCES Zahialagch(zahialagchCode)   
);
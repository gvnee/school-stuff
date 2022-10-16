CREATE TABLE TulburTulult(
    tulburHuudasCode INT PRIMARY KEY AUTO_INCREMENT,
    tulburHemjee DECIMAL(13,2) NOT NULL,
    tulburHelber VARCHAR(45) NOT NULL,
    tulburDate DATE NOT NULL,
    ZahialgaCode INT NOT NULL
    FOREIGN KEY(ZahialgaCode)
        REFERENCES Zahialga(ZahialgaCode);
);
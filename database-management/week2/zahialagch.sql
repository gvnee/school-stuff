CREATE TABLE Zahialagch(
    zahialagchCode INT PRIMARY KEY AUTO_INCREMENT,
    zahialagchNer VARCHAR(45),
    zahialagchHuis TINYINT,
    zahialagchRegister VARCHAR(10),
    zahialagchUtas VARCHAR(15),
    zahialagchBairGudamjToot VARCHAR(45),
    ZahialagchNemeltMedeelel VARCHAR(45),
    HorooCode INT NOT NULL,
    FOREIGN KEY(HorooCode)
        REFERENCES Horoo(HorooCode)
);
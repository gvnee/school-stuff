CREATE TABLE Horoo(
    horooCode INT PRIMARY KEY,
    horooNer VARCHAR(45) NOT NULL,
    duuregSumCode VARCHAR(3) NOT NULL,
    FOREIGN KEY(duuregSumCode)
        REFERENCES DuuregSum(duuregSumCode)
);
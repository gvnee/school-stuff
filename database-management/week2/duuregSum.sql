CREATE TABLE DuuregSum(
    duuregSumCode VARCHAR(3) PRIMARY KEY,
    duuregSumName VARCHAR(45) NOT NULL,
    hotAimagCode VARCHAR(2) NOT NULL,
    FOREIGN KEY(hotAimagCode)
        REFERENCES HotAimag(hotAimagCode)
);
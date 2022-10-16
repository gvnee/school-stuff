CREATE TABLE Employee(
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
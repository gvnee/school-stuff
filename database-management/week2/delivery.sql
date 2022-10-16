CREATE TABLE Delivery(
    deliveryId INT PRIMARY KEY AUTO_INCREMENT,
    deliveryDate DATE NOT NULL,
    employeeId VARCHAR(4) NOT NULL,
    zahialgaId INT NOT NULL,
    FOREIGN KEY(employeeId)
        REFERENCES Employee(employeeId),
    FOREIGN KEY(zahialgaId)
        REFERENCES Zahialga(zahialgaId)
);
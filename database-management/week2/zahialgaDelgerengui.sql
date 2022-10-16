CREATE TABLE ZahialgaDelgerengui(
    zahialgaDelgerenguiId INT PRIMARY KEY AUTO_INCREMENT,
    zahialgaId INT NOT NULL,
    bookDansId INT NOT NULL,
    FOREIGN KEY(zahialgaId)
        REFERENCES Zahialga(zahialgaId),
    FOREIGN KEY(bookDansId)
        REFERENCES BookDans(bookDansId)
);
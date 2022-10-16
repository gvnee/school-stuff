CREATE TABLE BookDans(
    bookDansId INT PRIMARY KEY AUTO_INCREMENT,
    bookDansName VARCHAR(45) NOT NULL,
    ognoo DATE NOT NULL,
    bookId VARCHAR(20) NOT NULL,
    FOREIGN KEY(bookId)
        REFERENCES Book(bookId)
);
CREATE TABLE Authors(
    authorsId INT PRIMARY KEY AUTO_INCREMENT,
    bookId VARCHAR(20) NOT NULL,
    authorId VARCHAR(6) NOT NULL,
    FOREIGN KEY(bookId)
        REFERENCES Book(bookId),
    FOREIGN KEY(authorId)
        REFERENCES Author(authorId)
);
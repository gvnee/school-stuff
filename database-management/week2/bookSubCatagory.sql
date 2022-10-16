CREATE TABLE BookSubCatagory(
    bookSubCatagoryId VARCHAR(2) PRIMARY KEY,
    bookSubCatagoryName VARCHAR(45),
    bookCatagoryCode int,
    FOREIGN KEY(bookCatagoryCode)
        REFERENCES BookCatagory(bookCatagoryCode)
);
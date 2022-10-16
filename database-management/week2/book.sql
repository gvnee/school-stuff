CREATE TABLE Book(
    bookId VARCHAR(20) PRIMARY KEY,
    bookName VARCHAR(45) NOT NULL,
    publishDate DATE NOT NULL,
    pageNumber INT NOT NULL,
    price DECIMAL NOT NULL,
    ISBN VARCHAR(20) NOT NULL,
    hevlelGazarId VARCHAR(4) NOT NULL,
    languageId VARCHAR(3) NOT NULL,
    havtasHelberId VARCHAR(1) NOT NULL,
    bookSubCatagoryId VARCHAR(2) NOT NULL,
    ageRestrictionId INT NOT NULL,
    FOREIGN KEY(hevlelGazarId)
        REFERENCES HevlelGazar(hevlelGazarId),
    FOREIGN KEY(languageId)
        REFERENCES BookLanguage(languageId),
    FOREIGN KEY(havtasHelberId)
        REFERENCES HavtasHelber(havtasHelberId),
    FOREIGN KEY(bookSubCatagoryId)
        REFERENCES BookSubCatagory(bookSubCatagoryId),
    FOREIGN KEY(ageRestrictionId)
        REFERENCES AgeRestriction(ageRestrictionId)
);
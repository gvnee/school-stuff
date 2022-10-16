ALTER TABLE Book
DROP FOREIGN KEY Book_ibfk_5;

ALTER TABLE Book
ALTER COLUMN ageRestrictionId SET DEFAULT 15;

ALTER TABLE Book
ADD CONSTRAINT Book_fk_5
    FOREIGN KEY (ageRestrictionId) REFERENCES AgeRestriction(ageRestrictionId)
    ON DELETE SET DEFAULT
    ON UPDATE SET DEFAULT;

UPDATE AgeRestriction
SET ageRestrictionId = 10
WHERE  ageRestrictionName = "Parental Guidance";
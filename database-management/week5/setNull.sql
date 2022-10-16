ALTER TABLE Authors
DROP FOREIGN KEY Authors_ibfk_2;

ALTER TABLE Authors
MODIFY authorId VARCHAR(6) NULL;

ALTER TABLE Authors
ADD CONSTRAINT Authors_fk_2
    FOREIGN KEY (authorId) REFERENCES Author(authorId)
    ON DELETE SET NULL
    ON UPDATE SET NULL;

select * from Authors;

UPDATE Author
SET authorId = "qi2345"
WHERE authorName = "Dorris";

select * from Authors;

DELETE FROM Author
WHERE authorName = "Britt";

select * from Authors;
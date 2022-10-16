SELECT * FROM information_schema.table_constraints where Table_name = "Zahialagch";

ALTER TABLE Zahialagch
ADD CONSTRAINT ch_age
CHECK (age >= 12);

SELECT * FROM information_schema.table_constraints where Table_name = "Zahialagch";

ALTER TABLE Book
ADD CONSTRAINT ch_price
CHECK (price <=40000);

ALTER TABLE Book
ADD CONSTRAINT ch_pageNumber
CHECK (pageNumber <=5000);
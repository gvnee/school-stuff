SELECT * FROM information_schema.table_constraints where Table_name = "Zahialagch";

ALTER TABLE Zahialagch
ADD CONSTRAINT register
UNIQUE (zahialagchRegister);

SELECT * FROM information_schema.table_constraints where Table_name = "Zahialagch";

ALTER TABLE Book
ADD CONSTRAINT u_isbn
UNIQUE (ISBN);

ALTER TABLE Employee
ADD CONSTRAINT u_username
UNIQUE (employeeUsername);
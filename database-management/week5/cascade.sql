ALTER TABLE Employee
DROP FOREIGN KEY Employee_fk_2;

ALTER TABLE Employee
ADD CONSTRAINT Employee_fk_2
    FOREIGN KEY (angilalCode) REFERENCES EmployeeAngilal(angilalCode)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

update EmployeeAngilal
SET angilalCode = 10
WHERE angilalCode = 2;
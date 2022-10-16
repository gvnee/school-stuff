DESCRIBE BookLanguage;

ALTER TABLE BookLanguage
ALTER COLUMN languageName SET DEFAULT "Mongol";

ALTER TABLE HotAimag
ALTER COLUMN hotAimagName SET DEFAULT "Ulaanbaatar";

ALTER TABLE ageRestriction
ALTER COLUMN ageRestrictionName SET DEFAULT "buh nasnii";
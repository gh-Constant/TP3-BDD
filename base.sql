CREATE TABLE etudiant (
    id_etud INT unsigned PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(20),
    adresse TEXT,
    code_postal VARCHAR(5),
    telephone VARCHAR(10),
    date_naissance DATE
);

INSERT INTO etudiant VALUES
    (NULL, 'dupond', 'rue du chateau', '0100', '0123456789', '1990-12-31');
INSERT INTO etudiant (nom,adresse,telephone,date_naissance) VALUES
    ('durant', 'rue du pont', '0123456789', '1990-12-31');
INSERT INTO etudiant VALUES
    (NULL, 'DAVAL', 'rue du CHATEAU', 90000, 0123456789, '1990-12-31');

RENAME TABLE etudiant TO etudiants;
SHOW TABLES;

ALTER TABLE etudiants ADD groupe VARCHAR(20);
DESCRIBE etudiants;
SELECT * FROM etudiants;

ALTER TABLE etudiants ADD prenom VARCHAR(20) AFTER nom;
DESCRIBE etudiants;
SELECT * FROM etudiants;

ALTER TABLE etudiants DROP COLUMN groupe;
DESCRIBE etudiants;
SELECT * FROM etudiants;

ALTER TABLE etudiants CHANGE prenom prenoms VARCHAR(50);
DESCRIBE etudiants;
SELECT * FROM etudiants;

ALTER TABLE etudiants 
CHANGE telephone telephone VARCHAR(13) CHECK (telephone REGEXP '^[0-9]+$');

DESCRIBE etudiants;
SELECT * FROM etudiants;


DROP TABLE IF EXISTS etudiant;
DROP TABLE IF EXISTS etudiants;

CREATE database dbixclass;

GRANT ALL on dbixclass.* TO 'kiel'@'%';

use dbixclass


DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id          INTEGER AUTO_INCREMENT PRIMARY KEY,
    age         INTEGER NOT NULL,
    firstname   TEXT    NOT NULL,
    lastname    TEXT    NOT NULL
);

INSERT INTO users VALUES (NULL, 55, 'Bob', 'Doe');
INSERT INTO users VALUES (NULL, 30, 'Sarah', 'Connor');

COMMIT;

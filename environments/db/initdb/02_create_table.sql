\c example;
CREATE TABLE organization (
  id SERIAL NOT NULL,
  name text NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id SERIAL NOT NULL,
  name text NOT NULL,
  age int NOT NULL,
  organization_id INT REFERENCES organization(id),
  PRIMARY KEY (id)
);

INSERT INTO organization
VALUES (1, 'test');
INSERT into users
values (1, 'test_user', 22, 1);
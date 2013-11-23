INSERT INTO will.cats VALUES ("Fluffy", 8, "short");
INSERT INTO will.cats VALUES ("Mittens", 6, "long");
INSERT INTO will.cats VALUES ("Snowball VIII", 1, "short");
INSERT INTO will.dogs VALUES ("male", "Spot");
INSERT INTO will.dogs VALUES ("female", "Princess");

-- cross join
select * from will.cats, will.dogs;
select * from will.cats cross join will.dogs;

-- inner join (take cross join, then filter by a predicate)
select * from will.cats INNER JOIN will.dogs ON will.dogs.sex='female';

INSERT INTO will.cats VALUES ("Fluffy", 8, "short");
INSERT INTO will.cats VALUES ("Mittens", 6, "long");
INSERT INTO will.cats VALUES ("Snowball VIII", 1, "short");
INSERT INTO will.dogs VALUES ("male", "Spot");
INSERT INTO will.dogs VALUES ("female", "Princess");

CREATE TABLE `will`.`ocats` (
  `name` VARCHAR(45) NOT NULL,
  `lives` INT NULL,
  `hair length` VARCHAR(45) NULL,
  PRIMARY KEY (`name`));

INSERT INTO will.ocats VALUES ("Fluffy", 8, "short");
INSERT INTO will.ocats VALUES ("Princess", 6, "long");
INSERT INTO will.ocats VALUES ("Spot", 1, "short");

CREATE TABLE `will`.`odogs` (
  `name` VARCHAR(45) NOT NULL,
  `sex` VARCHAR(45) NULL,
  PRIMARY KEY (`name`));

INSERT INTO will.odogs VALUES ("male", "Spot");
INSERT INTO will.odogs VALUES ("female", "Princess");

-- cross join
select * from will.ocats cross join will.odogs ON will.ocats.name=will.odogs.name;

-- outer join (take inner join, then add back any missing input rows, using null to fill blank columns)
select * from will.ocats LEFT OUTER JOIN will.odogs ON will.odogs.name=will.ocats.name;
-- Princess	6	long	Princess	female
-- Spot	1	short	Spot	male
-- Fluffy	8	short NULL NULL	
select * from will.ocats RIGHT OUTER JOIN will.odogs ON will.odogs.name=will.ocats.name;
-- Princess	6	long	Princess	female
-- Spot	1	short	Spot	male

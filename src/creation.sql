CREATE TABLE Researcher
(
  researcher_id INT NOT NULL AUTO_INCREMENT,
  researcher_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (researcher_id)
);

CREATE TABLE ResearchProgram
(
  program_id INT NOT NULL AUTO_INCREMENT,
  program_name varchar(255) NOT NULL,
  PRIMARY KEY (program_id)
);

CREATE TABLE Time
(
  time_id INT NOT NULL AUTO_INCREMENT,
  time_year INT NOT NULL,
  PRIMARY KEY (time_id)
);

CREATE TABLE Production
(
  production_id INT NOT NULL AUTO_INCREMENT,
  production_title VARCHAR(100) NOT NULL,
  event_name VARCHAR(80) NOT NULL,
  event_abreviation varchar(20),
  ISSN varchar(50),
  PRIMARY KEY (production_id)
);

CREATE TABLE Qualis
(
  qualis_id INT NOT NULL AUTO_INCREMENT,
  qualis varchar(10),
  PRIMARY KEY (qualis_id)
);

CREATE TABLE ResearchField
(
  researchfield_id INT NOT NULL AUTO_INCREMENT,
  researchfield_name varchar(255),
  PRIMARY KEY (researchfield_id)
);

CREATE TABLE Production_fact
(
  count INT NOT NULL,
  time_id INT NOT NULL,
  researcher_id INT NOT NULL,
  production_id INT NOT NULL,
  qualis_id INT NOT NULL,
  researchfield_id INT NOT NULL,
  FOREIGN KEY (time_id) REFERENCES Time(time_id),
  FOREIGN KEY (researcher_id) REFERENCES Researcher(researcher_id),
  FOREIGN KEY (production_id) REFERENCES Production(production_id),
  FOREIGN KEY (qualis_id) REFERENCES Qualis(qualis_id),
  FOREIGN KEY (researchfield_id) REFERENCES ResearchField(researchfield_id),
  PRIMARY KEY (time_id, researcher_id, production_id, qualis_id, researchfield_id)
);


ALTER TABLE `Production` ADD UNIQUE `unique_index` (`production_title`, `event_name`);

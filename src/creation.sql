CREATE TABLE Researcher
(
  researcher_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  research_area VARCHAR(255) NOT NULL,
  program VARCHAR(255),
  PRIMARY KEY (researcher_id)
);

CREATE TABLE Time
(
  time_id INT NOT NULL AUTO_INCREMENT,
  year INT NOT NULL,
  PRIMARY KEY (time_id)
);

CREATE TABLE Production
(
  event_id INT NOT NULL AUTO_INCREMENT,
  event_name VARCHAR(255) NOT NULL,
  event_qualis INT,
  event_type INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  PRIMARY KEY (event_id)
);

CREATE TABLE Institution
(
  institution_id INT NOT NULL AUTO_INCREMENT,
  institution_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (institution_id)
);

CREATE TABLE Production_fact
(
  count INT NOT NULL,
  time_id INT NOT NULL,
  researcher_id INT NOT NULL,
  event_id INT NOT NULL,
  institution_id INT NOT NULL,
  FOREIGN KEY (time_id) REFERENCES Time(time_id),
  FOREIGN KEY (researcher_id) REFERENCES Researcher(researcher_id),
  FOREIGN KEY (event_id) REFERENCES Production(event_id),
  FOREIGN KEY (institution_id) REFERENCES Institution(institution_id)
);

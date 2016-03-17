DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(255) NOT NULL,
  name varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=3;

INSERT INTO users (username, name) VALUES ("john.smith", "John");
INSERT INTO users (username, name) VALUES ("sarah.connor", "Sarah");

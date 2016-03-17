CREATE TABLE IF NOT EXISTS users (
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=3;

INSERT INTO users (username) VALUES ("john.smith");
INSERT INTO users (username) VALUES ("sarah.connor");

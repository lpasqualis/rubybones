
DROP DATABASE IF EXISTS example_$ENV$;
CREATE DATABASE example_$ENV$;

GRANT ALL PRIVILEGES on example_$ENV$.* to 'root'@'localhost';

CREATE USER IF NOT EXISTS 'username'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES on example_$ENV$.* to 'username'@'localhost';

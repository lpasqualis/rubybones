
DROP DATABASE IF EXISTS example;
CREATE DATABASE example;

GRANT ALL PRIVILEGES on example.* to 'root'@'localhost';

DROP USER IF EXISTS 'username'@'localhost';
CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES on example.* to 'username'@'localhost';

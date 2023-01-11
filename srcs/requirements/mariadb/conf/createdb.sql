CREATE DATABASE Base;
CREATE USER 'stissera'@'%' IDENTIFIED BY 'qwerty';
GRANT ALL PRIVILEGES ON Base.* TO 'stissera'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'qwerty';

CREATE DATABASE IF NOT EXISTS Tickets;
CREATE DATABASE IF NOT EXISTS opsmind_ai;

-- Ensure the application user exists (MySQL 8)
CREATE USER IF NOT EXISTS 'opsmind'@'%' IDENTIFIED BY 'opsmind';
CREATE USER IF NOT EXISTS 'opsmind'@'localhost' IDENTIFIED BY 'opsmind';

GRANT ALL PRIVILEGES ON opsmind.* TO 'opsmind'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Tickets.* TO 'opsmind'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON opsmind_ai.* TO 'opsmind'@'localhost' WITH GRANT OPTION;

-- keep the remote user too
GRANT ALL PRIVILEGES ON opsmind.* TO 'opsmind'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Tickets.* TO 'opsmind'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON opsmind_ai.* TO 'opsmind'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;
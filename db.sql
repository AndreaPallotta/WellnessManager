DROP DATABASE IF EXISTS WellnessManager;

CREATE DATABASE WellnessManager;

USE WellnessManager;

CREATE TABLE IF NOT EXISTS UserData (
    id INT(6) UNSIGNED AUTO_INCREMENT,
    email VARCHAR(255) DEFAULT NULL,
    password VARCHAR(20) DEFAULT NULL,
    login_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    UNIQUE KEY `email` (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS Food (
    letter VARCHAR(1) NOT NULL,
    foodName VARCHAR(15) NOT NULL PRIMARY KEY,
    calories DOUBLE(10, 2) NOT NULL,
    fats DOUBLE(10, 2) NOT NULL,
    protein DOUBLE(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Recipe (
    letter VARCHAR(1) NOT NULL,
    recipeName VARCHAR(15) NOT NULL PRIMARY KEY,
    foodNames VARCHAR(255) NOT NULL,
    servings VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Exercise (
    letter VARCHAR(1) NOT NULL,
    exerciseName VARCHAR(30) NOT NULL,
    calories DOUBLE(10, 2) NOT NULL,
    PRIMARY KEY (exerciseName)
);

CREATE TABLE IF NOT EXISTS LogData (
    logDate DATE NOT NULL,
    letter VARCHAR(1) NOT NULL,
    logName VARCHAR(30),
    doubleValue DOUBLE(10, 2),
    PRIMARY KEY (letter, doubleValue)
);
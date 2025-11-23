--Create a new database
CREATE DATABASE BookStoreDB;

--Select the database
USE BookStoreDB;


--Create the authors table
CREATE TABLE authors (author_id_id INTEGER PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
country VARCHAR(15) NOT NULL);

--Create the books table
CREATE TABLE books (book_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
title VARCHAR(20) NOT NULL,
price INTEGER NOT NULL,
author_id INTEGER REFERENCES authors(author_id));


--Add a new column published_year to books
ALTER TABLE books ADD published_year INTEGER;

--Delete all rows from the books table (keep table structure)
TRUNCATE TABLE books;

--Delete the entire database
DROP DATABASE BookStoreDB;


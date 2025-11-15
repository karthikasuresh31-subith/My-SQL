INSERT INTO books (id, title, author, price, stockstatus, genre) 
VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 350,'in stock', 'Fiction'),
(2, 'A Brief History of Time', 'Stephen Hawking', 550,'in stock', 'Science'),
(3, 'Inferno', 'Dan Brown', 600, 'out of stock','Thriller'),
(4, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 720,'in stock', 'History'),
(5, 'The Alchemist', 'Paulo Coelho', 400,'out of stock', 'Fiction');

--show all the different genres available
SELECT DISTINCT genre
FROM books;

--books that are in stock and price below 400
SELECT * FROM books 
WHERE stockstatus='in stock'
AND price<400;

--books either out of stock or have a price above 700
SELECT * FROM books 
WHERE stockstatus='out of stock'
OR price>700;

--10% gst to the price
SELECT title,
price,
price * 1.10 AS price_with_gst
FROM books;

--sorted by price from high to low
SELECT title,price,stockstatus
FROM books 
ORDER BY price DESC;
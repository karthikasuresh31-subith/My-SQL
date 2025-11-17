INSERT INTO books (bookid, title, author, price, stock)
VALUES (1, 'Learn SQL', 'John Smith',400, 10),
(2, 'Mastering Python', 'Jane Doe', 600, 5),
(3, 'HTML & CSS Basics', 'Alan Webb', 300, 8);

--Increase the price of the book 'Learn SQL' by 50 and update its stock to 12.
UPDATE books 
SET price = 450, stock = 12
WHERE bookid = 1;

--Decrease the stock by 2 for books where the price is greater than 500.
UPDATE books
SET stock = 3
WHERE bookid = 2;

--Delete the book that has book_id = 3.
DELETE FROM books
WHERE bookid = 3;
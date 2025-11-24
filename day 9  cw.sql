--Show the list of all books along with the name of the person who borrowed them (if borrowed).
SELECT b.book_id, b.title, br.name AS borrowed_by
FROM books b
LEFT JOIN borrowers br
ON b.book_id = br.book_id;

--Show the list of all borrowers along with the book details they borrowed (if any).SELECT br.borrower_id, br.name, b.title
FROM borrowers br
LEFT JOIN books b
ON br.book_id = b.book_id;

--Show the list of all books that have not been borrowed by anyone.
SELECT b.book_id, b.title
FROM books b
LEFT JOIN borrowers br
ON b.book_id = br.book_id
WHERE br.book_id IS NULL;

--Show the list of all borrowers even if they haven't borrowed any book.-- books tableSELECT br.borrower_id, br.name, b.title
FROM borrowers br
LEFT JOIN books b
ON br.book_id = b.book_id;
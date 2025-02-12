SHOW DATABASES ;
use librarymanagement ;
Show tables ;

Select *FROM Author;
Select *FROM books;
Select *FROM borrowedbooks;
Select *FROM members;

-- Add book
INSERT INTO Books (title, author_id, genre, publication_year, available_copies)
VALUES ('Some book ', 5, 'Philosophy ', 2019, 20);

-- issue book

SELECT available_copies FROM Books WHERE book_id = 1;

INSERT INTO BorrowedBooks (book_id, member_id, borrow_date)
VALUES (1, 1, CURDATE());
 
 UPDATE Books SET available_copies = available_copies - 1 WHERE book_id = 1;

-- return 

UPDATE BorrowedBooks
SET return_date = CURDATE()
WHERE book_id = 1 AND member_id = 1 AND return_date IS NULL;

UPDATE Books SET available_copies = available_copies + 1 WHERE book_id = 1;

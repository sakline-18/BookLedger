-- ============================================================================
-- BOOKSTORE MANAGEMENT SYSTEM - DATA POPULATION & DEMONSTRATION SCRIPT
-- ============================================================================
-- This script populates the database with realistic sample data and
-- demonstrates all key features of the bookstore management system.
-- ============================================================================

-- Suppress all notices
SET client_min_messages TO WARNING;

-- Insert Genres
INSERT INTO genres (genre_name, description) VALUES
('Fiction', 'Literary works of fiction and contemporary novels'),
('Non-Fiction', 'Factual and informative books'),
('Science Fiction', 'Speculative fiction with scientific and futuristic themes'),
('Mystery', 'Crime, detective, and thriller stories'),
('Biography', 'Life stories of real people'),
('Fantasy', 'Magical and fantastical worlds'),
('Romance', 'Love stories and romantic fiction'),
('Horror', 'Scary and suspenseful stories'),
('Self-Help', 'Personal development and improvement'),
('History', 'Historical accounts and analysis'),
('Science', 'Scientific theories and discoveries'),
('Business', 'Business strategy and entrepreneurship');


-- Insert Authors
INSERT INTO authors (full_name, country, biography) VALUES
('J.K. Rowling', 'United Kingdom', 'British author best known for the Harry Potter series'),
('George Orwell', 'United Kingdom', 'English novelist and essayist, known for dystopian fiction'),
('Stephen King', 'United States', 'Master of horror and suspense fiction'),
('Agatha Christie', 'United Kingdom', 'The Queen of Mystery, best-selling novelist of all time'),
('Isaac Asimov', 'United States', 'Prolific science fiction writer and biochemistry professor'),
('J.R.R. Tolkien', 'United Kingdom', 'Author of The Lord of the Rings and creator of Middle-earth'),
('Jane Austen', 'United Kingdom', 'Classic English novelist known for romantic fiction'),
('Dan Brown', 'United States', 'Author of thriller novels including The Da Vinci Code'),
('Malcolm Gladwell', 'Canada', 'Journalist and author known for pop psychology books'),
('Yuval Noah Harari', 'Israel', 'Historian and author of Sapiens'),
('Michelle Obama', 'United States', 'Former First Lady and author'),
('Dale Carnegie', 'United States', 'Writer and lecturer on self-improvement'),
('Walter Isaacson', 'United States', 'Biographer of Steve Jobs and Albert Einstein'),
('Neil Gaiman', 'United Kingdom', 'Award-winning fantasy and horror author'),
('Margaret Atwood', 'Canada', 'Author of speculative fiction and literary criticism');


-- Insert Suppliers
INSERT INTO suppliers (company_name, contact_email, contact_phone, credit_terms) VALUES
('Penguin Random House Distribution', 'orders@penguinrandomhouse.com', '+1-555-0101', 'Net 30'),
('HarperCollins Supply Chain', 'supply@harpercollins.com', '+1-555-0102', 'Net 45'),
('Simon & Schuster Wholesale', 'wholesale@simonandschuster.com', '+1-555-0103', 'Net 30'),
('Macmillan Publishers Distribution', 'distribution@macmillan.com', '+1-555-0104', 'Net 60'),
('Hachette Book Group Supply', 'orders@hachette.com', '+1-555-0105', 'Net 30'),
('Independent Publishers Group', 'sales@ipgbook.com', '+1-555-0106', 'Net 45');


-- Fantasy Books
INSERT INTO books (isbn, title, genre_id, price, stock_qty, supplier_id, publication_date) VALUES
('978-0439708180', 'Harry Potter and the Sorcerer''s Stone', 6, 29.99, 45, 1, '1998-09-01'),
('978-0439064873', 'Harry Potter and the Chamber of Secrets', 6, 29.99, 38, 1, '1999-06-02'),
('978-0439136365', 'Harry Potter and the Prisoner of Azkaban', 6, 31.99, 32, 1, '1999-09-08'),
('978-0618640157', 'The Lord of the Rings', 6, 49.99, 25, 2, '2005-10-12'),
('978-0547928227', 'The Hobbit', 6, 24.99, 40, 2, '2012-09-18'),
('978-0060558123', 'American Gods', 6, 27.99, 18, 3, '2001-06-19'),
('978-0765326355', 'The Name of the Wind', 6, 28.99, 22, 4, '2007-03-27');

-- Science Fiction Books
INSERT INTO books (isbn, title, genre_id, price, stock_qty, supplier_id, publication_date) VALUES
('978-0553293357', 'Foundation', 3, 26.99, 30, 1, '1991-10-01'),
('978-0553382563', 'I, Robot', 3, 23.99, 28, 1, '2004-08-03'),
('978-0451524935', '1984', 3, 19.99, 50, 2, '1961-01-01'),
('978-0062225672', 'The Handmaid''s Tale', 3, 25.99, 35, 3, '1998-09-01'),
('978-0765326362', 'The Way of Kings', 3, 32.99, 20, 4, '2010-08-31');

-- Mystery/Thriller Books
INSERT INTO books (isbn, title, genre_id, price, stock_qty, supplier_id, publication_date) VALUES
('978-0062073501', 'Murder on the Orient Express', 4, 22.99, 42, 2, '2011-01-01'),
('978-0062073488', 'And Then There Were None', 4, 21.99, 38, 2, '2011-03-29'),
('978-0385504201', 'The Da Vinci Code', 4, 27.99, 33, 3, '2003-03-18'),
('978-0307474278', 'The Girl with the Dragon Tattoo', 4, 26.99, 29, 4, '2008-09-16'),
('978-1501175466', 'The Institute', 4, 29.99, 25, 5, '2019-09-10');

-- Horror Books
INSERT INTO books (isbn, title, genre_id, price, stock_qty, supplier_id, publication_date) VALUES
('978-0307743657', 'The Shining', 8, 24.99, 31, 5, '2012-01-31'),
('978-1501156762', 'It', 8, 32.99, 27, 5, '2016-01-05'),
('978-0307743664', 'Pet Sematary', 8, 23.99, 19, 5, '2011-11-29');

-- Non-Fiction / Self-Help Books
INSERT INTO books (isbn, title, genre_id, price, stock_qty, supplier_id, publication_date) VALUES
('978-0062316110', 'Sapiens: A Brief History of Humankind', 10, 28.99, 44, 3, '2015-02-10'),
('978-1501111105', 'How to Win Friends and Influence People', 9, 19.99, 52, 6, '2011-01-01'),
('978-0316346627', 'Outliers: The Story of Success', 9, 24.99, 36, 2, '2008-11-18'),
('978-1524763138', 'Becoming', 11, 32.99, 41, 1, '2018-11-13'),
('978-1501127625', 'Thinking, Fast and Slow', 9, 29.99, 23, 4, '2013-04-02');

-- Biography Books
INSERT INTO books (isbn, title, genre_id, price, stock_qty, supplier_id, publication_date) VALUES
('978-1451648539', 'Steve Jobs', 5, 34.99, 28, 1, '2011-10-24'),
('978-0743264730', 'Benjamin Franklin: An American Life', 5, 29.99, 22, 2, '2004-05-01'),
('978-1982108786', 'Leonardo da Vinci', 5, 35.99, 18, 1, '2017-10-17');

-- Romance Books
INSERT INTO books (isbn, title, genre_id, price, stock_qty, supplier_id, publication_date) VALUES
('978-0141439518', 'Pride and Prejudice', 7, 18.99, 47, 2, '2002-12-31'),
('978-0141439662', 'Sense and Sensibility', 7, 17.99, 39, 2, '2003-04-29'),
('978-0525536291', 'The Notebook', 7, 22.99, 34, 3, '2014-01-28');

-- Business Books
INSERT INTO books (isbn, title, genre_id, price, stock_qty, supplier_id, publication_date) VALUES
('978-0062273208', 'The Lean Startup', 12, 26.99, 30, 4, '2011-09-13'),
('978-0307887894', 'The Hard Thing About Hard Things', 12, 28.99, 21, 5, '2014-03-04'),
('978-0062301239', 'Zero to One', 12, 27.99, 25, 4, '2014-09-16');

-- Low stock items (for auto-restock demonstration)
INSERT INTO books (isbn, title, genre_id, price, stock_qty, supplier_id, publication_date) VALUES
('978-0544003415', 'The Lord of the Rings: Complete Set', 6, 89.99, 3, 2, '2014-09-02'),
('978-0547928210', 'The Silmarillion', 6, 26.99, 2, 2, '2013-04-23'),
('978-0062316097', 'Homo Deus', 10, 29.99, 4, 3, '2017-02-21'),
('978-0525559474', 'Educated: A Memoir', 5, 27.99, 2, 1, '2018-02-20');


-- Link books to authors
INSERT INTO book_authors (isbn, author_id, author_order) VALUES
-- J.K. Rowling
('978-0439708180', 1, 1),
('978-0439064873', 1, 1),
('978-0439136365', 1, 1),
-- George Orwell
('978-0451524935', 2, 1),
-- Stephen King
('978-0307743657', 3, 1),
('978-1501156762', 3, 1),
('978-0307743664', 3, 1),
('978-1501175466', 3, 1),
-- Agatha Christie
('978-0062073501', 4, 1),
('978-0062073488', 4, 1),
-- Isaac Asimov
('978-0553293357', 5, 1),
('978-0553382563', 5, 1),
-- J.R.R. Tolkien
('978-0618640157', 6, 1),
('978-0547928227', 6, 1),
('978-0544003415', 6, 1),
('978-0547928210', 6, 1),
-- Jane Austen
('978-0141439518', 7, 1),
('978-0141439662', 7, 1),
-- Dan Brown
('978-0385504201', 8, 1),
-- Malcolm Gladwell
('978-0316346627', 9, 1),
-- Yuval Noah Harari
('978-0062316110', 10, 1),
('978-0062316097', 10, 1),
-- Michelle Obama
('978-1524763138', 11, 1),
-- Dale Carnegie
('978-1501111105', 12, 1),
-- Walter Isaacson
('978-1451648539', 13, 1),
('978-0743264730', 13, 1),
('978-1982108786', 13, 1),
-- Neil Gaiman
('978-0060558123', 14, 1),
-- Margaret Atwood
('978-0062225672', 15, 1);


INSERT INTO customers (name, email, membership_pts, trust_score) VALUES
-- VIP Customers (High trust score)
('Emily Rodriguez', 'emily.rodriguez@email.com', 450, 95),
('James Chen', 'james.chen@email.com', 520, 92),
('Sarah Williams', 'sarah.williams@email.com', 380, 90),
-- Premium Customers (Good trust score)
('Michael Thompson', 'michael.thompson@email.com', 280, 85),
('Jennifer Martinez', 'jennifer.martinez@email.com', 310, 82),
('David Lee', 'david.lee@email.com', 240, 78),
('Lisa Anderson', 'lisa.anderson@email.com', 200, 76),
-- Standard Customers
('Robert Brown', 'robert.brown@email.com', 150, 65),
('Maria Garcia', 'maria.garcia@email.com', 180, 70),
('John Davis', 'john.davis@email.com', 120, 60),
('Patricia Wilson', 'patricia.wilson@email.com', 90, 55),
-- New Customers (Default trust score)
('Christopher Moore', 'christopher.moore@email.com', 0, 100),
('Amanda Taylor', 'amanda.taylor@email.com', 0, 100),
('Daniel Jackson', 'daniel.jackson@email.com', 0, 100),
-- Problem Customers (Low trust score)
('Karen Miller', 'karen.miller@email.com', 50, 35),
('Richard Harris', 'richard.harris@email.com', 30, 25);


-- VIP Customer checkout (gets 15% discount)
DO $$
BEGIN
    CALL proc_atomic_checkout(1, '978-0439708180', 2);
END $$;

-- Premium Customer checkout (gets 5% discount)
DO $$
BEGIN
    CALL proc_atomic_checkout(4, '978-0618640157', 1);
END $$;

-- Standard Customer checkout (regular price)
DO $$
BEGIN
    CALL proc_atomic_checkout(8, '978-0553293357', 3);
END $$;

-- Problem Customer checkout (gets 10% surcharge)
DO $$
BEGIN
    CALL proc_atomic_checkout(16, '978-1501111105', 1);
END $$;

-- Multiple checkouts for different customers
DO $$
BEGIN
    CALL proc_atomic_checkout(2, '978-0451524935', 2);
    CALL proc_atomic_checkout(3, '978-0062073501', 1);
    CALL proc_atomic_checkout(5, '978-0062316110', 2);
    CALL proc_atomic_checkout(6, '978-1524763138', 1);
    CALL proc_atomic_checkout(7, '978-0316346627', 1);
    CALL proc_atomic_checkout(9, '978-0385504201', 2);
    CALL proc_atomic_checkout(10, '978-1451648539', 1);
    CALL proc_atomic_checkout(11, '978-0141439518', 3);
    CALL proc_atomic_checkout(12, '978-0547928227', 1);
    CALL proc_atomic_checkout(13, '978-1501156762', 1);
    CALL proc_atomic_checkout(14, '978-0062225672', 2);
    CALL proc_atomic_checkout(15, '978-0307743657', 1);
    CALL proc_atomic_checkout(1, '978-0553382563', 1);
    CALL proc_atomic_checkout(2, '978-0062073488', 2);
    CALL proc_atomic_checkout(3, '978-1501175466', 1);
END $$;


-- CORRECTED RETURNS SECTION
-- 1. Return from Sale 1005 (Customer 3 bought 'Murder on Orient Express')
INSERT INTO returns (sale_id, isbn, quantity, condition, reason, refund_amount)
VALUES (6, '978-0062073501', 1, 'GOOD', 'Customer changed mind', 22.99);

-- 2. Return from Sale 1000 (Customer 1 bought 'Harry Potter 1')
INSERT INTO returns (sale_id, isbn, quantity, condition, reason, refund_amount)
VALUES (1, '978-0439708180', 1, 'DAMAGED', 'Book arrived with torn cover', 29.99);

-- 3. Return from Sale 1008 (Customer 7 bought 'Outliers') - This one was already correct!
INSERT INTO returns (sale_id, isbn, quantity, condition, reason, refund_amount)
VALUES (9, '978-0316346627', 1, 'DEFECTIVE', 'Pages missing from book', 24.99);

-- Add book assets
DO $$
BEGIN
    CALL proc_add_book_asset('978-0439708180', 'Chapter One: THE BOY WHO LIVED - Mr. and Mrs. Dursley, of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much...');
    CALL proc_add_book_asset('978-0618640157', 'Three Rings for the Elven-kings under the sky, Seven for the Dwarf-lords in their halls of stone...');
    CALL proc_add_book_asset('978-0451524935', 'It was a bright cold day in April, and the clocks were striking thirteen...');
    CALL proc_add_book_asset('978-0062316110', 'About 13.5 billion years ago, matter, energy, time and space came into being in what is known as the Big Bang...');
    CALL proc_add_book_asset('978-1451648539', 'Prologue: How This Book Came to Be - In the early summer of 2004, I got a phone call from Steve Jobs...');
END $$;


DO $$
BEGIN
    CALL proc_auto_restock();
END $$;


-- Get the first PO and receive it
DO $$
DECLARE
    v_po_id INT;
BEGIN
    SELECT po_id INTO v_po_id FROM purchase_orders WHERE status = 'DRAFT' LIMIT 1;
    IF v_po_id IS NOT NULL THEN
        UPDATE purchase_orders SET status = 'SUBMITTED' WHERE po_id = v_po_id;
        CALL proc_receive_purchase_order(v_po_id);
    END IF;
END $$;


DO $$
BEGIN
    CALL prc_refresh_dashboards();
END $$;


-- Database summary statistics
DO $$
DECLARE
    v_total_customers INT;
    v_total_books INT;
    v_total_sales INT;
    v_total_revenue NUMERIC;
    v_total_returns INT;
    v_low_stock_items INT;
    v_pending_pos INT;
BEGIN
    SELECT COUNT(*) INTO v_total_customers FROM customers;
    SELECT COUNT(*) INTO v_total_books FROM books;
    SELECT COUNT(*) INTO v_total_sales FROM sales_header;
    SELECT COALESCE(SUM(total_amount), 0) INTO v_total_revenue FROM sales_header;
    SELECT COUNT(*) INTO v_total_returns FROM returns;
    SELECT COUNT(*) INTO v_low_stock_items FROM books WHERE stock_qty < 5;
    SELECT COUNT(*) INTO v_pending_pos FROM purchase_orders WHERE status IN ('DRAFT', 'SUBMITTED');
END $$;


-- Show top 5 customers by Trust Score (Demonstrates the "User Reliability" Algorithm)
SELECT name, email, trust_score, membership_pts 
FROM customers 
ORDER BY trust_score DESC, membership_pts DESC 
LIMIT 5;

-- Show the Audit Log to prove security (Demonstrates "Forensic Audit Trail")
SELECT * FROM audit_logs ORDER BY change_time DESC;

-- Data population complete

-- Database summary statistics
DO $$
DECLARE
    v_total_customers INT;
    v_total_books INT;
    v_total_sales INT;
    v_total_revenue NUMERIC;
    v_total_returns INT;
    v_low_stock_items INT;
    v_pending_pos INT;
BEGIN
    SELECT COUNT(*) INTO v_total_customers FROM customers;
    SELECT COUNT(*) INTO v_total_books FROM books;
    SELECT COUNT(*) INTO v_total_sales FROM sales_header;
    SELECT COALESCE(SUM(total_amount), 0) INTO v_total_revenue FROM sales_header;
    SELECT COUNT(*) INTO v_total_returns FROM returns;
    SELECT COUNT(*) INTO v_low_stock_items FROM books WHERE stock_qty < 5;
    SELECT COUNT(*) INTO v_pending_pos FROM purchase_orders WHERE status IN ('DRAFT', 'SUBMITTED');
END $$;

-- Data population complete
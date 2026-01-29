-- ----------------------------------------------------------------------------
-- DEMO 1: AUTOMATIC TRANSACTION (Module B)
-- ----------------------------------------------------------------------------

-- Show initial stock
SELECT isbn, title, stock_qty 
FROM books 
WHERE isbn = '978-0451524935';

-- Perform checkout (Customer 1 buys 2 copies)
CALL proc_atomic_checkout(1, '978-0451524935', 2);

-- Verify stock reduced
SELECT isbn, title, stock_qty 
FROM books 
WHERE isbn = '978-0451524935';

-- Prove ACID Compliance (The "Failure" Test)
CALL proc_atomic_checkout(1, '978-0451524935', 500);

-- Verify stock remained unchanged after failure

SELECT isbn, title, stock_qty 
FROM books 
WHERE isbn = '978-0451524935';


-- ----------------------------------------------------------------------------
-- DEMO 2: AUTOMATIC RESTOCK (Module A)
-- ----------------------------------------------------------------------------

-- Manually trigger a low-stock event
UPDATE books
SET stock_qty = 2
WHERE isbn = '978-0547928227';

-- Verify the update
SELECT isbn, title, stock_qty, supplier_id 
FROM books 
WHERE isbn = '978-0547928227';

-- Run the Auto-Restock Agent
CALL proc_auto_restock();

-- Verify the Purchase Order Creation
SELECT po_id, supplier_id, status, total_amount, order_date 
FROM purchase_orders 
ORDER BY po_id DESC 
LIMIT 1;

-- Show the specific line items in that Order
SELECT * FROM purchase_order_details 
WHERE po_id = (SELECT MAX(po_id) FROM purchase_orders);

-- ============================================================================
-- DEMO 3: SMART SEARCH ENGINE (Module C)
-- ============================================================================

-- Simple Search (Title Only)
SELECT * FROM fn_smart_search(p_title => 'Harry Potter');


-- Multi-Criteria Search (Genre + Price)
SELECT * FROM fn_smart_search(
    p_genre => 'Science Fiction', 
    p_max_price => 25.00
);


-- Author Search (Partial Match)
SELECT * FROM fn_smart_search(p_author => 'Neil');

-- ============================================================================
-- DEMO 4: ALGORITHMIC TRUST SCORE & VIP PRICING (Module D)
-- ============================================================================

-- Compare Prices for Different Users
SELECT 
    '978-0439708180' AS Book_ISBN,
    fn_get_vip_price('978-0439708180', 1) AS "VIP Price (Cust 1)",
    fn_get_vip_price('978-0439708180', 16) AS "Risk Price (Cust 16)";



-- Show Current Score Before Return
SELECT customer_id, name, trust_score 
FROM customers 
WHERE customer_id = 1;


-- Process a Damaged Return (Trigger)
INSERT INTO returns (sale_id, isbn, quantity, condition, reason, refund_amount)
VALUES (1, '978-0439708180', 1, 'DAMAGED', 'Coffee stain', 0.00);


-- Verify Score Drop
SELECT customer_id, name, trust_score 
FROM customers 
WHERE customer_id = 1;


-- ============================================================================
-- DEMO 5: FORENSIC AUDIT TRAIL (Module E)
-- ============================================================================

-- The "Theft" Attempt
UPDATE books 
SET price = 1.00 
WHERE isbn = '978-0547928227';


-- Verify the Change
SELECT isbn, title, price 
FROM books 
WHERE isbn = '978-0547928227';


-- Reveal the Audit Log
SELECT * FROM audit_logs 
ORDER BY change_time DESC 
LIMIT 1;


-- Cleanup (Restore Price)
UPDATE books 
SET price = 24.99 
WHERE isbn = '978-0547928227';

-- ============================================================================
-- DEMO 6: EXECUTIVE DASHBOARDS (Module F)
-- ============================================================================

-- Simulate Nightly Refresh
CALL prc_refresh_dashboards();


-- View Genre Trends
SELECT * FROM mv_dashboard_genre_trends;

-- View Top Authors
SELECT * FROM mv_dashboard_top_authors;

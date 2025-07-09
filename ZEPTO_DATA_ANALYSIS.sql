-- ---------------------------------------- ZEPTO DATA ANALYSIS -----------------------------------------

-- --------------------------------- Data Exploration and Data Cleaning ---------------------------------

SELECT * FROM ZEPTO;

ALTER TABLE ZEPTO 
ADD COLUMN sku_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

SELECT COUNT(*) FROM ZEPTO;

-- Null values
SELECT * FROM ZEPTO
WHERE
CATEGORY IS NULL OR
NAME IS NULL OR 
MRP IS NULL OR
DISCOUNTPERCENT IS NULL OR
AVAILABLEQUANTITY IS NULL OR
DISCOUNTEDSELLINGPRICE IS NULL OR
WEIGHTINGMS IS NULL OR
OUTOFSTOCK IS NULL OR
QUANTITY IS NULL;

-- Different product categories
SELECT DISTINCT CATEGORY FROM ZEPTO;

-- Products in stock vs out of stock
SELECT OUTOFSTOCK , COUNT(SKU_ID) AS STOCK_COUNT
FROM ZEPTO 
GROUP BY OUTOFSTOCK;

-- Product names present multiple times
SELECT NAME, COUNT(SKU_ID) AS COUNT
FROM ZEPTO 
GROUP BY NAME ORDER BY COUNT DESC;

-- Finding 0 selling price
SELECT * FROM ZEPTO 
WHERE MRP = 0 OR DISCOUNTEDSELLINGPRICE = 0;

DELETE FROM ZEPTO 
WHERE sku_id = 3638;

-- Convert paise to rupees
UPDATE ZEPTO 
SET
MRP = MRP/100,
DISCOUNTEDSELLINGPRICE = DISCOUNTEDSELLINGPRICE / 100;

-- ------------------------------------------ Data analysis --------------------------------------

-- Q1. Find the top 10 best-value products based on the discount percentage.
-- Q2. What are the Products with High MRP but Out of Stock
-- Q3. Calculate Estimated Revenue for each category
-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
-- Q5. Identify the top 5 categories offering the highest average discount percentage.
-- Q6. Find the price per gram for products above 100g and sort by best value.
-- Q7. Group the products into categories like Low, Medium, Bulk.
-- Q8. What is the Total Inventory Weight Per Category 












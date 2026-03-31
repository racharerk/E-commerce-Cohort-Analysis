-- =====================================
-- E-commerce Cohort Analysis (SQL)
-- =====================================

-- 1. Data Sampling (Reduce data size)
CREATE TABLE orders_small AS
SELECT *
FROM olist_orders_dataset
LIMIT 10000;

CREATE TABLE customers_small AS
SELECT *
FROM olist_customers_dataset
LIMIT 10000;


-- 2. Create Cohort (First purchase month)
CREATE TABLE cohort_small AS
SELECT 
    c.customer_unique_id,
    MIN(DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m-01')) AS cohort_month
FROM orders_small o
JOIN customers_small c 
    ON o.customer_id = c.customer_id
GROUP BY c.customer_unique_id;


-- 3. Create Cohort Result (Join + month_diff)
CREATE TABLE cohort_result_small AS
SELECT 
    c.cohort_month,
    TIMESTAMPDIFF(
        MONTH,
        c.cohort_month,
        o.order_purchase_timestamp
    ) AS month_diff,
    cu.customer_unique_id
FROM orders_small o
JOIN customers_small cu 
    ON o.customer_id = cu.customer_id
JOIN cohort_small c 
    ON cu.customer_unique_id = c.customer_unique_id;


-- 4. Final Aggregation (Cohort Table)
SELECT 
    cohort_month,
    month_diff,
    COUNT(*) AS customers
FROM cohort_result_small
GROUP BY cohort_month, month_diff
ORDER BY cohort_month, month_diff;
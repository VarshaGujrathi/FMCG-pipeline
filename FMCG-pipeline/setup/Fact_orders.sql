INSERT INTO fmcg.gold.fact_orders
SELECT 
  CAST(date AS DATE) AS date,
  product_code,
  customer_code,
  CAST(sold_quantity AS BIGINT) AS sold_quantity
FROM read_files(
  '/Volumes/fmcg/gold/parent_increamental_update',
  format => 'csv',
  header => true,
  schema => 'date DATE, product_code STRING, customer_code STRING, sold_quantity BIGINT'
)
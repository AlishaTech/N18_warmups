SELECT order_details, products, customers_table,
       RANK() OVER (PARTITION BY order_details)
              AS rank
  FROM northwind
 WHERE country = 'USA'
 limit 3;
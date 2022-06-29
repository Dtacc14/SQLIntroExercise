-- find all products
SELECT * FROM products;

-- find all products that cost $1400
SELECT * FROM products WHERE products.Price = 1400;

-- find all products that cost $11.99 or $13.99
SELECT * FROM products WHERE products.Price = 11.99 OR products.Price = 13.99 ORDER BY products.Price DESC;

-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products WHERE NOT products.Price = 11.99 ORDER BY products.Price;

-- find all products and sort them by price from greatest to least
SELECT * FROM products ORDER BY products.Price DESC;

-- find all employees who don't have a middle initial
SELECT employees.FirstName, employees.MiddleInitial, employees.LastName FROM employees WHERE employees.MiddleInitial IS NULL;

-- find distinct product prices
SELECT DISTINCT products.Price FROM products ORDER BY products.Price;

-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM employees WHERE employees.FirstName LIKE 'j%';

-- find all Macbooksproducts
SELECT * FROM products WHERE products.Name LIKE 'Mac%';

-- find all products that are on sale
SELECT * FROM products WHERE products.OnSale = 1 ORDER BY products.Price;

-- find the average price of all products
SELECT AVG (products.Price) FROM products;

-- find all Geek Squad employees who don't have a middle initial
SELECT employees.FirstName, employees.MiddleInitial, employees.LastName, employees.Title FROM employees WHERE employees.Title LIKE 'GEEK%' AND employees.MiddleInitial IS NULL;

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * FROM products WHERE products.StockLevel BETWEEN 500 AND 1200 ORDER BY products.Price;
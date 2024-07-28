--Get total customers 
SELECT count(customer_id) FROM customers;

-- Get total orders
SELECT count(order_id) FROM orders;

-- Get Customers With More Than 5 Orders
SELECT customers.customer_id, customers.name, COUNT(orders.order_id) AS total_orders
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id 
HAVING COUNT(orders.order_id) > 5;

-- Total Orders This Year (2024) // 16
SELECT COUNT(orders.order_id) AS total_orders
FROM orders
WHERE strftime('%Y', orders.order_date) = '2024';

-- Total Orders For Year (2023) // 20
SELECT COUNT(orders.order_id) AS total_orders
FROM orders
WHERE strftime('%Y', orders.order_date) = '2023';

-- Highest Product By Price 
SELECT products.product_name, MAX(products.price) as highestProduct
FROM products;

-- Highest Products By Price 
SELECT products.product_name, products.price as highestProduct
FROM products
ORDER BY products.price DESC;

-- Top 5 selling  products For Year (2024)
SELECT 
    p.product_name, 
    SUM(od.quantity) AS total_quantity_sold
FROM 
    order_details od
JOIN 
    products p ON od.product_id = p.product_id
JOIN 
    orders o ON od.order_id = o.order_id
WHERE 
    strftime('%Y', o.order_date) = '2024'
    AND od.quantity > 1
GROUP BY 
    p.product_name
ORDER BY 
    total_quantity_sold DESC
LIMIT 5;


-- Most valuable customers
SELECT 
    c.name,
    SUM(od.quantity) AS total_quantity_sold
FROM 
    order_details od
JOIN 
    orders o ON od.order_id = o.order_id
JOIN 
    customers c ON o.customer_id = c.customer_id
WHERE 
    strftime('%Y', o.order_date) = '2024'
GROUP BY 
    c.customer_id, c.name
ORDER BY 
    total_quantity_sold DESC
LIMIT 1;


-- Top category products
WITH CategoryProductSales AS (
    SELECT 
        pc.category_id,
        c.category_name,
        p.product_id,
        p.product_name,
        p.price,
        SUM(od.quantity * p.price) AS TotalRevenue,  
        SUM(od.quantity) AS total_quantity_sold
    FROM 
        order_details od
    JOIN 
        products p ON od.product_id = p.product_id
    JOIN 
        product_categories pc ON p.product_id = pc.product_id
    JOIN 
        categories c ON pc.category_id = c.category_id
    GROUP BY 
        pc.category_id, c.category_name, p.product_id, p.product_name, p.price
),
RankedCategoryProducts AS (
    SELECT 
        cps.*,
        RANK() OVER (PARTITION BY cps.category_id ORDER BY cps.total_quantity_sold DESC) AS product_rank
    FROM 
        CategoryProductSales cps
)

SELECT 
    category_name,
    product_name,
    price,
    total_quantity_sold,
    TotalRevenue
FROM 
    RankedCategoryProducts
WHERE 
    product_rank = 1
LIMIT 5;




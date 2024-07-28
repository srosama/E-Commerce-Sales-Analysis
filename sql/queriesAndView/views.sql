--  ADD MORE RULES AND FEATURES TO GET BETTER ANAL
CREATE VIEW IF NOT EXISTS customer_reviews AS
SELECT 
    reviews.rating,
    reviews.comment,
    products.product_name,
    customers.name AS customer_name,
    categories.category_name
FROM 
    reviews
JOIN 
    products ON reviews.product_id = products.product_id
JOIN 
    customers ON reviews.customer_id = customers.customer_id
JOIN 
    product_categories ON products.product_id = product_categories.product_id
JOIN 
    categories ON product_categories.category_id = categories.category_id;


-- View for top-selling products
CREATE VIEW IF NOT EXISTS top_selling_products AS
SELECT 
    p.product_id, 
    p.product_name, 
    SUM(od.quantity) AS total_quantity_sold,
    SUM(od.quantity * p.price) AS TotalRevenue

FROM 
    order_details od
JOIN 
    products p ON od.product_id = p.product_id
GROUP BY 
    p.product_id, p.product_name
ORDER BY 
    total_quantity_sold DESC
LIMIT 10;

-- View for most valuable customers
CREATE VIEW IF NOT EXISTS most_valuable_customers AS
SELECT 
    c.customer_id, 
    c.name, 
    c.email, 
    p.product_name,
    cat.category_name,
    SUM(o.total_amount) AS total_spent
FROM 
    order_details od
JOIN 
    orders o ON od.order_id = o.order_id
JOIN 
    customers c ON o.customer_id = c.customer_id
JOIN 
    products p ON od.product_id = p.product_id
JOIN 
    product_categories pc ON p.product_id = pc.product_id
JOIN 
    categories cat ON pc.category_id = cat.category_id
GROUP BY 
    c.customer_id, c.name, c.email, p.product_name, cat.category_name
ORDER BY 
    total_spent DESC
LIMIT 10;



-- View for monthly sales trends
CREATE VIEW IF NOT EXISTS monthly_sales_trends AS
SELECT 
    strftime('%Y-%m', o.order_date) AS month, 
    SUM(o.total_amount) AS total_sales
FROM 
    orders o
GROUP BY 
    month
ORDER BY 
    month;


-- Insert data into the 'customers' table
INSERT INTO customers (name, email, phone, address) VALUES
('John Doe', 'john.doe@example.com', '123-456-7890', '123 Main St, Anytown, USA'),
('Jane Smith', 'jane.smith@example.com', '234-567-8901', '456 Elm St, Othertown, USA'),
('Alice Johnson', 'alice.johnson@example.com', '345-678-9012', '789 Oak St, Thistown, USA'),
('Bob Brown', 'bob.brown@example.com', '456-789-0123', '101 Pine St, Thattown, USA'),
('Charlie Davis', 'charlie.davis@example.com', '567-890-1234', '202 Maple St, Anothertown, USA'),
('Diana Evans', 'diana.evans@example.com', '678-901-2345', '303 Cedar St, Anyothertown, USA'),
('Frank Harris', 'frank.harris@example.com', '789-012-3456', '404 Birch St, Somewhere, USA'),
('Grace Lee', 'grace.lee@example.com', '890-123-4567', '505 Spruce St, Nowhere, USA'),
('Henry Miller', 'henry.miller@example.com', '901-234-5678', '606 Fir St, Everywhere, USA'),
('Isla Nelson', 'isla.nelson@example.com', '012-345-6789', '707 Willow St, Anyplace, USA');

-- Insert data into the 'products' table
INSERT INTO products (product_name, product_description, price, stock) VALUES
('Laptop', '15-inch laptop with 8GB RAM and 256GB SSD', 799.99, 50),
('Smartphone', '5.5-inch smartphone with 64GB storage', 499.99, 100),
('Tablet', '10-inch tablet with 4GB RAM and 128GB storage', 299.99, 75),
('Smartwatch', 'Smartwatch with heart rate monitor', 199.99, 150),
('Headphones', 'Noise-cancelling over-ear headphones', 149.99, 200),
('Bluetooth Speaker', 'Portable Bluetooth speaker with 10 hours battery life', 99.99, 250),
('Camera', 'DSLR camera with 24MP sensor and 18-55mm lens', 699.99, 30),
('Printer', 'Wireless printer with scanner and copier', 129.99, 80),
('Monitor', '27-inch 4K monitor with HDR', 399.99, 60),
('Keyboard', 'Mechanical keyboard with RGB lighting', 89.99, 120);

-- Insert data into the 'categories' table
INSERT INTO categories (category_name, category_description) VALUES
('Electronics', 'Devices and gadgets'),
('Computers', 'Desktops, laptops, and peripherals'),
('Mobile', 'Smartphones and tablets'),
('Audio', 'Headphones, speakers, and audio devices'),
('Photography', 'Cameras and photography equipment'),
('Office', 'Office supplies and equipment');

-- Insert data into the 'product_categories' table
INSERT INTO product_categories (product_id, category_id) VALUES
(1, 2),
(2, 3),
(3, 3),
(4, 4),
(5, 4),
(6, 4),
(7, 5),
(8, 6),
(9, 2),
(10, 2);

-- Insert data into the 'orders' table
INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
(1, '2023-07-01', 899.98, 'Completed'),
(2, '2023-07-02', 549.98, 'Completed'),
(3, '2023-07-03', 299.99, 'Completed'),
(4, '2023-07-04', 349.98, 'Pending'),
(5, '2023-07-05', 129.99, 'Completed'),
(6, '2023-07-06', 299.98, 'Pending'),
(7, '2023-07-07', 149.99, 'Completed'),
(8, '2023-07-08', 99.99, 'Completed'),
(9, '2023-07-09', 699.99, 'Pending'),
(10, '2023-07-10', 399.99, 'Completed');

-- Insert data into the 'order_details' table
INSERT INTO order_details (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 799.99),
(1, 10, 1, 99.99),
(2, 2, 1, 499.99),
(2, 10, 1, 49.99),
(3, 3, 1, 299.99),
(4, 4, 1, 199.99),
(4, 10, 1, 149.99),
(5, 8, 1, 129.99),
(6, 5, 1, 149.99),
(6, 6, 1, 149.99),
(7, 5, 1, 149.99),
(8, 6, 1, 99.99),
(9, 7, 1, 699.99),
(10, 9, 1, 399.99);

-- Insert data into the 'reviews' table
INSERT INTO reviews (customer_id, product_id, rating, comment) VALUES
(1, 1, 5, 'Great laptop, very fast and lightweight.'),
(2, 2, 4, 'Good phone but battery life could be better.'),
(3, 3, 4, 'Nice tablet, works well for reading and browsing.'),
(4, 4, 3, 'Decent smartwatch but limited features.'),
(5, 5, 5, 'Amazing headphones, excellent noise cancellation.'),
(6, 6, 4, 'Good speaker, nice sound quality.'),
(7, 7, 5, 'Excellent camera, takes stunning photos.'),
(8, 8, 3, 'Printer works fine but setup was difficult.'),
(9, 9, 5, 'Fantastic monitor, great for gaming.'),
(10, 10, 4, 'Solid keyboard, comfortable to type on.');


-- Insert more data into the 'customers' table
INSERT INTO customers (name, email, phone, address) VALUES
('Jack Martin', 'jack.martin@example.com', '111-222-3333', '808 Redwood St, Anytown, USA'),
('Eve Roberts', 'eve.roberts@example.com', '222-333-4444', '909 Aspen St, Othertown, USA'),
('Michael Clark', 'michael.clark@example.com', '333-444-5555', '1010 Sycamore St, Thistown, USA'),
('Nancy Wright', 'nancy.wright@example.com', '444-555-6666', '1111 Juniper St, Thattown, USA'),
('Oscar Hill', 'oscar.hill@example.com', '555-666-7777', '1212 Poplar St, Anothertown, USA'),
('Paula King', 'paula.king@example.com', '666-777-8888', '1313 Walnut St, Anyothertown, USA'),
('Quincy Lopez', 'quincy.lopez@example.com', '777-888-9999', '1414 Chestnut St, Somewhere, USA'),
('Rachel Adams', 'rachel.adams@example.com', '888-999-0000', '1515 Hickory St, Nowhere, USA'),
('Sam Turner', 'sam.turner@example.com', '999-000-1111', '1616 Beech St, Everywhere, USA'),
('Tina Scott', 'tina.scott@example.com', '000-111-2222', '1717 Hemlock St, Anyplace, USA');

-- Insert more data into the 'products' table
INSERT INTO products (product_name, product_description, price, stock) VALUES
('Gaming Console', 'Next-gen gaming console with 1TB storage', 499.99, 40),
('Smart TV', '50-inch 4K UHD Smart TV', 599.99, 30),
('Router', 'High-speed wireless router', 129.99, 100),
('External Hard Drive', '2TB external hard drive', 89.99, 150),
('Fitness Tracker', 'Fitness tracker with heart rate monitor', 79.99, 200),
('Wireless Mouse', 'Ergonomic wireless mouse', 29.99, 250),
('Webcam', 'HD webcam with microphone', 59.99, 180),
('Projector', 'Portable projector with 1080p resolution', 249.99, 70),
('Drone', 'Drone with 4K camera and GPS', 399.99, 50),
('VR Headset', 'Virtual reality headset with controllers', 349.99, 60);

-- Insert more data into the 'categories' table
INSERT INTO categories (category_name, category_description) VALUES
('Gaming', 'Gaming consoles and accessories'),
('Home Entertainment', 'TVs, projectors, and entertainment devices'),
('Networking', 'Routers and networking equipment'),
('Storage', 'Hard drives and storage devices'),
('Wearables', 'Smartwatches and fitness trackers'),
('Peripherals', 'Computer peripherals and accessories'),
('Drones', 'Drones and aerial photography equipment'),
('Virtual Reality', 'VR headsets and accessories');

-- Insert more data into the 'product_categories' table
INSERT INTO product_categories (product_id, category_id) VALUES
(11, 7),
(12, 8),
(13, 3),
(14, 4),
(15, 5),
(16, 6),
(17, 6),
(18, 8),
(19, 7),
(20, 8);

-- Insert more data into the 'orders' table
INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
(11, '2023-07-11', 599.98, 'Completed'),
(12, '2023-07-12', 749.97, 'Completed'),
(13, '2023-07-13', 259.98, 'Pending'),
(14, '2023-07-14', 219.98, 'Completed'),
(15, '2023-07-15', 79.99, 'Pending'),
(16, '2023-07-16', 149.98, 'Completed'),
(17, '2023-07-17', 99.99, 'Pending'),
(18, '2023-07-18', 1299.97, 'Completed'),
(19, '2023-07-19', 399.99, 'Completed'),
(20, '2023-07-20', 349.99, 'Completed');

-- Insert more data into the 'order_details' table
INSERT INTO order_details (order_id, product_id, quantity, price) VALUES
(11, 12, 1, 599.99),
(11, 14, 1, 89.99),
(12, 13, 1, 129.99),
(12, 20, 1, 349.99),
(12, 18, 1, 249.99),
(13, 15, 1, 79.99),
(13, 16, 1, 29.99),
(14, 17, 1, 59.99),
(14, 19, 1, 399.99),
(15, 15, 1, 79.99),
(16, 16, 2, 29.99),
(17, 17, 1, 59.99),
(18, 18, 2, 249.99),
(18, 19, 1, 399.99),
(19, 20, 1, 349.99),
(20, 11, 1, 499.99);

-- Insert more data into the 'reviews' table
INSERT INTO reviews (customer_id, product_id, rating, comment) VALUES
(11, 11, 5, 'Fantastic gaming console with amazing graphics.'),
(12, 12, 4, 'Great TV but the sound quality could be better.'),
(13, 13, 5, 'Excellent router, very fast and reliable.'),
(14, 14, 4, 'Good hard drive, works well for backups.'),
(15, 15, 3, 'Decent fitness tracker but the app is buggy.'),
(16, 16, 5, 'Great mouse, very comfortable and responsive.'),
(17, 17, 4, 'Good webcam, clear video quality.'),
(18, 18, 5, 'Amazing projector, very bright and clear image.'),
(19, 19, 5, 'Excellent drone, easy to fly and takes great photos.'),
(20, 20, 4, 'Good VR headset but a bit heavy.'); 


-- Additional data for 'customers' table
-- (No additional customers, same customers will continue buying and reviewing products)

-- Additional data for 'products' table
INSERT INTO products (product_name, product_description, price, stock) VALUES
('Smart Light Bulb', 'Wi-Fi enabled smart light bulb', 19.99, 300),
('Electric Kettle', '1.5L electric kettle with temperature control', 39.99, 150),
('Robot Vacuum', 'Robotic vacuum cleaner with mapping technology', 249.99, 100),
('Air Purifier', 'HEPA air purifier for large rooms', 149.99, 80),
('Smart Thermostat', 'Wi-Fi enabled smart thermostat', 199.99, 60);

-- Additional data for 'categories' table
INSERT INTO categories (category_name, category_description) VALUES
('Home Automation', 'Smart home devices and automation systems'),
('Home Appliances', 'Home and kitchen appliances');

-- Additional data for 'product_categories' table
INSERT INTO product_categories (product_id, category_id) VALUES
(21, 1),
(22, 2),
(23, 2),
(24, 2),
(25, 1);

-- Additional data for 'orders' table
INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
(1, '2023-07-21', 69.98, 'Completed'),
(2, '2023-07-22', 249.99, 'Pending'),
(3, '2023-07-23', 289.98, 'Completed'),
(4, '2023-07-24', 169.99, 'Completed'),
(5, '2023-07-25', 199.99, 'Pending'),
(6, '2023-07-26', 39.99, 'Completed'),
(7, '2023-07-27', 219.98, 'Pending'),
(8, '2023-07-28', 59.97, 'Completed'),
(9, '2023-07-29', 499.98, 'Completed'),
(10, '2023-07-30', 199.99, 'Completed');

-- Additional data for 'order_details' table
INSERT INTO order_details (order_id, product_id, quantity, price) VALUES
(21, 21, 3, 19.99),
(21, 16, 1, 29.99),
(22, 23, 1, 249.99),
(23, 24, 1, 149.99),
(23, 25, 1, 199.99),
(24, 22, 1, 39.99),
(24, 23, 1, 249.99),
(25, 25, 1, 199.99),
(26, 22, 1, 39.99),
(27, 21, 1, 19.99),
(27, 22, 1, 39.99),
(28, 21, 1, 19.99),
(28, 16, 1, 29.99),
(29, 24, 2, 149.99),
(30, 25, 1, 199.99);

-- Additional data for 'reviews' table
INSERT INTO reviews (customer_id, product_id, rating, comment) VALUES
(1, 16, 4, 'Good mouse but battery life could be better.'),
(2, 23, 5, 'Excellent vacuum, very convenient.'),
(3, 24, 5, 'Great air purifier, very effective.'),
(4, 21, 4, 'Smart bulb works well, easy to setup.'),
(5, 25, 4, 'Good thermostat but app needs improvement.'),
(6, 22, 3, 'Kettle is good but takes time to heat.'),
(7, 23, 4, 'Vacuum works well but a bit noisy.'),
(8, 21, 5, 'Love these smart bulbs!'),
(9, 24, 4, 'Air purifier is good but a bit bulky.'),
(10, 25, 5, 'Thermostat is great, saves energy.'); 


-- Additional data for 'orders' table with dates in 2024
INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
(1, '2024-01-21', 69.98, 'Completed'),
(2, '2024-02-22', 249.99, 'Pending'),
(3, '2024-03-23', 289.98, 'Completed'),
(4, '2024-04-24', 169.99, 'Completed'),
(5, '2024-05-25', 199.99, 'Pending'),
(6, '2024-06-26', 39.99, 'Completed'),
(7, '2024-07-27', 219.98, 'Pending'),
(8, '2024-08-28', 59.97, 'Completed'),
(9, '2024-09-29', 499.98, 'Completed'),
(10, '2024-10-30', 199.99, 'Completed'),
(1, '2024-11-15', 129.99, 'Completed'),
(2, '2024-12-18', 299.99, 'Completed'),
(3, '2024-11-19', 199.99, 'Completed'),
(4, '2024-12-22', 399.99, 'Pending'),
(5, '2024-01-03', 149.99, 'Completed'),
(6, '2024-02-07', 89.99, 'Pending'),
(7, '2024-03-12', 159.99, 'Completed'),
(8, '2024-04-14', 219.99, 'Completed'),
(9, '2024-05-20', 349.99, 'Pending'),
(10, '2024-06-25', 249.99, 'Completed');

-- Additional data for 'order_details' table
INSERT INTO order_details (order_id, product_id, quantity, price) VALUES
(11, 21, 3, 19.99),
(11, 16, 1, 29.99),
(12, 23, 1, 249.99),
(13, 24, 1, 149.99),
(13, 25, 1, 199.99),
(14, 22, 1, 39.99),
(14, 23, 1, 249.99),
(15, 25, 1, 199.99),
(16, 22, 1, 39.99),
(17, 21, 1, 19.99),
(17, 22, 1, 39.99),
(18, 21, 1, 19.99),
(18, 16, 1, 29.99),
(19, 24, 2, 149.99),
(20, 25, 1, 199.99),
(21, 11, 1, 499.99),
(21, 12, 1, 599.99),
(22, 13, 1, 129.99),
(23, 14, 1, 89.99),
(23, 15, 1, 79.99),
(24, 16, 1, 29.99),
(24, 17, 1, 39.99),
(25, 18, 1, 19.99),
(26, 19, 1, 89.99),
(27, 20, 1, 79.99),
(28, 21, 1, 19.99),
(29, 22, 1, 39.99),
(30, 23, 1, 249.99),
(31, 24, 1, 149.99),
(32, 25, 1, 199.99);


-- Insert data into the 'reviews' table
INSERT INTO reviews (customer_id, product_id, rating, comment) VALUES
(1, 16, 4, 'Good mouse but battery life could be better.'),
(2, 23, 5, 'Excellent vacuum, very convenient.'),
(3, 24, 5, 'Great air purifier, very effective.'),
(4, 21, 4, 'Smart bulb works well, easy to setup.'),
(5, 25, 4, 'Good thermostat but app needs improvement.'),
(6, 22, 3, 'Kettle is good but takes time to heat.'),
(7, 23, 4, 'Vacuum works well but a bit noisy.'),
(8, 21, 5, 'Love these smart bulbs!'),
(9, 24, 4, 'Air purifier is good but a bit bulky.'),
(10, 25, 5, 'Thermostat is great, saves energy.');

INSERT INTO reviews (customer_id, product_id, rating, comment) VALUES
(1, 16, 2, 'Good mouse but battery life could be better.'),
(2, 23, 1, 'Excellent vacuum, very convenient.'),
(3, 24, 2, 'Great air purifier, very effective.'),
(4, 21, 1, 'Smart bulb works well, easy to setup.'),
(5, 25, 2, 'Good thermostat but app needs improvement.'),
(6, 22, 0, 'Kettle is good but takes time to heat.'),
(7, 23, 0, 'Vacuum works well but a bit noisy.'),
(8, 21, 2, 'Love these smart bulbs!'),
(9, 24, 1, 'Air purifier is good but a bit bulky.'),
(10, 25, 1, 'Thermostat is great, saves energy.');
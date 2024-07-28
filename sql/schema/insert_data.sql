-- Insert additional sample data to the database for comprehensive analysis

-- Insert rows into the customers table
INSERT INTO customers (name, email, phone, address) 
VALUES 
('John Doe', 'john.doe@example.com', '123-456-7890', '123 Elm St'), 
('Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak St'),
('Alice Johnson', 'alice.johnson@example.com', '111-222-3333', '789 Pine St'),
('Bob Brown', 'bob.brown@example.com', '444-555-6666', '101 Maple St'),
('Carol White', 'carol.white@example.com', '777-888-9999', '202 Birch St'),
('David Black', 'david.black@example.com', '222-333-4444', '303 Cedar St'),
('Eve Green', 'eve.green@example.com', '555-666-7777', '404 Walnut St'),
('Frank Grey', 'frank.grey@example.com', '888-999-0000', '505 Spruce St'),
('Grace Blue', 'grace.blue@example.com', '123-789-4561', '606 Willow St'),
('Henry Gold', 'henry.gold@example.com', '321-654-9870', '707 Fir St'),
('Ivy Silver', 'ivy.silver@example.com', '654-321-0987', '808 Aspen St'),
('Jack Copper', 'jack.copper@example.com', '987-123-4560', '909 Hickory St'),
('Kelly Bronze', 'kelly.bronze@example.com', '111-999-8888', '1010 Cherry St'),
('Liam Brass', 'liam.brass@example.com', '222-888-7777', '1111 Chestnut St'),
('Mia Steel', 'mia.steel@example.com', '333-777-6666', '1212 Poplar St'),
('Noah Iron', 'noah.iron@example.com', '444-666-5555', '1313 Cypress St'),
('Olivia Zinc', 'olivia.zinc@example.com', '555-555-4444', '1414 Elm St'),
('Paul Tin', 'paul.tin@example.com', '666-444-3333', '1515 Oak St'),
('Quinn Nickel', 'quinn.nickel@example.com', '777-333-2222', '1616 Pine St'),
('Ruth Platinum', 'ruth.platinum@example.com', '888-222-1111', '1717 Maple St'),
('Sam Quartz', 'sam.quartz@example.com', '999-888-7777', '1818 Birch St'),
('Tina Emerald', 'tina.emerald@example.com', '777-666-5555', '1919 Cedar St'),
('Uma Sapphire', 'uma.sapphire@example.com', '666-555-4444', '2020 Walnut St'),
('Victor Jade', 'victor.jade@example.com', '555-444-3333', '2121 Spruce St'),
('Wendy Ruby', 'wendy.ruby@example.com', '444-333-2222', '2222 Willow St'),
('Xander Onyx', 'xander.onyx@example.com', '333-222-1111', '2323 Fir St'),
('Yara Pearl', 'yara.pearl@example.com', '222-111-0000', '2424 Aspen St'),
('Zane Amber', 'zane.amber@example.com', '111-000-9999', '2525 Hickory St');

-- Insert rows into the products table
INSERT INTO products (product_name, product_description, price, stock) 
VALUES 
('Laptop', '15-inch laptop with 8GB RAM', 1200.00, 10), 
('Smartphone', 'Latest model with 128GB storage', 800.00, 25),
('Tablet', '10-inch tablet with 64GB storage', 500.00, 15),
('Headphones', 'Wireless over-ear headphones', 150.00, 30),
('Smartwatch', 'Fitness tracker with heart rate monitor', 200.00, 20),
('Camera', 'Digital camera with 20MP resolution', 300.00, 12),
('Printer', 'Wireless all-in-one printer', 100.00, 8),
('Monitor', '27-inch 4K monitor', 350.00, 6),
('Keyboard', 'Mechanical keyboard with RGB lighting', 80.00, 20),
('Mouse', 'Wireless ergonomic mouse', 40.00, 50),
('Speakers', 'Bluetooth speakers with surround sound', 120.00, 15),
('Router', 'Dual-band Wi-Fi router', 70.00, 10),
('External Hard Drive', '1TB external hard drive', 60.00, 25),
('USB Flash Drive', '128GB USB 3.0 flash drive', 20.00, 100),
('Webcam', '1080p HD webcam', 50.00, 15),
('Microphone', 'USB condenser microphone', 90.00, 10),
('Charger', 'Fast charging USB-C charger', 25.00, 40),
('Smart Home Hub', 'Voice-activated smart home hub', 130.00, 10),
('VR Headset', 'Virtual reality headset with controllers', 400.00, 5),
('Gaming Console', 'Latest gaming console with 1TB storage', 500.00, 7),
('Fitness Tracker', 'Activity tracker with GPS', 150.00, 20),
('Drone', 'Quadcopter with 4K camera', 800.00, 10),
('Projector', 'Portable mini projector', 300.00, 8),
('Smart Light Bulb', 'Wi-Fi enabled LED bulb', 30.00, 50),
('Electric Scooter', 'Foldable electric scooter', 700.00, 5);

-- Insert rows into the categories table
INSERT INTO categories (category_name, category_description) 
VALUES 
('Electronics', 'Devices and gadgets'), 
('Home Appliances', 'Appliances for home use'),
('Computers', 'Desktops, laptops, and accessories'),
('Mobile Devices', 'Smartphones and tablets'),
('Audio', 'Speakers, headphones, and audio equipment'),
('Cameras', 'Digital cameras and accessories'),
('Office Equipment', 'Printers, monitors, and office supplies'),
('Networking', 'Routers, modems, and networking equipment'),
('Storage', 'External hard drives and USB flash drives'),
('Gaming', 'Consoles and gaming accessories'),
('Smart Home', 'Smart home devices and accessories'),
('Wearables', 'Smartwatches and fitness trackers'),
('Accessories', 'Chargers, cables, and other accessories'),
('Peripherals', 'Keyboards, mice, and other peripherals'),
('VR', 'Virtual reality devices and accessories'),
('TV & Home Theater', 'Televisions and home theater systems'),
('Appliances', 'Large and small home appliances'),
('Health & Wellness', 'Health and wellness devices'),
('Automotive', 'Automotive electronics and accessories'),
('Outdoors', 'Outdoor electronics and accessories'),
('Fitness', 'Fitness devices and equipment'),
('Drones', 'Drones and accessories'),
('Projectors', 'Projectors and accessories'),
('Lighting', 'Smart lighting solutions'),
('Transportation', 'Personal transportation devices');

-- Insert rows into the product_categories table
INSERT INTO product_categories (product_id, category_id) 
VALUES 
(1, 1), 
(2, 1),
(3, 4),
(4, 5),
(5, 12),
(6, 6),
(7, 7),
(8, 7),
(9, 13),
(10, 13),
(11, 5),
(12, 8),
(13, 9),
(14, 9),
(15, 13),
(16, 13),
(17, 13),
(18, 11),
(19, 16),
(20, 10),
(21, 12),
(22, 22),
(23, 23),
(24, 24),
(25, 25);

-- Insert rows into the orders table
INSERT INTO orders (customer_id, order_date, total_amount, status) 
VALUES 
(1, '2023-07-01', 2000.00, 'Processing'), 
(2, '2023-07-02', 800.00, 'Shipped'),
(3, '2023-07-03', 1500.00, 'Delivered'),
(4, '2023-07-04', 700.00, 'Processing'),
(5, '2023-07-05', 1200.00, 'Shipped'),
(6, '2023-07-06', 400.00, 'Delivered'),
(7, '2023-07-07', 900.00, 'Processing'),
(8, '2023-07-08', 1300.00, 'Shipped'),
(9, '2023-07-09', 1000.00, 'Delivered'),
(10, '2023-07-10', 600.00, 'Processing'),
(11, '2023-07-11', 500.00, 'Sh')


-- Insert additional rows into the orders table
INSERT INTO orders (customer_id, order_date, total_amount, status) 
VALUES 
(21, '2023-07-21', 2500.00, 'Processing'), 
(22, '2023-07-22', 1800.00, 'Shipped'),
(23, '2023-07-23', 1700.00, 'Delivered'),
(24, '2023-07-24', 1300.00, 'Processing'),
(25, '2023-07-25', 2000.00, 'Shipped'),
(26, '2023-07-26', 900.00, 'Delivered'),
(27, '2023-07-27', 1100.00, 'Processing'),
(28, '2023-07-28', 2300.00, 'Shipped'),
(29, '2023-07-29', 1500.00, 'Delivered'),
(30, '2023-07-30', 700.00, 'Processing');

-- Insert additional rows into the order_details table
INSERT INTO order_details (order_id, product_id, quantity, price) 
VALUES 
(21, 1, 1, 1200.00), 
(21, 4, 3, 300.00),
(21, 6, 1, 300.00),
(22, 2, 2, 800.00),
(22, 5, 2, 200.00),
(22, 8, 1, 350.00),
(23, 3, 1, 500.00),
(23, 9, 3, 80.00),
(23, 13, 2, 20.00),
(24, 7, 2, 100.00),
(24, 11, 2, 120.00),
(24, 14, 5, 20.00),
(25, 15, 1, 50.00),
(25, 18, 1, 130.00),
(25, 20, 2, 500.00),
(26, 10, 1, 40.00),
(26, 12, 1, 70.00),
(26, 19, 1, 400.00),
(27, 4, 3, 150.00),
(27, 8, 1, 350.00),
(27, 16, 1, 90.00),
(28, 3, 2, 500.00),
(28, 6, 2, 300.00),
(28, 9, 5, 80.00),
(29, 10, 1, 40.00),
(29, 12, 1, 70.00),
(29, 19, 1, 400.00),
(30, 7, 1, 100.00),
(30, 13, 4, 20.00),
(30, 17, 2, 50.00);

-- Insert additional rows into the reviews table
INSERT INTO reviews (customer_id, product_id, rating, comment) 
VALUES 
(21, 1, 5, 'Awesome laptop, very fast!'), 
(22, 2, 4, 'Good phone, but battery life could be better.'),
(23, 3, 5, 'Great tablet, perfect for travel.'),
(24, 4, 3, 'Headphones are decent, but uncomfortable after long use.'),
(25, 5, 4, 'Nice smartwatch with many features.'),
(26, 6, 5, 'High-quality camera, great pictures.'),
(27, 7, 4, 'Printer works well, but a bit noisy.'),
(28, 8, 5, 'Excellent monitor, sharp and clear.'),
(29, 9, 5, 'Fantastic keyboard, love the RGB lighting.'),
(30, 10, 3, 'Mouse is okay, but feels cheap.');

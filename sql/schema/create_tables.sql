CREATE TABLE IF NOT EXISTS customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,                            
    email TEXT NOT NULL UNIQUE,
    phone TEXT,                                   
    address TEXT,                                  
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS products (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT, 
    product_name TEXT NOT NULL,                   
    product_description TEXT,                     
    price REAL NOT NULL,                          
    stock INTEGER NOT NULL,                       
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

CREATE TABLE IF NOT EXISTS categories (
    category_id INTEGER PRIMARY KEY AUTOINCREMENT, 
    category_name TEXT NOT NULL,                   
    category_description TEXT,                     
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

CREATE TABLE IF NOT EXISTS product_categories (
    product_id INTEGER,                           
    category_id INTEGER,                          
    PRIMARY KEY (product_id, category_id),        
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE, 
    FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE CASCADE 
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,   
    customer_id INTEGER NOT NULL,                 
    order_date DATE NOT NULL,                     
    total_amount REAL NOT NULL,                   
    status TEXT NOT NULL,                        
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS order_details (
    order_detail_id INTEGER PRIMARY KEY AUTOINCREMENT, 
    order_id INTEGER NOT NULL,                          
    product_id INTEGER NOT NULL,                        
    quantity INTEGER NOT NULL,                         
    price REAL NOT NULL,                               
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE, 
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE 
);

CREATE TABLE IF NOT EXISTS reviews (
    review_id INTEGER PRIMARY KEY AUTOINCREMENT,     
    customer_id INTEGER NOT NULL,                    
    product_id INTEGER NOT NULL,                     
    rating INTEGER CHECK (rating BETWEEN 1 AND 5) NOT NULL, 
    comment TEXT,                                   
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE, 
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE 
);

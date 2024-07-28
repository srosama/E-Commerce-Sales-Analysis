# E-Commerce-Sales-Analysis
![EC(1)](https://github.com/user-attachments/assets/06763fed-ef3e-4c2b-9aae-552b2d5ab293)
## Project Overview

This project involves analyzing sales data from an e-commerce platform to gain insights into various aspects such as customer behavior, product performance, and sales trends. The project includes the following steps:

1. **Creating the Database and Tables**
2. **Inserting Sample Data**
3. **Writing Basic and Advanced Queries**
4. **Creating Views for Common Queries**
5. **Creating Stored Procedures for Reusable Logic**
6. **Creating Triggers for Automating Data Updates**
7. **ETL (Extract, Transform, Load) Process (Soon)**

## Detailed Steps

### 1. Creating the Database and Tables

Create the necessary database and tables by running the SQL scripts in `sql/schema/`:

- `create_tables.sql`: Script to create the required tables.
- `insert_data.sql`: Script to insert sample data into the tables.

### 2. Inserting Sample Data

Insert sample data into the database to work with. This data includes customers, products, categories, orders, order details, and reviews.

### 3. Writing Basic and Advanced Queries

Write queries to analyze the sales data:

- `basic_queries.sql`: Basic queries to find top-selling products, most valuable customers, and monthly sales trends.
- `advanced_queries.sql`: Advanced queries to get detailed insights such as customer reviews and product categories.

### 4. Creating Views for Common Queries

Create views for commonly used queries to simplify data retrieval:

- `create_views.sql`: Script to create views for top-selling products, most valuable customers, monthly sales trends, and customer reviews.

### 5. Creating Stored Procedures for Reusable Logic

Create stored procedures to encapsulate reusable logic:

- `create_procedures.sql`: Script to create stored procedures for getting top-selling products, most valuable customers, monthly sales trends, and customer reviews.

### 6. Creating Triggers for Automating Data Updates

Create triggers to automate data updates, such as updating product stock after an order is placed:

- `create_triggers.sql`: Script to create a trigger for updating product stock.

### 7. ETL (Extract, Transform, Load) Process

Implement an ETL process to extract data from source files, transform it, and load it into the database:

#### Extract

- `extract_data.sh`: Shell script to extract data from source files.

#### Transform

- `transform_data.sql`: SQL script to transform the extracted data into a suitable format for analysis.

#### Load

- `load_data.sql`: SQL script to load the transformed data into the database.

## Scripts

- `run_queries.sh`: Shell script to run all the queries.
- `setup_database.sh`: Shell script to set up the database and insert sample data.
- `cleanup.sh`: Shell script to clean up the database.

## Reports

The `reports/` directory contains SQL scripts for generating various reports:

- `top_selling_products_report.sql`: Report on top-selling products.
- `most_valuable_customers_report.sql`: Report on most valuable customers.
- `monthly_sales_trends_report.sql`: Report on monthly sales trends.
- `customer_reviews_report.sql`: Report on customer reviews.

## How to Run

1. Clone the repository.
2. Navigate to the `ecommerce-sales-analysis` directory.
3. Run `setup_database.sh` to set up the database and insert sample data.
4. Run the ETL process scripts:
   - `etl/extract/extract_data.sh`
   - `etl/transform/transform_data.sql`
   - `etl/load/load_data.sql`
5. Use the SQL scripts in `sql/queries/` to run basic and advanced queries.
6. Use the SQL scripts in `sql/views/`, `sql/procedures/`, and `sql/triggers/` to create views, procedures, and triggers.
7. Generate reports using the scripts in the `reports/` directory.

## Contributions

Feel free to submit pull requests or open issues if you find any bugs or have suggestions for improvements.

## License

This project is licensed under the MIT License.



## SQL Concepts Introduced in the Project
* Querying Data
* Sorting Data
* Filtering Data
    * DISTINCT
    * LIMIT and OFFSET 
    * FETCH
    * WHERE
    * Logical operators 
    * OR operator
    * IN Operator
    * LIKE Operator
    * IS NULL Operator
    * NOT operator
* Conditional Expressions
  * CASE Expression 
* Joining Multiple Tables
  * SQL Aliases 
  * INNER JOIN 
  * LEFT OUTER JOIN 
  * FULL OUTER JOIN
  * CROSS JOIN
  * SELF JOIN
* Aggregate Functions
    * AVG 
    * COUNT 
    * SUM 
    * MAX
    * MIN 
* Grouping Data
    * GROUP BY
    * HAVING
    * GROUPING SETS
    * ROLLUP
    * CUBE
* SET Operators
  * UNION and UNION ALL 
  * INTERSECT 
  * MINUS 
* Subquery
  * Correlated Subquery 
  * EXISTS
  * ALL
  * ANY
* Modifying data
  * INSERT 
  * UPDATE 
  * DELETE 
* Working with table structures
  * CREATE TABLE 
  * ALTER TABLE 
  * DROP TABLE 
  * TRUNCATE TABLE
* Constraints
  * PRIMARY KEY
  * FOREIGN KEY
  * UNIQUE
  * NOT NULL
  * CHECK

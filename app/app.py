import streamlit as st
import pandas as pd
import plotly.express as px
from sqlalchemy import create_engine
import sqlite3

DATABASE_URL = "sqlite:///../ecommerce.db"
engine = create_engine(DATABASE_URL)

def read_data(table_name: str) -> pd.DataFrame:
    conn = sqlite3.connect(DATABASE_URL) 
    try:
        query = f"SELECT * FROM {table_name}"
        df = pd.read_sql_query(query, conn)
    except Exception as e:
        print(f"Error reading data from table {table_name}: {e}")
        df = pd.DataFrame()
    finally:
        conn.close()
    
    return df

# Streamlit app layout
st.title("E-Commerce Sales Analysis")
menu = ["Customer Reviews", "Most Valuable Customers", "Monthly Sales", "Top Selling Products"]
choice = st.sidebar.selectbox("Select Report", menu)

def report_ui():
    if choice == "Customer Reviews":
        st.subheader("Customer Reviews")
        customer_reviews = read_data("customer_reviews")
        if not customer_reviews.empty:
            st.dataframe(customer_reviews)
            
            # Aggregate review counts by rating
            rating_counts = customer_reviews['rating'].value_counts().reset_index()
            rating_counts.columns = ['rating', 'count']
            
            # Add a bar chart for review counts by rating
            fig_bar = px.bar(rating_counts, x='rating', y='count', title="Customer Reviews by Rating")
            st.plotly_chart(fig_bar)
            
            # Add a pie chart for review counts by rating
            fig_pie = px.pie(rating_counts, values='count', names='rating', title="Review Distribution by Rating")
            st.plotly_chart(fig_pie)
            
            # Customer reviews by product
            product_rating_counts = customer_reviews.groupby('product_name')['rating'].mean().reset_index()
            product_rating_counts.columns = ['product_name', 'average_rating']
            fig_product = px.bar(product_rating_counts, x='product_name', y='average_rating', title="Average Rating by Product")
            st.plotly_chart(fig_product)
            
            # Customer reviews by product category
            category_rating_counts = customer_reviews.groupby('category_name')['rating'].mean().reset_index()
            category_rating_counts.columns = ['category_name', 'average_rating']
            fig_category = px.bar(category_rating_counts, x='category_name', y='average_rating', title="Average Rating by Product Category")
            st.plotly_chart(fig_category)
            
            # Customer reviews by rating category (5 stars being "happy")
            customer_reviews['rating_category'] = customer_reviews['rating'].apply(
                lambda x: "Happy" if x == 5 else "Neutral" if x == 3 else "Unhappy"
            )
            rating_category_counts = customer_reviews['rating_category'].value_counts().reset_index()
            rating_category_counts.columns = ['rating_category', 'count']
            fig_rating_category = px.pie(rating_category_counts, values='count', names='rating_category', title="Review Distribution by Rating Category")
            st.plotly_chart(fig_rating_category)
            
    if choice == "Most Valuable Customers":
        st.subheader("Most Valuable Customers")
        most_valuable_customers = read_data("most_valuable_customers")
        if not most_valuable_customers.empty:
            st.dataframe(most_valuable_customers)
            
            # Add a bar chart for most valuable customers
            topCustomersSales = most_valuable_customers.groupby('name')['total_spent'].sum().reset_index()
            topCustomersSales.columns = ['Customers Names', 'Total Sales']
            fig_bar = px.bar(topCustomersSales, x='Customers Names', y='Total Sales', title="Total Sales by Customer")
            st.plotly_chart(fig_bar)

            fig_pie = px.pie(topCustomersSales, values='Total Sales', names='Customers Names', title="Sales Distribution by Customer")
            st.plotly_chart(fig_pie)

            category_sales_counts = most_valuable_customers.groupby('category_name')['total_spent'].sum().reset_index()
            category_sales_counts.columns = ['Category Name', 'Total Sales']
            fig_cat = px.bar(
                category_sales_counts,
                x='Total Sales',
                y='Category Name',
                title="Sales Distribution by Customer",
                color="Category Name",  
                pattern_shape_sequence=[".", "x", "+"]
            )
            st.plotly_chart(fig_cat)
          
    if choice == "Monthly Sales":
        st.subheader("Monthly Sales")
        monthly_sales_trends = read_data("monthly_sales_trends")
        if not monthly_sales_trends.empty:
            monthTrend = monthly_sales_trends.groupby('month')['total_sales'].sum().reset_index()
            monthTrend.columns = ['month', 'total_sales']
            fig = px.area(monthTrend, x="month", y="total_sales", title="Total Sales by Month")
            st.plotly_chart(fig)   
            
    if choice == "Top Selling Products":
        st.subheader("Top Selling Products")
        top_selling_products = read_data("top_selling_products")
        if not top_selling_products.empty:
            st.dataframe(top_selling_products)
            
            top_selling = top_selling_products.groupby('product_name')['total_quantity_sold'].sum().reset_index()
            top_selling.columns = ['product_name', 'total_quantity_sold']
            fig_cat = px.bar(
                top_selling,
                x='total_quantity_sold',
                y='product_name',
                title="Top Selling Products",
                color="product_name",  
                pattern_shape_sequence=[".", "x", "+"]
            )
            st.plotly_chart(fig_cat)
            
            # PIE CHART
            top_selling_by_rev = top_selling_products.groupby('product_name')['TotalRevenue'].sum().reset_index()
            top_selling_by_rev.columns = ['product_name', 'TotalRevenue']
            fig_pie = px.pie(top_selling_by_rev, values='TotalRevenue', names='product_name', title="Revenue Per Product")
            st.plotly_chart(fig_pie)
            
        
if __name__ == "__main__":
    report_ui()

# E-Commerce Sales Analysis
SQL-based analysis was performed on e_commerce transactional data to uncover sales and customer insights.
The results were visualised using Power BI for better decision-making.

---

## 📌 Table of Contents
- [Project Overview](#project-overview)
- [SQL Analysis Performed](#sql-analysis-performed)
- [Tools & Technologies](#tools--technologies)
- [Dataset Description](#dataset-description)
- [Database Design](#database-design)
- [Power BI Dashboard](#power-bi-dashboard)
- [Project Structure](#project-structure)
- [Key Insights](#key-insights)
- [Author](#author)

---

## Project Overview

This project focuses on analyzing **e-commerce sales data** using **PostgreSQL** for data analysis and **Power BI** for data visualization.  
The objective is to extract meaningful business insights related to sales performance, customer behavior, payment trends, and delivery status.
The dataset used in this project is **synthetic but realistic**, created for learning and portfolio purposes.

---

## SQL Analysis Performed

The following **11 SQL analytical queries** were implemented:

1. Total revenue generated  
2. Month-wise revenue analysis  
3. Category-wise revenue
4. Payment method usage analysis
5. City-wise sales performance    
6. Cancelled order count
7. Average order value 
8. Repeated customer count 
9. Delivered vs not delivered orders
10. Top 3 cities with highest sales
11. Month with highest total revenue  

---

## Tools & Technologies

- **Database:** PostgreSQL  
- **Query Language:** SQL  
- **Visualization Tool:** Power BI  
- **Data Source:** CSV file  

---

## Dataset Description

The dataset contains **1000 e-commerce transactions** with the following columns:

- order_id  
- order_date  
- customer_id  
- gender  
- age  
- product_category  
- product_name  
- quantity  
- unit_price  
- total_amount  
- payment_method  
- order_status  
- delivery_status  
- country  
- city  

---

## Database Design

A single table named **`sales`** was created to store transactional data.

```sql
CREATE TABLE sales (
    order_id VARCHAR(10),
    order_date DATE,
    customer_id VARCHAR(10),
    gender VARCHAR(10),
    age INT,
    product_category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    unit_price INT,
    total_amount INT,
    payment_method VARCHAR(20),
    order_status VARCHAR(20),
    delivery_status VARCHAR(20),
    country VARCHAR(20),
    city VARCHAR(50)
);
```
## Power BI Dashboard

An interactive Power BI dashboard was created and connected to the PostgreSQL database to visualize:

I. Total revenue <br>
II. Monthly revenue trend <br>
III. City wise sales contribution <br>
IV. Delivery status distribution <br>
V. Payment method usage <br>


## Project Structure 
```
ecommerce-sales-analysis/
│
├── data/
│   └── ecommerce_sales.csv
│
├── sql/
│   └── ecommerce_analysis_queries.sql
│
├── dashboard/
    ├── dashboard_interactivity.mp4 
│   ├── dashboard_ss.png
│   └── ecommerce_dashboard_analysis.pbix
│
└── README.md
```

## Key Insights

--> Certain product categories contribute a major share of total revenue <br>

--> A few cities account for the highest sales volume <br>

--> Digital payment methods are more popular than Cash on Delivery <br>

--> Repeat customers generate significant revenue contribution <br>

## Author

**Lekanksha Ajeet Jain** <br>
Year: **2025**
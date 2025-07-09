# 📊 Zepto Sales Data Analysis

A SQL-based data analysis project focused on exploring Zepto's product dataset to uncover actionable business insights related to stock levels, pricing efficiency, revenue potential, and customer value.

---

## 🎯 Objective

To explore, clean, and analyze Zepto's product dataset using **MySQL**, with the goal of uncovering key insights that drive business decisions in inventory, pricing, and product performance.

---

## 🧰 Tools Used

- 🛠️ MySQL for querying, data cleaning, and analysis

---

## 🗂️ Project Workflow

### 🔍 Phase 1: Data Exploration & Cleaning
- Queried the full dataset to understand structure and content
- Created a primary key column `sku_id` using `AUTO_INCREMENT`
- Verified row count and checked for missing values
- Identified duplicate product names (possibly due to size/variant differences)
- Classified stock availability using the `outOfStock` column
- Data corrections:
  - Removed a row with zero pricing
  - Converted `mrp` and `discountedSellingPrice` from paise to rupees for accuracy

---

### 📈 Phase 2: Data Analysis & Insights

#### 🏷️ Top 10 Best-Value Products
- Products with the **highest discount %**, highlighting customer-attracting deals

#### 🚫 High MRP but Out of Stock
- Premium items (MRP > ₹300) that are out of stock — signals demand or supply issues

#### 💸 Estimated Revenue by Category
- Potential revenue calculated as `discountedSellingPrice × availableQuantity`

#### 💼 Premium Products with Low Discount
- MRP > ₹500 but minimal discount — full-price items with strong brand value

#### 📉 Top 5 Categories by Avg. Discount
- Helps marketing teams identify **where to push promotions**

#### ⚖️ Best Value per Gram
- Items offering the **best price per gram** — relevant for cost-sensitive customers

#### 📦 Product Weight Segmentation
- Products categorized into `Low`, `Medium`, and `Bulk` based on `weightInGms` — useful for logistics and packaging

#### 🏋️‍♂️ Total Inventory Weight by Category
- Informs warehousing and transportation planning

---

## 💡 Key Business Insights

- ⚠️ **High-discount products** attract users but may reduce profit margins
- 🚚 **Out-of-stock premium items** show supply chain inefficiencies in high-value areas
- 🧮 **Weight-based pricing analysis** supports better bulk discounting strategy
- 🏢 **Inventory weight data** assists in efficient warehouse space and delivery planning

---

## 📌 Project Highlights

- ✅ Real-world B2C e-commerce dataset
- ✅ Hands-on SQL data wrangling and insight extraction
- ✅ Business-focused interpretation of results

---

## 📎 Future Enhancements

- Visualize key insights using Power BI or Tableau
- Build dashboards to track inventory, revenue trends, and product performance
- Add user-defined SQL views or stored procedures

---

## 📬 Connect with Me

- 📧 Email: your.email@example.com
- 🔗 [LinkedIn](https://www.linkedin.com/in/your-profile)
- 🐱 [GitHub](https://github.com/your-username)

---

> 💡 *This project is part of my Data Analyst portfolio showcasing practical SQL skills on real-world data.*


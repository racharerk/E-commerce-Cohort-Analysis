# 📊 E-commerce Cohort Analysis

## 🧠 Objective
Analyze customer retention behavior using cohort analysis to identify drop-off patterns and improve customer lifecycle strategy.

## 📦 Dataset
Source: Brazilian E-commerce Public Dataset (Kaggle)

## 🛠 Tools Used
- SQL (MySQL)
- Excel (Pivot Table & Heatmap)

## 🔍 Process

1. **Data Sampling**
   - Reduced dataset size using LIMIT to avoid performance issues

2. **Data Preparation**
   - Joined orders and customers tables
   - Created cohort groups based on first purchase month

3. **Cohort Analysis**
   - Calculated `month_diff` using SQL
   - Aggregated number of customers per cohort

4. **Visualization**
   - Built pivot table in Excel
   - Calculated retention rate (%)
   - Created heatmap using conditional formatting

## 📊 Cohort Heatmap


<img width="450" height="83" alt="headmap_cohort" src="https://github.com/user-attachments/assets/33661773-7da5-49f3-8375-1135fef223f8" />


## 📊 Key Insights

- Customer retention drops significantly after the first month
- Most customers do not return after their initial purchase
- Retention stabilizes at a very low level in later months
- The business heavily relies on new customer acquisition
- Retention rate after month 1 is below 1%, indicating poor customer stickiness

## 💡 Recommendations

- Implement loyalty programs to improve retention
- Introduce personalized marketing campaigns
- Improve post-purchase engagement strategies

## 📁 Project Structure
ecommerce-cohort-analysis/
│
├── sql/
│ └── cohort_analysis.sql
├── data/
│ └── cohort_data.csv
├── images/
│ └── cohort_heatmap.png
└── README.md

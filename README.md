# SuperMarket Data Analysis

## Project Overview
This project involves a comprehensive analysis of customer demographics and purchasing behaviors for 2Market, aiming to optimize marketing strategies and product offerings. The analysis spans data validation, Excel analysis, SQL querying, and data visualization using Tableau.

## Data Source
The analysis uses datasets containing information about customer demographics, purchasing behavior, and marketing channel effectiveness.

## Analytical Approach

### Data Validation and Cleaning (Excel)
- Checked for duplicate IDs and null values
- Standardized marital status categories and country names
- Corrected formatting issues in income and date fields
- Added an age column based on birth year
- Handled outliers in the age data

### Customer Demographics Analysis (Excel)
- Created pivot tables to compare average ages across marital status
- Used AVERAGEIFS function to calculate average ages within income bands

### Advanced Analysis (SQL)
1. **Customer Purchase Behaviour**
   - Analyzed total product spending by country, product, and marital status
   - Examined spending patterns for households with kids and teens

2. **Most Popular Products Analysis**
   - Ranked product popularity by expenditure within demographic segments
   - Identified universally popular products like 'Liquor'

3. **Advertising Channel Effectiveness**
   - Evaluated marketing channel conversions by country, marital status, and age group
   - Used JOIN operations and subqueries for comprehensive analysis

### Dashboard Design (Tableau)
- Created a comprehensive dashboard visualizing key insights from the analysis

## Key Findings
- Older customers tend to have higher incomes, suggesting potential for targeted luxury product marketing
- Widowed customers have the highest average age (64), while singles are youngest on average
- Most customers do not have kids or teens at home, influencing product interests
- Liquor is the most popular product across most customer demographics
- Advertising channel effectiveness varies by country and demographic, with Instagram leading globally

## Recommendations
- Improve data collection methods for better data integrity (e.g., dropdown menus for Year of Birth and Marital Status)
- Explore product-specific marketing strategies, particularly for high-earning age groups
- Refine customer engagement techniques across different advertising platforms
- Analyze underperformance in certain regions or demographic groups for growth opportunities

## Files in the Repository
- `ERD.png`: Entity-Relationship Diagram
- `2M_SQL Code.sql`: SQL queries for advanced analysis
- `2M_Dashboard.twbx`: Tableau workbook with the final dashboard
- `Technical Report.pdf`: Detailed report of the analysis and findings

## How to Use
- Review the data cleaning process in the Excel file
- Examine the supermarket_erd.png to understand the database structure
- Run the SQL queries in your preferred database system
- Open the Tableau workbook to interact with the dashboard
- Read the detailed report for comprehensive insights and recommendations

## Future Work
- Conduct time series analysis on purchasing trends
- Implement machine learning models for customer segmentation and product recommendation
- Integrate real-time data for dynamic analysis and decision-making

## Contact
For any questions or feedback, please reach out.

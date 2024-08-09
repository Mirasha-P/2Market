**1.0 INTRODUCTION**

2Market aims to optimize marketing strategies and product offerings by analysing customer demographics and purchasing behaviours. This initiative is driven by the desire to enhance customer satisfaction and profitability through data-driven insights into the effectiveness of various marketing channels and the popularity of products across different customer segments. 

**2.0 ANALYTICAL APPROACH**

The basis of my data analysis was a series of questions designed to identify the complex nature of consumer behaviour, the impact of marketing efforts and popular products across diverse demographic segments.
Informed assumptions were made throughout the project.

**2.1 Assumptions**

- Maximum Age of humans considered as 100 years.

- Marital Status “YOLO” and “ALONE” considered as single, “'Together' and 'Absurd' to 'Married’.

**2.2 Data Validation**

- Unique Identifiers: Used Excel's conditional formatting to detect duplicate IDs, to ensure each there are no duplicates. Used as the primary key in SQL.

- Null Values: Checked for blanks using CTRL+G. None found.

- Marital Status: Merged similar marital statuses for uniform categorization using FIND&REPLACE.

- Incorrect Formatting: Change text-based income entries into numeric values using number formatting and date was in text format hence change to date format using TEXT and TEXTSPLIT.

- Country Name Standardization: Ensured consistency in country names to maintain geographical integrity for the analysis, using FIND&REPLACE.

- Age Column: A new column added to show the age of the customers using (YEAR (NOW ()) formula.

- Outliers – Age IQR was -18 where lower and upper bound was 73 and -45.5 respectively. However according to assumptions made ID 11004, 1150 & 7829 was disregarded from the analysis.

**2.3 Customer Demographics Analysis with Excel**

- Pivot Tables: Created to compare average ages across marital status, revealing behavioural trends.

- AVERAGEIFS Function: Calculated average ages within income bands to study the financial influence on consumer behaviour.

**2.4 Further analysis in SQL**

I deepened my analysis of customer purchases and marketing efficacy through SQL, constructing a database as depicted in the ERD. Tables were formed using CREATE TABLE scripts, with carefully chosen column names and data constraints to maintain data quality.

**2.4.1 Customer Purchase Behaviour**

I utilized aggregation functions like SUM() and arithmetic operations to calculate total product spending, creating aliases for clarity. GROUP BY and ORDER BY helped isolate data.
By Country: Aggregated spending across products to identify target markets for focused strategies.

![image](https://github.com/user-attachments/assets/1f38773b-e3cd-40e0-946c-758aecb12ab7)
![image](https://github.com/user-attachments/assets/72c39724-9f32-475e-8a4e-7238682572fc)

By Product and Country: Segmented by product to highlight how much each country spent on different products and inform supply chain decisions.

By Product and Marital Status: Analysed to tailor marketing strategies to marital segments.

With Kids and Teens at Home: Examined to understand how family dynamics' influence on spending.


**2.4.2 Most Popular Products Analysis**

Combined Aggregate functions (SUM & GREATEST) with CASE statement followed by WHEN and THEN clauses to rank product popularity by expenditure within demographic segments.

Marital Status: Identified 'Liquor' as universally popular, suggesting its strategic importance.

![image](https://github.com/user-attachments/assets/7ed5718d-91c7-46a2-b333-9d9c66a25453)

Country , Kids or Teenagers: Assessed to provide insights into regional and household-based purchasing trends.

**2.4.3 Advertising Channel Effectiveness**

Inner Join used to combine marketing_data and ad_data tables also used SUM to aggregate marketing channel conversions. Effectiveness also calculated as a percentage to total lead conversions to get a clearer picture.

By Country: Evaluated social media conversions against total conversions to determine effective platforms.

![image](https://github.com/user-attachments/assets/0b3ac295-ed74-4a06-8d8a-ea7dd45e75f9)
![image](https://github.com/user-attachments/assets/a497d86a-0ff1-4574-81e3-94b5e2fbae22)

By Marital Status: Aggregated conversions by status to pinpoint resonant advertising channels.

By Age Group: Categorized customers via subqueries and ranked advertising effectiveness by age segment using WHEN clause. Subquery was simplified using a WITH clause.

**3.0 DASHBOARD DESIGN AND DEVELOPMENT**

Using Tableau below Dashboard was created.

![image](https://github.com/user-attachments/assets/b1055e1d-e351-4f81-b0b4-684e4ff4a00e)


**4.0 PATTERNS, TRENDS, AND INSIGHTS**
- Older customers tend to have higher incomes, suggesting a targeted approach for luxury or premium product marketing.
- Widowed customers have the highest average age at 64, while singles are the youngest on average. Marketing strategies could be customized to cater to the specific lifestyle needs of these groups.
- Most customers do not have kids or teens at home, which may influence the types of products they are interested in or the time they have available for shopping.
- Liquor stands out as the most popular product across most customer demographics, indicating its potential as a key product for promotions and special offers.
- Advertising channel effectiveness varies by country and demographic, with Instagram leading in conversions globally but other channels like Twitter and Bulk mail performing best in specific regions or demographics.

**5.0 RECOMMENDATION**

Data source improvement: For better data integrity, use dropdown menus for Year of Birth and Marital Status, and pre-set ranges for Income, to standardize inputs and streamline data inputs.

**6.0 CONCLUSION**

To optimize 2Market's strategies, further exploration is recommended in the areas of product-specific marketing, particularly for high-earning age groups, and in refining customer engagement techniques across varying advertising platforms. Analysing the underperformance in certain regions or demographic groups could also unlock potential growth opportunities.

> This Analysis was conducted as a part of LSE Data Analytics Career Acclerator Programme.

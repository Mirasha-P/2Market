# 2Market

1.0 INTRODUCTION
2Market aims to optimize marketing strategies and product offerings by analysing customer demographics and purchasing behaviours. This initiative is driven by the desire to enhance customer satisfaction and profitability through data-driven insights into the effectiveness of various marketing channels and the popularity of products across different customer segments. Questions for the team include: What recent trends have influenced customer engagement? Which metrics are prioritized for marketing success?
2.0 ANALYTICAL APPROACH
The basis of my data analysis was a series of questions designed to identify the complex nature of consumer behaviour, the impact of marketing efforts and popular products across diverse demographic segments.
Informed assumptions were made throughout the project.
2.1 Assumptions
-
Maximum Age of humans considered as 100 years.
-
Marital Status “YOLO” and “ALONE” considered as single, “'Together' and 'Absurd' to 'Married’.
2.2 Data Validation
Unique Identifiers: Used Excel's conditional formatting to detect duplicate IDs, to ensure each there are no duplicates. Used as the primary key in SQL.
Null Values: Checked for blanks using CTRL+G. None found.
Marital Status: Merged similar marital statuses for uniform categorization using FIND&REPLACE.
Incorrect Formatting: Change text-based income entries into numeric values using number formatting and date was in text format hence change to date format using TEXT and TEXTSPLIT.
Country Name Standardization: Ensured consistency in country names to maintain geographical integrity for the analysis, using FIND&REPLACE.
Age Column: A new column added to show the age of the customers using (YEAR (NOW ()) formula.
Outliers – Age IQR was -18 where lower and upper bound was 73 and -45.5 respectively. However according to assumptions made ID 11004, 1150 & 7829 was disregarded from the analysis.
2.3 Customer Demographics Analysis with Excel
Pivot Tables: Created to compare average ages across marital status, revealing behavioural trends.
AVERAGEIFS Function: Calculated average ages within income bands to study the financial influence on consumer behaviour.
2.4 Further analysis in SQL
I deepened my analysis of customer purchases and marketing efficacy through SQL, constructing a database as depicted in the ERD. Tables were formed using CREATE TABLE scripts, with carefully chosen column names and data constraints to maintain data quality.
2.4.1 Customer Purchase Behaviour
I utilized aggregation functions like SUM() and arithmetic operations to calculate total product spending, creating aliases for clarity. GROUP BY and ORDER BY helped isolate data.
By Country: Aggregated spending across products to identify target markets for focused strategies.
By Product and Country: Segmented by product to highlight how much each country spent on different products and inform supply chain decisions.
By Product and Marital Status: Analysed to tailor marketing strategies to marital segments.
With Kids and Teens at Home: Examined to understand how family dynamics' influence on spending.
2.4.2 Most Popular Products Analysis
Combined Aggregate functions (SUM & GREATEST) with CASE statement followed by WHEN and THEN clauses to rank product popularity by expenditure within demographic segments.
Marital Status: Identified 'Liquor' as universally popular, suggesting its strategic importance.
Country , Kids or Teenagers: Assessed to provide insights into regional and household-based purchasing trends.
Figure 1 Pivot Table
Figure 2 AVERAGEIFS function
2.4.3 Advertising Channel Effectiveness
Inner Join used to combine marketing_data and ad_data tables also used SUM to aggregate marketing channel conversions. Effectiveness also calculated as a percentage to total lead conversions to get a clearer picture.
By Country: Evaluated social media conversions against total conversions to determine effective platforms.
By Marital Status: Aggregated conversions by status to pinpoint resonant advertising channels.
By Age Group: Categorized customers via subqueries and ranked advertising effectiveness by age segment using WHEN clause. Subquery was simplified using a WITH clause.
3.0 DASHBOARD DESIGN AND DEVELOPMENT
Before developing the dashboard, cleaned CSV files imported, and data connection changed to an extract. Joined marketing_data and ad_data using a left join. SQL query results were joined as many to many connections.
Pivoted columns created to segregate products and amounts spent on products.
3.1 Visualisation Type
Each visual element, such as maps for geographic data and bar charts for comparative analysis, was chosen for its ability to present data intuitively. For instance, bubble charts were used to show sales by product, for their ability to express volume through size making in very clear and understandable.
Horizontal Bar charts showing spending patterns by country and family composition which can depict detailed category labels and direct comparisons across demographics. The colour-coding was used to make it easy for the users to distinguish data segments quickly.
Histograms was used to show age distribution and marital status comparisons detailing the data's granularity while remaining user-friendly.
Scatter plots interpret the relationship between age and income; Point density and colour intensity signal data clusters, suggesting where marketing efforts should aim at for maximum impact.
3.2 Colour, Font & Size
A consistent colour palette used to have a uniqueness between data points without overwhelming the viewer. Colours used to distinguish segments quickly and easily for the viewer ensuring the dashboard remains accessible to those with colour vision deficiencies. Graph titles are visualized in same font size over the Dashboard while axis data and labels are in same size over the Dashboard.
3.3 Layout
Vertical and horizontal containers used to structure the flow of information. The automatic device sizing ensures that layout translates effectively across different screen sizes, ensuring the dashboard is equally usable on desktops and mobile devices.
3.4 Additional Design Choices
Dashboard fading and the removal of gridlines offer a minimalist aesthetic that focuses the user’s attention on the data itself. Text elements and images are incorporated to provide context without detracting from the data visualizations.
4.0 PATTERNS, TRENDS, AND INSIGHTS
•
Older customers tend to have higher incomes, suggesting a targeted approach for luxury or premium product marketing.
•
Widowed customers have the highest average age at 64, while singles are the youngest on average. Marketing strategies could be customized to cater to the specific lifestyle needs of these groups.
•
Most customers do not have kids or teens at home, which may influence the types of products they are interested in or the time they have available for shopping.
•
Liquor stands out as the most popular product across most customer demographics, indicating its potential as a key product for promotions and special offers.
•
Advertising channel effectiveness varies by country and demographic, with Instagram leading in conversions globally but other channels like Twitter and Bulk mail performing best in specific regions or demographics.
5.0 RECOMMENDATION
Data source improvement: For better data integrity, use dropdown menus for Year of Birth and Marital Status, and pre-set ranges for Income, to standardize inputs and streamline data inputs.
6.0 CONCLUSION
To optimize 2Market's strategies, further exploration is recommended in the areas of product-specific marketing, particularly for high-earning age groups, and in refining customer engagement techniques across varying advertising platforms. Analysing the underperformance in certain regions or demographic groups could also unlock potential growth opportunities.
7.0 APPENDIX
2.5 SQL Table creation marketing_data and ad_data was created using the below SQL script and for data validation purposes a primary key assigned (id) and table constraints were created.
2.6 Customer Purchase Behaviour
2.6.1 The total spends per country.
2.6.2 The total spends per product by country.
2.6.3 The total spends per product based on Marital Status.
2.6.4 Total Spend Per Product Based on The Number of Kids customer has.
2.6.5 Total Spend Per Product Based on The Number of Teenagers customer has
2.7 Most Popular Product
2.7.1 Most Popular Product Based on Marital Status
2.7.2 Most popular Product based on country.
2.7.3 Most popular based Product on number of children in the household
2.7.4 Most popular based on number of teens in the household
2.8 Marketing Channel Effectiveness
2.8.1 Most effective marketing platform method of advertising in each country
2.8.2 Marketing channel effectiveness as a percentage by country
2.8.3 Most effective social media platform method of advertising in each country
2.8.4 Most effective marketing platform method of advertising based marital Status.
2.8.5 Most effective social media by marital status as a percentage
2.8.6 Most effective method of advertising based on age groups.
2.8.7 Most effective social media channel in terms of amount spent per product type per country

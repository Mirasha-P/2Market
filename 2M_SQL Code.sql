CREATE TABLE marketing_data(
id BIGSERIAL PRIMARY KEY,
year_birth numeric (5),
age numeric (2),
education varchar(50),
marital_status char (10),
income NUMERICC (10,2),
kidhome numeric (2),
teenhome numeric (2),
dt_customer date,
recency numeric (5),
amt_liq numeric (10),
amt_Vege numeric (10),
amt_meat numeric (10),
amt_fish numeric (10),
amt_choc numeric (10),
amt_commo numeric (10),
num_deals numeric (10),
num_online numeric (10),
num_instore numeric (10),
num_web_visits numeric (10),
offer_accept numeric (2),
complain numeric (2),
country char (50),
ad_conversion numeric (5));

SELECT * FROM public.marketing_data

CREATE TABLE ad_data(
	id bigserial PRIMARY KEY,
	bulkmail numeric (2),
	twitter numeric (2),
	instagram numeric (2),
	facebook numeric (2),
	brochure numeric (2));

SELECT * FROM public.ad_data

SELECT country, SUM(amt_liq+amt_vege+amt_meat+amt_fish+amt_choc+amt_commo) AS Total_Spend
FROM public.marketing_data
GROUP by country;

SELECT country, 
		SUM(amt_liq) AS Liquor,
		SUM(amt_vege) AS Vegetables,
		SUM(amt_meat) AS Meat,
		SUM(amt_fish) AS Fish,
		SUM(amt_choc) AS Chocolate,
		SUM(amt_commo)AS commodities
FROM public.marketing_data
GROUP by country;

SELECT 
    Marital_Status,
    CASE 
        WHEN SUM(amt_liq) >= GREATEST(SUM(amt_vege), SUM(amt_meat), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Liquor'
        WHEN SUM(amt_vege) >= GREATEST(SUM(amt_liq), SUM(amt_meat), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Vegetables'
        WHEN SUM(amt_meat) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Meat'
        WHEN SUM(amt_fish) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_meat), SUM(amt_choc), SUM(amt_commo)) THEN 'Fish'
        WHEN SUM(amt_choc) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_meat), SUM(amt_fish), SUM(amt_commo)) THEN 'Chocolate'
        ELSE 'Commodities'
    END AS Most_Popular_Product
FROM public.marketing_data
GROUP BY Marital_Status;

SELECT 
    Country,
    CASE 
        WHEN SUM(amt_liq) >= GREATEST(SUM(amt_vege), SUM(amt_meat), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Liquor'
        WHEN SUM(amt_vege) >= GREATEST(SUM(amt_liq), SUM(amt_meat), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Vegetables'
        WHEN SUM(amt_meat) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Meat'
        WHEN SUM(amt_fish) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_meat), SUM(amt_choc), SUM(amt_commo)) THEN 'Fish'
        WHEN SUM(amt_choc) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_meat), SUM(amt_fish), SUM(amt_commo)) THEN 'Chocolate'
        ELSE 'Commodities'
    END AS Most_Popular_Product
FROM public.marketing_data
GROUP BY Country;

SELECT 
    Kidhome AS number_of_kids,
    CASE 
        WHEN SUM(amt_liq) >= GREATEST(SUM(amt_vege), SUM(amt_meat), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Liquor'
        WHEN SUM(amt_vege) >= GREATEST(SUM(amt_liq), SUM(amt_meat), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Vegetables'
        WHEN SUM(amt_meat) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Meat'
        WHEN SUM(amt_fish) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_meat), SUM(amt_choc), SUM(amt_commo)) THEN 'Fish'
        WHEN SUM(amt_choc) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_meat), SUM(amt_fish), SUM(amt_commo)) THEN 'Chocolate'
        ELSE 'Commodities'
    END AS Most_Popular_Product
FROM public.marketing_data
GROUP BY number_of_kids;	

SELECT 
    teenhome AS number_of_teenage,
    CASE 
        WHEN SUM(amt_liq) >= GREATEST(SUM(amt_vege), SUM(amt_meat), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Liquor'
        WHEN SUM(amt_vege) >= GREATEST(SUM(amt_liq), SUM(amt_meat), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Vegetables'
        WHEN SUM(amt_meat) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Meat'
        WHEN SUM(amt_fish) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_meat), SUM(amt_choc), SUM(amt_commo)) THEN 'Fish'
        WHEN SUM(amt_choc) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_meat), SUM(amt_fish), SUM(amt_commo)) THEN 'Chocolate'
        ELSE 'Commodities'
    END AS Most_Popular_Product
FROM public.marketing_data
GROUP BY number_of_teenage;	

	
	
SELECT AGE,
CASE
	WHEN SUM(amt_liq)>= GREATEST(SUM(amt_vege),SUM(amt_meat),SUM(amt_fish),SUM(amt_choc),SUM(amt_commo)) THEN 'Liqour'
	WHEN SUM(amt_vege)>= GREATEST(SUM(amt_liq),SUM(amt_meat),SUM(amt_fish),SUM(amt_choc),SUM(amt_commo)) THEN 'Vegetables'
	WHEN SUM(amt_meat) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_fish), SUM(amt_choc), SUM(amt_commo)) THEN 'Meat'
    WHEN SUM(amt_fish) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_meat), SUM(amt_choc), SUM(amt_commo)) THEN 'Fish'
    WHEN SUM(amt_choc) >= GREATEST(SUM(amt_liq), SUM(amt_vege), SUM(amt_meat), SUM(amt_fish), SUM(amt_commo)) THEN 'Chocolate'
	ELSE 'Commodities'
	END AS Most_popular_product
FROM public.marketing_data
GROUP BY Age
ORDER BY Age;
	
	
	
	





























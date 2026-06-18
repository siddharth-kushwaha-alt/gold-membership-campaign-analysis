create schema campaign;
use campaign;
SELECT COUNT(*) AS Total_Customers
FROM superstore_campaign;


select * from superstore_campaign;

SELECT Id, COUNT(*)
FROM superstore_campaign
GROUP BY Id
HAVING COUNT(*) > 1;


SELECT COUNT(*) AS Missing_Income
FROM superstore_campaign
WHERE Income IS NULL;


SELECT
ROUND(AVG(Response)*100,2) AS Acceptance_rate
FROM superstore_campaign;


SELECT
Id,
Income,
(
MntWines +
MntFruits +
MntMeatProducts +
MntFishProducts +
MntSweetProducts +
MntGoldProds
) AS Total_Spending
FROM superstore_campaign
ORDER BY Total_Spending DESC
LIMIT 10;


SELECT
Education,
ROUND(AVG(Response)*100,2) AS Acceptance_Rate
FROM superstore_campaign
GROUP BY Education
ORDER BY Acceptance_Rate DESC;


SELECT
Marital_Status,
ROUND(AVG(Response)*100,2) AS Acceptance_Rate
FROM superstore_campaign
GROUP BY Marital_Status
ORDER BY Acceptance_Rate DESC;


SELECT
Response,
ROUND(AVG(Income),2) AS Avg_Income
FROM superstore_campaign
GROUP BY Response;


SELECT
Response,
ROUND(
AVG(
MntWines +
MntFruits +
MntMeatProducts +
MntFishProducts +
MntSweetProducts +
MntGoldProds
),2
) AS Avg_Total_Spending
FROM superstore_campaign
GROUP BY Response;


SELECT
Response,
ROUND(AVG(Recency),2) AS Avg_Recency
FROM superstore_campaign
GROUP BY Response;


SELECT
SUM(MntWines) AS Wines,
SUM(MntFruits) AS Fruits,
SUM(MntMeatProducts) AS Meat,
SUM(MntFishProducts) AS Fish,
SUM(MntSweetProducts) AS Sweets,
SUM(MntGoldProds) AS Gold
FROM superstore_campaign;



SELECT
Response,
AVG(MntWines) AS Avg_Wines,
AVG(MntMeatProducts) AS Avg_Meat,
AVG(MntFishProducts) AS Avg_Fish,
AVG(MntGoldProds) AS Avg_Gold
FROM superstore_campaign
GROUP BY Response;

SELECT
Response,
AVG(NumDealsPurchases) AS Avg_Deals
FROM superstore_campaign
GROUP BY Response;		


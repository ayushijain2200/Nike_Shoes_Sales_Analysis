--Total Revenue
SELECT SUM(Price * Sales) AS Total_Revenue
FROM nike_shoes_dataset;

--Top 5 Products
SELECT top 5 Product_Name, SUM(Price * Sales) AS Revenue
FROM nike_shoes_dataset
GROUP BY Product_Name
ORDER BY Revenue DESC;

--Category-wise Sales
SELECT Category, SUM(Sales) AS Total_Sales
FROM nike_shoes_dataset
GROUP BY Category;

--Region-wise Revenue
SELECT Region, SUM(Price * Sales) AS Revenue
FROM nike_shoes_dataset
GROUP BY Region;

--Discount Impact
SELECT Discount, AVG(Sales) AS Avg_Sales
FROM nike_shoes_dataset
GROUP BY Discount
ORDER BY Discount;

--Monthly Trend
SELECT FORMAT(Date, 'yyyy-MM') AS Month,
       SUM(Price * Sales) AS Revenue
FROM nike_shoes_dataset
GROUP BY FORMAT(Date, 'yyyy-MM')
ORDER BY Month;
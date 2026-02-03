- Total Sales KPI

SELECT SUM(c2) AS Total_Sales
FROM Details;

- Category Wise Sales

SELECT c5 AS Category, SUM(c2) AS Total_Sales
FROM Details
GROUP BY c5;

- Category Wise Profit

SELECT c5 AS Category, SUM(c3) AS Total_Profit
FROM Details
GROUP BY c5;

- State Wise Sales (JOIN Example)

SELECT o.c4 AS State, SUM(d.c2) AS Total_Sales
FROM Orders o
JOIN Details d
ON o.c1 = d.c1
GROUP BY o.c4
ORDER BY Total_Sales DESC;

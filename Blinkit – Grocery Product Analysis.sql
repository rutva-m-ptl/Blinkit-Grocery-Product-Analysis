create database blinkit;

use blinkit;

CREATE TABLE Grocery_Store (
    Item_Identifier VARCHAR(255),
    Item_Weight DECIMAL(10, 4),
    Item_Fat_Content VARCHAR(255),
    Item_Visibility DECIMAL(10, 6),
    Item_Type VARCHAR(255),
    Item_MRP DECIMAL(10, 4),
    Outlet_Identifier VARCHAR(255),
    Outlet_Establishment_Year INT,
    Outlet_Size VARCHAR(255),
    Outlet_Location_Type VARCHAR(255),
    Outlet_Type VARCHAR(255),
    Item_Outlet_Sales DECIMAL(12, 4)
);

select * from Grocery_Store;

-- 1. Show all Item_Identifier
SELECT Item_Identifier FROM Grocery_Store;

-- 2. Count of total Item_Identifier
SELECT COUNT(Item_Identifier) FROM Grocery_Store;

-- 3. Maximum Item Weight
SELECT MAX(Item_Weight) FROM Grocery_Store;

-- 4. Minimum Item Weight
SELECT MIN(Item_Weight) FROM Grocery_Store;

-- 5. Average Item_Weight
SELECT AVG(Item_Weight) FROM Grocery_Store;

-- 6. Count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat
SELECT COUNT(Item_Fat_Content) FROM Grocery_Store WHERE Item_Fat_Content = 'Low Fat';

-- 7. Count of Item_Fat_Content WHERE Item_Fat_Content is Regular
SELECT COUNT(Item_Fat_Content) FROM Grocery_Store WHERE Item_Fat_Content = 'Regular';

-- 8. Maximum Item_MRP
SELECT MAX(Item_MRP) FROM Grocery_Store;

-- 9. Minimum Item_MRP
SELECT MIN(Item_MRP) FROM Grocery_Store;

-- 10. Item_Identifier, Item_Fat_Content, Item_Type, Item_MRP where Item_MRP > 200
SELECT Item_Identifier, Item_Fat_Content, Item_Type, Item_MRP 
FROM Grocery_Store 
WHERE Item_MRP > 200;

-- 11. Maximum Item_MRP WHERE Item_Fat_Content is Low Fat
SELECT MAX(Item_MRP) FROM Grocery_Store WHERE Item_Fat_Content = 'Low Fat';

-- 12. Minimum Item_MRP whose Item_Fat_Content is Low Fat
SELECT MIN(Item_MRP) FROM Grocery_Store WHERE Item_Fat_Content = 'Low Fat';

-- 13. ALL DATA WHERE item MRP is BETWEEN 50 to 100
SELECT * FROM Grocery_Store WHERE Item_MRP BETWEEN 50 AND 100;

-- 14. ALL UNIQUE value of Item_Fat_Content
SELECT DISTINCT Item_Fat_Content FROM Grocery_Store;

-- 15. ALL UNIQUE value of Item_Type
SELECT DISTINCT Item_Type FROM Grocery_Store;

-- 16. ALL DATA in descending ORDER by Item MRP
SELECT * FROM Grocery_Store ORDER BY Item_MRP DESC;

-- 17. ALL DATA in ascending ORDER by Item_Outlet_Sales
SELECT * FROM Grocery_Store ORDER BY Item_Outlet_Sales ASC;

-- 18. ALL DATA in ascending by Item_Type
SELECT * FROM Grocery_Store ORDER BY Item_Type ASC;

-- 19. DATA of item_type dairy & Meat
SELECT * FROM Grocery_Store WHERE Item_Type IN ('Dairy', 'Meat');

-- 20. ALL UNIQUE value of Outlet_Size
SELECT DISTINCT Outlet_Size FROM Grocery_Store;

-- 21. ALL UNIQUE value of Outlet_Location_Type
SELECT DISTINCT Outlet_Location_Type FROM Grocery_Store;

-- 22. ALL UNIQUE value of Outlet_Type
SELECT DISTINCT Outlet_Type FROM Grocery_Store;

-- 23. Count of number of items by Item_Type ordered descending
SELECT Item_Type, COUNT(*) AS Item_Count 
FROM Grocery_Store 
GROUP BY Item_Type 
ORDER BY Item_Count DESC;

-- 24. Count of number of items by Outlet_Size ordered ascending
SELECT Outlet_Size, COUNT(*) AS Item_Count 
FROM Grocery_Store 
GROUP BY Outlet_Size 
ORDER BY Item_Count ASC;

-- 25. Count of number of items by Outlet_Type ordered descending
SELECT Outlet_Type, COUNT(*) AS Item_Count 
FROM Grocery_Store 
GROUP BY Outlet_Type 
ORDER BY Item_Count DESC;

-- 26. Count of items by Outlet_Location_Type ordered descending
SELECT Outlet_Location_Type, COUNT(*) AS Item_Count 
FROM Grocery_Store 
GROUP BY Outlet_Location_Type 
ORDER BY Item_Count DESC;

-- 27. Maximum MRP by Item_Type
SELECT Item_Type, MAX(Item_MRP) FROM Grocery_Store GROUP BY Item_Type;

-- 28. Minimum MRP by Item_Type
SELECT Item_Type, MIN(Item_MRP) FROM Grocery_Store GROUP BY Item_Type;

-- 29. Minimum MRP by Outlet_Establishment_Year ordered descending
SELECT Outlet_Establishment_Year, MIN(Item_MRP) 
FROM Grocery_Store 
GROUP BY Outlet_Establishment_Year 
ORDER BY Outlet_Establishment_Year DESC;

-- 30. Maximum MRP by Outlet_Establishment_Year ordered descending
SELECT Outlet_Establishment_Year, MAX(Item_MRP) 
FROM Grocery_Store 
GROUP BY Outlet_Establishment_Year 
ORDER BY Outlet_Establishment_Year DESC;

-- 31. Average MRP by Outlet_Size ordered descending
SELECT Outlet_Size, AVG(Item_MRP) AS Avg_MRP 
FROM Grocery_Store 
GROUP BY Outlet_Size 
ORDER BY Avg_MRP DESC;

-- 32. Average MRP by Outlet_Type ordered ascending
SELECT Outlet_Type, AVG(Item_MRP) AS Avg_MRP 
FROM Grocery_Store 
GROUP BY Outlet_Type 
ORDER BY Avg_MRP ASC;

-- 33. Maximum MRP by Outlet_Type
SELECT Outlet_Type, MAX(Item_MRP) FROM Grocery_Store GROUP BY Outlet_Type;

-- 34. Maximum Item_Weight by Item_Type
SELECT Item_Type, MAX(Item_Weight) FROM Grocery_Store GROUP BY Item_Type;

-- 35. Maximum Item_Weight by Outlet_Establishment_Year
SELECT Outlet_Establishment_Year, MAX(Item_Weight) FROM Grocery_Store GROUP BY Outlet_Establishment_Year;

-- 36. Minimum Item_Weight by Outlet_Type
SELECT Outlet_Type, MIN(Item_Weight) FROM Grocery_Store GROUP BY Outlet_Type;

-- 37. Average Item_Weight by Outlet_Location_Type descending
SELECT Outlet_Location_Type, AVG(Item_Weight) AS Avg_Weight 
FROM Grocery_Store 
GROUP BY Outlet_Location_Type 
ORDER BY Avg_Weight DESC;

-- 38. Maximum Item_Outlet_Sales by Item_Type
SELECT Item_Type, MAX(Item_Outlet_Sales) FROM Grocery_Store GROUP BY Item_Type;

-- 39. Minimum Item_Outlet_Sales by Item_Type
SELECT Item_Type, MIN(Item_Outlet_Sales) FROM Grocery_Store GROUP BY Item_Type;

-- 40. Minimum Item_Outlet_Sales by Outlet_Establishment_Year
SELECT Outlet_Establishment_Year, MIN(Item_Outlet_Sales) FROM Grocery_Store GROUP BY Outlet_Establishment_Year;

-- 41. Maximum Item_Outlet_Sales by Outlet_Establishment_Year ordered descending
SELECT Outlet_Establishment_Year, MAX(Item_Outlet_Sales) 
FROM Grocery_Store 
GROUP BY Outlet_Establishment_Year 
ORDER BY MAX(Item_Outlet_Sales) DESC;

-- 42. Average Item_Outlet_Sales by Outlet_Size descending
SELECT Outlet_Size, AVG(Item_Outlet_Sales) AS Avg_Sales 
FROM Grocery_Store 
GROUP BY Outlet_Size 
ORDER BY Avg_Sales DESC;

-- 43. Average Item_Outlet_Sales by Outlet_Type
SELECT Outlet_Type, AVG(Item_Outlet_Sales) FROM Grocery_Store GROUP BY Outlet_Type;

-- 44. Maximum Item_Outlet_Sales by Outlet_Type
SELECT Outlet_Type, MAX(Item_Outlet_Sales) FROM Grocery_Store GROUP BY Outlet_Type;

-- 45. Total Item_Outlet_Sales by Item_Type
SELECT Item_Type, SUM(Item_Outlet_Sales) FROM Grocery_Store GROUP BY Item_Type;

-- 46. Total Item_Outlet_Sales by Item_Fat_Content
SELECT Item_Fat_Content, SUM(Item_Outlet_Sales) FROM Grocery_Store GROUP BY Item_Fat_Content;

-- 47. Maximum Item_Visibility by Item_Type
SELECT Item_Type, MAX(Item_Visibility) FROM Grocery_Store GROUP BY Item_Type;

-- 48. Minimum Item_Visibility by Item_Type
SELECT Item_Type, MIN(Item_Visibility) FROM Grocery_Store GROUP BY Item_Type;

-- 49. Total Item_Outlet_Sales by Item_Type WHERE Outlet_Location_Type is Tier 1
SELECT Item_Type, SUM(Item_Outlet_Sales) 
FROM Grocery_Store 
WHERE Outlet_Location_Type = 'Tier 1' 
GROUP BY Item_Type;

-- 50. Total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF
SELECT Item_Type, SUM(Item_Outlet_Sales) 
FROM Grocery_Store 
WHERE Item_Fat_Content IN ('Low Fat', 'LF') 
GROUP BY Item_Type;
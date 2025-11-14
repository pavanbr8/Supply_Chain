CREATE DATABASE Supply_Chain

SELECT COUNT(*) FROM dbo.DataCo 
AS Total_Records

SELECT Top 2 * FROM dbo.DataCo 

------------------------ Checking For Data Discrepancies ---------------------------
-- Change column datatype
ALTER TABLE DataCo
ALTER COLUMN order_date_DateOrders DATETIME;

ALTER TABLE DataCo
ALTER COLUMN shipping_date_DateOrders DATETIME;

-- Checking for Blanks --
SELECT 
    SUM(CASE WHEN Type IS NULL THEN 1 ELSE 0 END) AS Blank_Type,
    SUM(CASE WHEN Days_for_shipping_real IS NULL THEN 1 ELSE 0 END) AS Blank_Days_for_shipping_real,
    SUM(CASE WHEN Days_for_shipment_scheduled IS NULL THEN 1 ELSE 0 END) AS Blank_Days_for_shipment_scheduled,
    SUM(CASE WHEN Benefit_per_order IS NULL THEN 1 ELSE 0 END) AS Blank_Benefit_per_order,
    SUM(CASE WHEN Sales_per_customer IS NULL THEN 1 ELSE 0 END) AS Blank_Sales_per_customer,
    SUM(CASE WHEN Delivery_Status IS NULL THEN 1 ELSE 0 END) AS Blank_Delivery_Status,
    SUM(CASE WHEN Late_delivery_risk IS NULL THEN 1 ELSE 0 END) AS Blank_Late_delivery_risk,
    SUM(CASE WHEN Category_Id IS NULL THEN 1 ELSE 0 END) AS Blank_Category_Id,
    SUM(CASE WHEN Category_Name IS NULL THEN 1 ELSE 0 END) AS Blank_Category_Name,
    SUM(CASE WHEN Customer_City IS NULL  THEN 1 ELSE 0 END) AS Blank_Customer_City,
    SUM(CASE WHEN Customer_Country IS NULL  THEN 1 ELSE 0 END) AS Blank_Customer_Country,
    SUM(CASE WHEN Customer_Email IS NULL THEN 1 ELSE 0 END) AS Blank_Customer_Email,
    SUM(CASE WHEN Customer_Fname IS NULL THEN 1 ELSE 0 END) AS Blank_Customer_Fname,
    SUM(CASE WHEN Customer_Id IS NULL THEN 1 ELSE 0 END) AS Blank_Customer_Id,
    SUM(CASE WHEN Customer_Lname IS NULL THEN 1 ELSE 0 END) AS Blank_Customer_Lname,
    SUM(CASE WHEN Customer_Password IS NULL THEN 1 ELSE 0 END) AS Blank_Customer_Password,
    SUM(CASE WHEN Customer_Segment IS NULL THEN 1 ELSE 0 END) AS Blank_Customer_Segment,
    SUM(CASE WHEN Customer_State IS NULL THEN 1 ELSE 0 END) AS Blank_Customer_State,
    SUM(CASE WHEN Customer_Street IS NULL THEN 1 ELSE 0 END) AS Blank_Customer_Street,
    SUM(CASE WHEN Customer_Zipcode IS NULL THEN 1 ELSE 0 END) AS Blank_Customer_Zipcode,
    SUM(CASE WHEN Department_Id IS NULL THEN 1 ELSE 0 END) AS Blank_Department_Id,
    SUM(CASE WHEN Department_Name IS NULL THEN 1 ELSE 0 END) AS Blank_Department_Name,
    SUM(CASE WHEN Latitude IS NULL THEN 1 ELSE 0 END) AS Blank_Latitude,
    SUM(CASE WHEN Longitude IS NULL THEN 1 ELSE 0 END) AS Blank_Longitude,
    SUM(CASE WHEN Market IS NULL THEN 1 ELSE 0 END) AS Blank_Market,
    SUM(CASE WHEN Order_City IS NULL THEN 1 ELSE 0 END) AS Blank_Order_City,
    SUM(CASE WHEN Order_Country IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Country,
    SUM(CASE WHEN Order_Customer_Id IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Customer_Id,
    SUM(CASE WHEN order_date_DateOrders IS NULL THEN 1 ELSE 0 END) AS Blank_order_date_DateOrders,
    SUM(CASE WHEN Order_Id IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Id,
    SUM(CASE WHEN Order_Item_Cardprod_Id IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Item_Cardprod_Id,
    SUM(CASE WHEN Order_Item_Discount IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Item_Discount,
    SUM(CASE WHEN Order_Item_Discount_Rate IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Item_Discount_Rate,
    SUM(CASE WHEN Order_Item_Id IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Item_Id,
    SUM(CASE WHEN Order_Item_Product_Price IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Item_Product_Price,
    SUM(CASE WHEN Order_Item_Profit_Ratio IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Item_Profit_Ratio,
    SUM(CASE WHEN Order_Item_Quantity IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Item_Quantity,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS Blank_Sales,
    SUM(CASE WHEN Order_Item_Total IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Item_Total,
    SUM(CASE WHEN Order_Profit_Per_Order IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Profit_Per_Order,
    SUM(CASE WHEN Order_Region IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Region,
    SUM(CASE WHEN Order_State IS NULL THEN 1 ELSE 0 END) AS Blank_Order_State,
    SUM(CASE WHEN Order_Status IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Status,
    SUM(CASE WHEN Order_Zipcode IS NULL THEN 1 ELSE 0 END) AS Blank_Order_Zipcode,
    SUM(CASE WHEN Product_Card_Id IS NULL THEN 1 ELSE 0 END) AS Blank_Product_Card_Id,
    SUM(CASE WHEN Product_Category_Id IS NULL THEN 1 ELSE 0 END) AS Blank_Product_Category_Id,
    SUM(CASE WHEN Product_Description IS NULL THEN 1 ELSE 0 END) AS Blank_Product_Description,
    SUM(CASE WHEN Product_Image IS NULL THEN 1 ELSE 0 END) AS Blank_Product_Image,
    SUM(CASE WHEN Product_Name IS NULL THEN 1 ELSE 0 END) AS Blank_Product_Name,
    SUM(CASE WHEN Product_Price IS NULL THEN 1 ELSE 0 END) AS Blank_Product_Price,
    SUM(CASE WHEN Product_Status IS NULL THEN 1 ELSE 0 END) AS Blank_Product_Status,
    SUM(CASE WHEN shipping_date_DateOrders IS NULL THEN 1 ELSE 0 END) AS Blank_shipping_date_DateOrders,
    SUM(CASE WHEN Shipping_Mode IS NULL THEN 1 ELSE 0 END) AS Blank_Shipping_Mode
FROM DataCo;



-- Replace empty strings with NULLs
UPDATE DataCo
SET Customer_Zipcode = NULLIF(Customer_Zipcode, ''),
    Latitude = NULLIF(Latitude, ''),
    Longitude = NULLIF(Longitude, ''),
    Order_Zipcode = NULLIF(Order_Zipcode, ''),
    Product_Description = NULLIF(Product_Description, '');

-- Fix Customer_Zipcode (3 blanks)
--If Customer_State + Customer_Street are same for a missing Customer_Zipcode, replace it with the matching one.
UPDATE d1
SET d1.Customer_Zipcode = d2.Customer_Zipcode
FROM DataCo d1
JOIN DataCo d2
  ON d1.Customer_State = d2.Customer_State
 AND d1.Customer_Street = d2.Customer_Street
WHERE d1.Customer_Zipcode IS NULL 
  AND d2.Customer_Zipcode IS NOT NULL;


--Fix Latitude (9 blanks) & Longitude (105 blanks)
--Best approach: use available Customer_State + Customer_Zipcode to fill missing coordinates from other rows.
UPDATE d1
SET d1.Latitude = d2.Latitude
FROM DataCo d1
JOIN DataCo d2
  ON d1.Customer_State = d2.Customer_State
 AND d1.Customer_Zipcode = d2.Customer_Zipcode
WHERE d1.Latitude IS NULL 
  AND d2.Latitude IS NOT NULL;

UPDATE d1
SET d1.Longitude = d2.Longitude
FROM DataCo d1
JOIN DataCo d2
  ON d1.Customer_State = d2.Customer_State
 AND d1.Customer_Zipcode = d2.Customer_Zipcode
WHERE d1.Longitude IS NULL 
  AND d2.Longitude IS NOT NULL;


-- Fix Order_Zipcode (155,679 blanks)
--Use Order_Region + Order_State to fill.
UPDATE d1
SET d1.Order_Zipcode = d2.Order_Zipcode
FROM DataCo d1
JOIN DataCo d2
  ON d1.Order_Region = d2.Order_Region
 AND d1.Order_State = d2.Order_State
WHERE d1.Order_Zipcode IS NULL 
  AND d2.Order_Zipcode IS NOT NULL;


-- changing data type to varchar(20)
ALTER TABLE DataCo
ALTER COLUMN Order_Zipcode VARCHAR(20);

-- replace blanks to unknown
UPDATE DataCo
SET Order_Zipcode = 'Unknown'
WHERE Order_Zipcode IS NULL OR LTRIM(RTRIM(Order_Zipcode)) = '';



-- Fix Product_Description (180,519 blanks)
ALTER TABLE DataCo
ALTER COLUMN Product_Description VARCHAR(50);

UPDATE DataCo
SET Product_Description = 'Not Available'
WHERE Product_Description IS NULL OR LTRIM(RTRIM(Product_Description)) = '';


-- Duplicate Customer IDs
SELECT Customer_Id, COUNT(*) AS cnt
FROM DataCo
GROUP BY Customer_Id
HAVING COUNT(*) > 1;

-- Duplicate Order IDs
SELECT Order_Id, COUNT(*) AS cnt
FROM DataCo
GROUP BY Order_Id
HAVING COUNT(*) > 1;


-- Duplicate Order Item IDs
SELECT Order_Item_Id, COUNT(*) AS cnt
FROM DataCo
GROUP BY Order_Item_Id
HAVING COUNT(*) > 1;


select SKU ,SKU_Description from INVENTORY;
select SKU, SKU_Description from INVENTORY;
select WarehouseID from INVENTORY;
select distinct WarehouseID from INVENTORY;
SHOW COLUMNS FROM INVENTORY;
select * from INVENTORY;
select QuantityOnHand from INVENTORY where products > 0 ;
select SKU_Description, SKU from INVENTORY where QuantityOnHand >= 0;
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 ORDER BY WarehouseID ASC;
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 ORDER BY WarehouseID DESC , SKU ASC;
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 and QuantityOnOrder > 0 ORDER BY WarehouseID desc , SKU asc;
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 or QuantityOnOrder = 0 ORDER BY WarehouseID desc , SKU asc;
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand FROM INVENTORY WHERE QuantityOnHand BETWEEN 2 AND 10;
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand FROM INVENTORY WHERE QuantityOnHand > 1 AND QuantityOnHand < 10;
SELECT DISTINCT SKU, SKU_Description FROM INVENTORY WHERE SKU_Description LIKE 'Half-Dome%';
SELECT DISTINCT SKU, SKU_Description FROM INVENTORY WHERE SKU_Description LIKE '%Climb%';
SELECT DISTINCT SKU, SKU_Description FROM INVENTORY WHERE SKU_Description LIKE '__d%';
SELECT 
    COUNT(QuantityOnHand) AS CountOnHand,
    SUM(QuantityOnHand) AS TotalItems,
    AVG(QuantityOnHand) AS AvgQuantity,
    MIN(QuantityOnHand) AS MinQuantity,
    MAX(QuantityOnHand) AS MaxQuantity FROM INVENTORY;
-- sum Returns the total sum of all values in a specific numerical column while count Returns the number of items or rows, such as COUNT(*) to count all rows or COUNT(column) to count non-NULL entries.;
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHand FROM INVENTORY GROUP BY WarehouseID ORDER BY TotalItemsOnHand DESC;
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3 FROM INVENTORY WHERE QuantityOnHand < 3 GROUP BY WarehouseID ORDER BY TotalItemsOnHandLT3 DESC;
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3 FROM INVENTORY WHERE QuantityOnHand < 3 GROUP BY WarehouseID HAVING COUNT(*) < 2 ORDER BY TotalItemsOnHandLT3 DESC;
-- The WHERE clause is applied first because it filters individual rows before they are grouped, whereas the HAVING clause filters the results after the groups have been formed and aggregated.


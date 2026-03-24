SELECT 
    c.CustomerName AS CustomerName,
    p.ProductName,
    d.FullDate,
    f.Quantity,
    f.TotalAmount
FROM Poultry_Sales_Fact f
INNER JOIN Dim_Customer c 
    ON f.CustomerID = c.CustomerID
INNER JOIN Dim_Product p 
    ON f.ProductID = p.ProductID
INNER JOIN Dim_Date d 
    ON f.DateID = d.DateID;
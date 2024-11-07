select * from dbo.Products where price >500
go



SELECT 
    YEAR(OrderDate) AS OrderYear,
    SUM(TotalAmount) AS TotalAmount
FROM 
    Orders
GROUP BY 
    YEAR(OrderDate)
ORDER BY 
    OrderYear;
	go




SELECT 
    c.Name AS CategoryName,
    SUM(o.TotalAmount) AS TotalSales
FROM 
    Orders o
JOIN 
    Products p ON o.ProductId = p.Id
JOIN 
    Categories c ON p.CategoryId = c.Id
GROUP BY 
    c.Name;

go



SELECT 
    Name AS ProductName,
    Price
FROM 
    Products
ORDER BY 
    Price DESC;
	go


	SELECT 
    c.Name AS CustomerName,
    COUNT(o.Id) AS OrderCount
FROM 
    Customers c
JOIN 
    Orders o ON c.Id = o.CustomerId
GROUP BY 
    c.Name;
	go



	SELECT 
    c.Name AS CategoryName,
    AVG(p.Price) AS AveragePrice
FROM 
    Products p
JOIN 
    Categories c ON p.CategoryId = c.Id
GROUP BY 
    c.Name;

	go


	SELECT 
    p.Name AS ProductName,
    c.Name AS CategoryName
FROM 
    Products p
JOIN 
    Categories c ON p.CategoryId = c.Id
ORDER BY 
    ProductName ASC;
go


SELECT 
    c.Name AS CategoryName,
    SUM(o.TotalAmount) AS TotalSales
FROM 
    Orders o
JOIN 
    Products p ON o.ProductId = p.Id
JOIN 
    Categories c ON p.CategoryId = c.Id
WHERE 
    YEAR(o.OrderDate) = 2023
GROUP BY 
    c.Name;

	go



	SELECT 
    YEAR(OrderDate) AS Year,
    MONTH(OrderDate) AS Month,
    COUNT(Id) AS OrderCount
FROM 
    Orders
GROUP BY 
    YEAR(OrderDate), MONTH(OrderDate)
ORDER BY 
    Year, Month;
	go


	SELECT 
    c.Name AS CustomerName,
    SUM(o.TotalAmount) AS TotalSales
FROM 
    Orders o
JOIN 
    Customers c ON o.CustomerId = c.Id
GROUP BY 
    c.Name;

	go



	SELECT 
    c.Name AS CategoryName,
    COUNT(o.Id) AS OrderCount
FROM 
    Orders o
JOIN 
    Products p ON o.ProductId = p.Id
JOIN 
    Categories c ON p.CategoryId = c.Id
GROUP BY 
    c.Name;
	go



	SELECT 
    c.Name AS CustomerName,
    COUNT(o.Id) AS OrderCount
FROM 
    Orders o
JOIN 
    Customers c ON o.CustomerId = c.Id
GROUP BY 
    c.Name
ORDER BY 
    OrderCount DESC;
	go


	SELECT 
    YEAR(OrderDate) AS Year,
    COUNT(Id) AS OrderCount
FROM 
    Orders
GROUP BY 
    YEAR(OrderDate)
ORDER BY 
    Year;
	go


	SELECT 
    p.Name AS ProductName,
    COUNT(DISTINCT o.CustomerId) AS BuyerCount
FROM 
    Orders o
JOIN 
    Products p ON o.ProductId = p.Id
GROUP BY 
    p.Name
ORDER BY 
    BuyerCount DESC;
	go






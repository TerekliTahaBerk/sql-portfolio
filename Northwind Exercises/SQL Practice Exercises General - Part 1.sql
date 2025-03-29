-- Exercise 1
SELECT CategoryName, Description 
FROM Categories;

-- Exercise 2
SELECT ContactName, CustomerID, CompanyName
FROM Customers
WHERE City = 'London';

-- Exercise 3
SELECT * 
FROM Suppliers
WHERE Fax IS NOT NULL;

-- Exercise 4
SELECT * 
FROM Orders
WHERE RequiredDate BETWEEN '1997-01-01' AND '1998-01-01' AND Freight < 100;

-- Exercise 5
SELECT CompanyName, ContactName
FROM Customers
WHERE Country IN ('Mexico', 'Sweden', 'Germany') AND ContactTitle = 'Owner';

-- Exercise 6
SELECT COUNT(*)
FROM Products
WHERE Discontinued = 1;

-- Exercise 7
SELECT [CategoryName], [Description]
FROM [Categories]
WHERE [CategoryName] LIKE 'Co%';

-- Exercise 8
SELECT CompanyName, City, Country, PostalCode
FROM Suppliers
WHERE Address LIKE '%rue%'
ORDER BY CompanyName;

-- Exercise 9
SELECT ProductID AS [Product ID], SUM(Quantity) AS [Total Quantity]
FROM [Order Details]
GROUP BY ProductID
ORDER BY [Total Quantity]
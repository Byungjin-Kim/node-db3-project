-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Product.ProductName, Category.CategoryName
FROM Product
JOIN Category ON Product.CategoryId = Category.ID;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [Order].id, [Order].shipname, [Order].OrderDate
FROM [Order]
WHERE [Order].OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT Product.ProductName, OrderDetail.Quantity
FROM Product
JOIN OrderDetail ON Product.ID = OrderDetail.ProductID
WHERE OrderDetail.OrderID = 10251
ORDER BY Product.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT [Order].ID, Customer.CompanyName, Employee.LastName
FROM [Order]
JOIN Customer ON [Order].CustomerID = Customer.ID
JOIN Employee ON [Order].EmployeeID = Employee.ID;

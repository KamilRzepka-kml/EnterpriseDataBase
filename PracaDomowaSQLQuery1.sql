SELECT Invoices.Number, Clients.FirstName, Clients.LastName
FROM Invoices
INNER JOIN Clients ON Clients.Id = Invoices.ClientNumber ;


SELECT Invoices.Number AS InvoiceNumber, Products.Name AS ProductName, Products.Price AS ProductPrice
FROM InvoicePositions
INNER JOIN Invoices ON  Invoices.Id = InvoicePositions.InvoiceId 
INNER JOIN Products ON Products.Id = InvoicePositions.ProductId ;

SELECT i.Number AS InvoiceNumber, p.Name AS ProductName, p.Price AS ProductPrice
FROM InvoicePositions ip
JOIN Invoices i ON  i.Id = ip.InvoiceId 
JOIN Products p ON  p.Id = ip.ProductId ;


 

SELECT i.Number AS InvoiceNumber, SUM(ip.Quantity) AS TotalQuantity
FROM Invoices i
JOIN InvoicePositions ip ON i.Id = ip.InvoiceId
GROUP BY i.Number;




SELECT i.Number AS InvoiceNumber, 
       SUM(p.Price * ip.Quantity) AS TotalPrice
FROM Invoices i
JOIN InvoicePositions ip ON i.Id = ip.InvoiceId
JOIN Products p ON  p.Id = ip.ProductId 
GROUP BY i.Number;





/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[productId]
      ,[brandId]
      ,[supplierId]
      ,[orderId]
      ,[sku]
      ,[mrp]
      ,[discount]
      ,[price]
      ,[quantity]
      ,[sold]
      ,[available]
      ,[defective]
      ,[createdBy]
      ,[updatedBy]
      ,[createdAt]
      ,[updatedAt]
  FROM [inventory].[inventory].[item]



SELECT p.title , i.id , i.productId , i.brandId, i.supplierId ,i.orderId ,i.price ,i.quantity , i.sold , i.available ,i.defective
FROM [inventory].[item] i
JOIN [inventory].[product] p ON i.productId = p.id
WHERE [available] <= 10;

SELECT p.title, SUM(i.Sold) AS totalSold, i.productId, i.brandId, i.supplierId, i.orderId, i.price, i.quantity
FROM [inventory].[item] i
JOIN [inventory].[product] p ON i.productId = p.id
GROUP BY p.title, i.productId, i.brandId, i.supplierId, i.orderId, i.price, i.quantity
ORDER BY SUM(i.Sold) DESC;

SELECT
    i.productId,
    p.title AS productName,
    (i.price - (o.discount + o.tax + o.shipping)) * i.sold AS profit,
    i.quantity - i.sold AS remainingQuantity
FROM
    [inventory].[item] i
JOIN
    [inventory].[product] p ON i.productId = p.id
JOIN
    [inventory].[order] o ON i.orderId = o.id

ORDER BY
    profit DESC;



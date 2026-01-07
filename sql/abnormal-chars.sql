SELECT  [po].[ExpectedDeliveryDate],
        [po].[OrderDate],
        [pol].[LastReceiptDate],
        [pol].[LastEditedWhen],
        [p].[ValidFrom],
        [p].[ValidTo]
FROM    [Purchasing].[PurchaseOrders] AS po
JOIN    [Purchasing].[PurchaseOrderLines] AS pol
        ON [pol].[PurchaseOrderID] = [po].[PurchaseOrderID]
JOIN    [Application].[People] AS p
        ON [p].[PersonID] = [po].[ContactPersonID]
WHERE [pol].[LastReceiptDate] > '1/1/2016'

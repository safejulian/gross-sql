;WITH    x AS (SELECT    bg.BuyingGroupName,
                        c.CustomerID
              FROM      Sales.BuyingGroups AS bg
              JOIN      Sales.Customers AS c
                        ON c.BuyingGroupID = bg.BuyingGroupID
             )
    SELECT  x.BuyingGroupName,
            COUNT(x.CustomerID)
    FROM    x
    GROUP BY x.BuyingGroupName

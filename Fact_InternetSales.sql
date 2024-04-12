SELECT [ProductKey] as ProductKey
      ,[OrderDateKey] as OrderDateKey
      ,[DueDateKey] as DueDateKey
      ,[ShipDateKey] as ShipDateKey
      ,[CustomerKey] as CustomerKey,
      [PromotionKey] as PromotionKey,
      --,[CurrencyKey],
      --[SalesTerritoryKey],
      [SalesOrderNumber] as SalesOrderNumber,
      --[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      [SalesAmount] as SalesAmount
      --[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  where LEFT ([OrderDateKey], 4) >=2012
  order by OrderDateKey asc
--- Cleansed Fact_InternalSales--
SELECT   
[ProductKey],
[OrderDateKey],
[DueDateKey],
[ShipDateKey],
[CustomerKey],
--,[PromotionKey]
--,[CurrencyKey]
--,[SalesTerritoryKey],
[SalesOrderNumber]
-- ,[SalesOrderLineNumber]
--,[RevisionNumber]
--,[OrderQuantity]
--,[UnitPrice]
--,[ExtendedAmount]
 --,[UnitPriceDiscountPct]
 --,[DiscountAmount]
 --,[ProductStandardCost]
 --,[TotalProductCost]
       ,[SalesAmount]
-- ,[TaxAmt]
--,[Freight]
--,[CarrierTrackingNumber]
--,[CustomerPONumber]
--,[OrderDate]
--,[DueDate]
--,[ShipDate]
  FROM [AdventureWorksDW2025].[dbo].[FactInternetSales]
 Where
 OrderDateKey between 20230101 AND 20261231
 Order by
  OrderDateKey asc


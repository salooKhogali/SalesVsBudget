-- Cleansed Dim Product
SELECT 
  [ProductKey], 
  [ProductAlternateKey] as [ProductItemCode]
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  -- ,[SizeUnitMeasureCode]
  , 
  [EnglishProductName] as [Product Name], 
 pc.EnglishProductCategoryName as [Product Category], --- joined from dimproductcategory
 ps.EnglishProductSubcategoryName as[Sub Category]    -- joind frpm dimproductsubcategory
  -- ,[SpanishProductName]
  -- ,[FrenchProductName]
  -- ,[StandardCost]
  --,[FinishedGoodsFlag]
   ,
  [Color] as [Product Color] -- ,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  , 
  [Size] as [Product Size] -- ,[SizeRange]
  --  ,[Weight]
  -- ,[DaysToManufacture]
  , 
  [ProductLine] as [Product Line] --,[DealerPrice]
  --,[Class]
  --,[Style]
  , 
  [ModelName] as [Product Model Name] 
  --  ,[LargePhoto]
  ,
  [EnglishDescription] as [Product Description]
  -- ,[FrenchDescription]
  -- ,[ChineseDescription]
  -- ,[ArabicDescription]
  --  ,[HebrewDescription]
  -- ,[ThaiDescription]
  --  ,[GermanDescription]
  --  ,[JapaneseDescription]
  -- ,[TurkishDescription]
  --  ,[StartDate]
  --  ,[EndDate]
  , 
  isnull([Status], 'Outdated') as [Product Status] 
FROM 
  [AdventureWorksDW2025].[dbo].[DimProduct] as p 
  join [AdventureWorksDW2025].[dbo].DimProductSubcategory ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  join [AdventureWorksDW2025].[dbo].DimProductCategory pc on ps.ProductCategoryKey = pc.ProductCategoryKey

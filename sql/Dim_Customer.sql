-- Cleean -- Cleean DimCustomer
SELECT 
  [CustomerKey] --,[GeographyKey]
  -- ,[CustomerAlternateKey]
  --[Title]
  , 
  [FirstName] --,[MiddleName]
  , 
  [LastName], 
  FirstName + ' ' + LastName as [Full Name]
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  -- ,[Suffix]
  , 
  Case gender when 'M' then 'Male' when 'F' then 'Female' end As Gender -- ,[EmailAddress]
  --,[YearlyIncome]
  --  ,[TotalChildren]
  --  ,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --  ,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --   ,[HouseOwnerFlag]
  --   ,[NumberCarsOwned]
  --   ,[AddressLine1]
  -- ,[AddressLine2]
  --   ,[Phone]
  , 
  [DateFirstPurchase], 
  [CommuteDistance], 
  City as [Customer City] 
FROM 
  [AdventureWorksDW2025].[dbo].[DimCustomer]as c 
  left join [AdventureWorksDW2025].[dbo].[DimGeography] as g on c.GeographyKey = g.GeographyKey


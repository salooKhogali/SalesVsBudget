-- Cleansed DImDate --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] as Day, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] as WeekNr, 
  [EnglishMonthName]as Month, 
  left([EnglishMonthName], 3) as MonthShort, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] as MonthNo, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] -- ,[CalendarSemester]
  --,[FiscalQuarter]
  -- ,[FiscalYear]
  -- ,[FiscalSemester]
FROM 
  [AdventureWorksDW2025].[dbo].[DimDate] 
Where 
  CalendarYear >= 2019


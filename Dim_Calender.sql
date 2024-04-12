SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date,
	  --[DayNumberOfWeek],
      [EnglishDayNameOfWeek] AS Day,
      --[SpanishDayNameOfWeek],
      --[FrenchDayNameOfWeek],
      --[DayNumberOfMonth],
      --[DayNumberOfYear],
      [WeekNumberOfYear]AS WeekNr,
      [EnglishMonthName] As Month,
	  LEFT([EnglishMonthName], 3) as MonthShort,
      --[SpanishMonthName],
      --[FrenchMonthName],
      [MonthNumberOfYear]As MonthNr,
      [CalendarQuarter] As Quater,
      [CalendarYear] As year
      --[CalendarSemester]
      --[FiscalQuarter]
      --[FiscalYear]
      --[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >=2012
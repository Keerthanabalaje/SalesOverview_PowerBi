SELECT p.ProductKey as [ProductKey]
      ,p.ProductAlternateKey as [ProductItemCode]
	  ,p.EnglishProductName as [EnglishProductName]
	  ,ps.EnglishProductSubcategoryName as SubCategory
	  ,pc.EnglishProductCategoryName as ProductCategory
      ,[Color]
	  ,[Size]
      ,[ProductLine]
      ,[ModelName]
	  ,[EnglishDescription]
      ,isnull (p.Status,'Outdated') as [Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
left join [AdventureWorksDW2019].[dbo].[DimProductSubcategory] as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
left join [AdventureWorksDW2019].[dbo].[DimProductCategory] as pc on pc.ProductCategoryKey = ps.ProductCategoryKey
order by p.ProductKey asc
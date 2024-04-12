SELECT  c.CustomerKey as [CustomerKey],
c.FirstName as [FirstName],
c.LastName as [LastName],
c.FirstName + ' ' + c.LastName as [FullName],
c.DateFirstPurchase as [DateFirstPurchase],
g.city as [CustomerCity],
case c.gender when 'M' then 'Male' when 'F' then 'Female' End as [Gender]
      
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  left join [AdventureWorksDW2019].[dbo].[DimGeography] as g on g.GeographyKey=c.GeographyKey
  order by c.CustomerKey

  
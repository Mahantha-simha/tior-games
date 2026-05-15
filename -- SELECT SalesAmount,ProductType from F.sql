-- SELECT SalesAmount,ProductType from FactSales,DimProduct WHERE FactSales.ProductCode = DimProduct.ProductCode and ProductType ='bread'

SELECT * from FactSales full OUTER JOIN DimProduct on FactSales.PromotionID=DimProduct.CategoryID WHERE PromotionID is not null


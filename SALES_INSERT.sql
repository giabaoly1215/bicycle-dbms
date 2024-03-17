USE SALES

BULK INSERT store FROM "C:\Users\lygia\Downloads\archive\stores.csv" WITH (FORMAT='CSV', FIRSTROW=2)
GO

BULK INSERT staff FROM "C:\Users\lygia\Downloads\archive\staffs.csv" WITH (FORMAT='CSV', FIRSTROW=2)
GO

BULK INSERT customer FROM "C:\Users\lygia\Downloads\archive\customers.csv" WITH (FORMAT='CSV', FIRSTROW=2)
GO

BULK INSERT orders FROM "C:\Users\lygia\Downloads\archive\orders.csv" WITH (FORMAT='CSV', FIRSTROW=2)
GO

BULK INSERT brand FROM "C:\Users\lygia\Downloads\archive\brands.csv" WITH (FORMAT='CSV', FIRSTROW=2)
GO

BULK INSERT category FROM "C:\Users\lygia\Downloads\archive\categories.csv" WITH (FORMAT='CSV', FIRSTROW=2)
GO

BULK INSERT product FROM "C:\Users\lygia\Downloads\archive\products.csv" WITH (FORMAT='CSV', FIRSTROW=2)
GO

BULK INSERT item FROM "C:\Users\lygia\Downloads\archive\order_items.csv" WITH (FORMAT='CSV', FIRSTROW=2)
GO

BULK INSERT stock FROM "C:\Users\lygia\Downloads\archive\stocks.csv" WITH (FORMAT='CSV', FIRSTROW=2)
GO

CREATE DATABASE SALES

USE SALES
CREATE TABLE [store] (
    [id] int  NOT NULL ,
    [name] nvarchar(100)  NOT NULL ,
    [phone] varchar(11)  NOT NULL ,
    [email] varchar(50)  NOT NULL ,
    [district] nvarchar(50)  NOT NULL ,
    [city] nvarchar(50)  NOT NULL ,
    CONSTRAINT [PK_store] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [staff] (
    [id] int  NOT NULL ,
    [store_id] int  NOT NULL ,
    [name] nvarchar(100)  NOT NULL ,
    [phone] varchar(11)  NOT NULL ,
    [email] varchar(50)  NOT NULL ,
    CONSTRAINT [PK_staff] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [customer] (
    [id] int  NOT NULL ,
    [name] nvarchar(100)  NOT NULL ,
    [phone] varchar(11)  NOT NULL ,
    [email] varchar(50)  NOT NULL ,
    [district] nvarchar(50)  NOT NULL ,
    [city] nvarchar(50)  NOT NULL ,
    CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [order] (
    [id] int  NOT NULL ,
    [customer_id] int  NOT NULL ,
    [store_id] int  NOT NULL ,
    [staff_id] int  NOT NULL ,
    [order_date] date  NOT NULL ,
    [status] int  NOT NULL ,
    CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [brand] (
    [id] int  NOT NULL ,
    [name] nvarchar(100)  NOT NULL ,
    CONSTRAINT [PK_brand] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [category] (
    [id] int  NOT NULL ,
    [name] nvarchar(100)  NOT NULL ,
    CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [product] (
    [id] int  NOT NULL ,
    [name] nvarchar(100)  NOT NULL ,
    [brand_id] int  NOT NULL ,
    [category_id] int  NOT NULL ,
    [price] int  NOT NULL ,
    CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [item] (
    [id] int  NOT NULL ,
    [order_id] int  NOT NULL ,
    [product_id] int  NOT NULL ,
    [quantity] int  NOT NULL ,
    [price] int  NOT NULL ,
    CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED (
        [id] ASC,[order_id] ASC
    )
)

CREATE TABLE [stock] (
    [store_id] int  NOT NULL ,
    [product_id] int  NOT NULL ,
    [quantity] int  NOT NULL ,
    CONSTRAINT [PK_stock] PRIMARY KEY CLUSTERED (
        [store_id] ASC,[product_id] ASC
    )
)

ALTER TABLE [staff] WITH CHECK ADD CONSTRAINT [FK_staff_store_id] FOREIGN KEY([store_id])
REFERENCES [store] ([id])

ALTER TABLE [staff] CHECK CONSTRAINT [FK_staff_store_id]

ALTER TABLE [order] WITH CHECK ADD CONSTRAINT [FK_order_customer_id] FOREIGN KEY([customer_id])
REFERENCES [customer] ([id])

ALTER TABLE [order] CHECK CONSTRAINT [FK_order_customer_id]

ALTER TABLE [order] WITH CHECK ADD CONSTRAINT [FK_order_store_id] FOREIGN KEY([store_id])
REFERENCES [store] ([id])

ALTER TABLE [order] CHECK CONSTRAINT [FK_order_store_id]

ALTER TABLE [order] WITH CHECK ADD CONSTRAINT [FK_order_staff_id] FOREIGN KEY([staff_id])
REFERENCES [staff] ([id])

ALTER TABLE [order] CHECK CONSTRAINT [FK_order_staff_id]

ALTER TABLE [product] WITH CHECK ADD CONSTRAINT [FK_product_brand_id] FOREIGN KEY([brand_id])
REFERENCES [brand] ([id])

ALTER TABLE [product] CHECK CONSTRAINT [FK_product_brand_id]

ALTER TABLE [product] WITH CHECK ADD CONSTRAINT [FK_product_category_id] FOREIGN KEY([category_id])
REFERENCES [category] ([id])

ALTER TABLE [product] CHECK CONSTRAINT [FK_product_category_id]

ALTER TABLE [item] WITH CHECK ADD CONSTRAINT [FK_item_order_id] FOREIGN KEY([order_id])
REFERENCES [order] ([id])

ALTER TABLE [item] CHECK CONSTRAINT [FK_item_order_id]

ALTER TABLE [item] WITH CHECK ADD CONSTRAINT [FK_item_product_id] FOREIGN KEY([product_id])
REFERENCES [product] ([id])

ALTER TABLE [item] CHECK CONSTRAINT [FK_item_product_id]

ALTER TABLE [stock] WITH CHECK ADD CONSTRAINT [FK_stock_store_id] FOREIGN KEY([store_id])
REFERENCES [store] ([id])

ALTER TABLE [stock] CHECK CONSTRAINT [FK_stock_store_id]

ALTER TABLE [stock] WITH CHECK ADD CONSTRAINT [FK_stock_product_id] FOREIGN KEY([product_id])
REFERENCES [product] ([id])

ALTER TABLE [stock] CHECK CONSTRAINT [FK_stock_product_id]

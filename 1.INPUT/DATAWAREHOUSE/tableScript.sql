/****** Object:  Table [ANALYSE].[TABLE1]    Script Date: 10/5/2022 5:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ANALYSE].[TABLE1]
(
	[country] [nvarchar](256) NULL,
	[banner_code] [nvarchar](256) NULL,
	[bunit_id] [nvarchar](256) NULL,
	[bunit_name] [nvarchar](256) NULL,
	[department_id] [nvarchar](256) NULL,
	[department_name] [nvarchar](256) NULL,
	[category_id] [nvarchar](256) NULL,
	[category_name] [nvarchar](256) NULL,
	[subcategory_id] [nvarchar](256) NULL,
	[subcategory_name] [nvarchar](256) NULL,
	[section_id] [nvarchar](256) NULL,
	[section_name] [nvarchar](256) NULL,
	[product_id] [nvarchar](256) NULL,
	[product_desc] [nvarchar](256) NULL,
	[product_type_id] [nvarchar](256) NULL,
	[product_type_desc] [nvarchar](256) NULL,
	[brand_name] [nvarchar](256) NULL,
	[product_status_id] [nvarchar](256) NULL,
	[product_status_desc] [nvarchar](256) NULL,
	[contents_qty] [float] NULL,
	[unit_of_measure_desc] [nvarchar](256) NULL,
	[product_creation_date] [date] NULL,
	[housebrand_id] [nvarchar](256) NULL,
	[housebrand_desc] [nvarchar](256) NULL,
	[vendor_id] [nvarchar](256) NULL,
	[vendor_name] [nvarchar](256) NULL,
	[suf] [float] NULL,
	[puf] [float] NULL,
	[country_of_origin_id] [nvarchar](256) NULL,
	[country_of_origin_desc] [nvarchar](256) NULL,
	[core_range_id] [nvarchar](256) NULL,
	[core_range_desc] [nvarchar](256) NULL,
	[regular_price] [float] NULL,
	[return_flag] [nvarchar](256) NULL,
	[exclusive_flag] [nvarchar](256) NULL,
	[order_type_id] [nvarchar](256) NULL,
	[order_type_desc] [nvarchar](256) NULL,
	[lastupdate] [datetime] NOT NULL,
	[basic_cost] [float] NULL,
	[net_cost] [float] NULL,
	[net_net_cost] [float] NULL,
	[in_use_price] [float] NULL,
	[status_change_date] [date] NULL,
	[master_product_id] [nvarchar](256) NULL,
	[SHELF_TEXT] [nvarchar](256) NULL,
	[BUFFER_STOCK] [float] NULL,
	[buyer_id] [nvarchar](256) NULL,
	[uda_country_of_origin] [nvarchar](256) NULL,
	[chinese_desc] [nvarchar](256) NULL
)
WITH
(
	DISTRIBUTION = HASH ( [product_id] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [ANALYSE].[TABLE2]    Script Date: 10/5/2022 5:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ANALYSE].[TABLE2]
(
	[effective_from] [date] NULL,
	[effective_to] [date] NULL,
	[current_flag] [nvarchar](256) NULL,
	[product_id] [nvarchar](256) NULL,
	[mmds_promotion_type] [nvarchar](256) NULL,
	[mmds_promotion_desc] [nvarchar](256) NULL,
	[mmds_promotion_no] [nvarchar](256) NULL
)
WITH
(
	DISTRIBUTION = HASH ( [product_id] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO
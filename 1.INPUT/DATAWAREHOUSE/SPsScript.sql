
/****** Object:  StoredProcedure [PREPARE].[SAMPLE_SP_1]    Script Date: 4/21/2022 2:30:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [PREPARE].[SAMPLE_SP_1] AS

BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    truncate table [schema_mall].[SAMPLE_TB_1];

    insert into [schema_mall].[SAMPLE_TB_2]
    (
           [table_name]
          ,[record_count]
          ,[lastupdate]
    )
    select top(1)
           'schema_mall.SAMPLE_TB_1' table_name
          ,0 record_count
          ,getdate()+'8:00:00' lastupdate
     FROM [schema_mall].[SAMPLE_TB_2]
    ;

    insert into [schema_mall].[SAMPLE_TB_1]
    (
      [write_time]
     ,[effective_date]
     ,[create_time]
     ,[item_no]
     ,[type]
     ,[bulk_flag]
     ,[measure_type]
     ,[front_unit_id]
     ,[back_unit_id]
     ,[pack_content]
     ,[output_tax]
     ,[item_status]
     ,[last_category_code]
     ,[brand_id]
     ,[alias_name]
     ,[biz_way]
     ,[produce_area]
     ,[spec_desc]
     ,[rough_weight]
     ,[temperature_layer]
     ,[expire_days]
     ,[pre_warn_expire_days]
     ,[factory_name]
     ,[factory_address]
     ,[factory_phone]
     ,[edible_way]
     ,[material_explain]
     ,[spec_quantity]
     ,[spec_unit]
     ,[component_info]
     ,[image]
     ,[supply_type]
     ,[supply_channel]
     ,[dc_type0]
     ,[dc_type1]
     ,[top_1000_ind]
     ,[slow_moving_ind]
     ,[private_label_ind]
     ,[nutrition_code]
     ,[product_grading]
     ,[jline_flag]
     ,[inventory_item_flag]
     ,[order_conversion]
     ,[selling_unit]
     ,[alias_item_no]
     ,[non_discountable_flag]
     ,[no_point_item_flag]
     ,[alcohol_item_flag]
     ,[gross_weight]
     ,[item_ddc_wel]
     ,[online_standard_weight]
     ,[online_lower_limit_pct]
     ,[online_upper_limit_pct]
     ,[service_item_flag]
     ,[linked_item_no]
    )
    SELECT
      getdate()+'8:00:00' [write_time]
     ,[effective_date]
     ,[create_time]
     ,[item_no]
     ,[type]
     ,[bulk_flag]
     ,[measure_type]
     ,[front_unit_id]
     ,[back_unit_id]
     ,[pack_content]
     ,[output_tax]
     ,[item_status]
     ,[last_category_code]
     ,[brand_id]
     ,[alias_name]
     ,[biz_way]
     ,[produce_area]
     ,[spec_desc]
     ,[rough_weight]
     ,[temperature_layer]
     ,[expire_days]
     ,[pre_warn_expire_days]
     ,[factory_name]
     ,[factory_address]
     ,[factory_phone]
     ,[edible_way]
     ,[material_explain]
     ,[spec_quantity]
     ,[spec_unit]
     ,[component_info]
     ,[image]
     ,[supply_type]
     ,[supply_channel]
     ,[dc_type0]
     ,[dc_type1]
     ,[top_1000_ind]
     ,[slow_moving_ind]
     ,[private_label_ind]
     ,[nutrition_code]
     ,[product_grading]
     ,[jline_flag]
     ,[inventory_item_flag]
     ,[order_conversion]
     ,[selling_unit]
     ,[alias_item_no]
     ,[non_discountable_flag]
     ,[no_point_item_flag]
     ,[alcohol_item_flag]
     ,[gross_weight]
     ,[item_ddc_wel]
     ,[online_standard_weight]
     ,[online_lower_limit_pct]
     ,[online_upper_limit_pct]
     ,[service_item_flag]
     ,[linked_item_no]
    FROM [prepare].[SAMPLE_TB_3] a
   WHERE a.effective_date = (
         select max(effective_date) effective_date
         from [prepare].[SAMPLE_TB_3]
         )
    ;

    insert into [schema_mall].[SAMPLE_TB_2]
    (
           [table_name]
          ,[record_date]
          ,[table_lastupdate]
          ,[record_count]
          ,[lastupdate]
    )
    SELECT
           'schema_mall.SAMPLE_TB_1' table_name
          ,[effective_date] record_date
          ,max([write_time]) table_lastupdate
          ,count(1) record_count
          ,getdate()+'8:00:00' lastupdate
      FROM [schema_mall].[SAMPLE_TB_1]
     GROUP BY [effective_date]
    ;

END
GO
/****** Object:  StoredProcedure [PREPARE].[SAMPLE_SP_2]    Script Date: 4/21/2022 2:30:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [PREPARE].[SAMPLE_SP_2] AS

BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    truncate table [schema_mall].[SAMPLE_TB_5];

    insert into [schema_mall].[SAMPLE_TB_2]
    (
           [table_name]
          ,[record_count]
          ,[lastupdate]
    )
    select top(1)
           'schema_mall.SAMPLE_TB_5' table_name
          ,0 record_count
          ,getdate()+'8:00:00' lastupdate
     FROM [schema_mall].[SAMPLE_TB_2]
    ;

    insert into [schema_mall].[SAMPLE_TB_5]
    (
      [write_time]
     ,[effective_date]
     ,[item_no]
     ,[lang_type]
     ,[lang_desc]
     ,[show_location]
    )
    SELECT
      getdate()+'8:00:00' [write_time]
     ,[effective_date]
     ,[item_no]
     ,[lang_type]
     ,[lang_desc]
     ,[show_location]
    FROM [prepare].[SAMPLE_TB_6] a
   WHERE a.effective_date = (
         select max(effective_date) effective_date
         from [prepare].[SAMPLE_TB_6]
         )
    ;

    insert into [schema_mall].[SAMPLE_TB_2]
    (
           [table_name]
          ,[record_date]
          ,[table_lastupdate]
          ,[record_count]
          ,[lastupdate]
    )
    SELECT
           'schema_mall.SAMPLE_TB_5' table_name
          ,[effective_date] record_date
          ,max([write_time]) table_lastupdate
          ,count(1) record_count
          ,getdate()+'8:00:00' lastupdate
      FROM [schema_mall].[SAMPLE_TB_5]
     GROUP BY [effective_date]
    ;

END
GO
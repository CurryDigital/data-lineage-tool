/****** Object:  View [prepare].[SAMPLE_TB_6_VW]    Script Date: 4/19/2022 10:31:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [prepare].[SAMPLE_TB_6_VW] AS SELECT distinct trim(cm) cm,
trim(cm_name) cm_name,
substring(trim(cm_name),4,len(trim(cm_name))) login_name,
trim(vendor) vendor,
trim(vendor_name) vendor_name,
trim(dept_cat) dept_cat,
trim(dept_cat_name) dept_cat_name,
dn,posting_month,tt_cfm_amt,
concat(trim(cm),'-',trim(cm_name),'-',trim(vendor),'-',trim(vendor_name),'-',trim(dept_cat),'-',trim(dept_cat_name),
dn,'-',posting_month,'-',tt_cfm_amt) as check_item
from prepare.SAMPLE_TB_6
where pi_type = 'Monthly Ad Hoc Fund';
GO

/****** Object:  View [schema_mall].[SAMPLE_TB_1_temp_view]    Script Date: 4/19/2022 10:31:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [schema_mall].[SAMPLE_TB_1_temp_view]
AS with source as (
    select *
    from "DATABASE1"."schema_mall"."SAMPLE_TB_1"
)

,final as (
    select *,
        
  
    getdate()

 as lastupdate
    from source
    where 1=1
)

select * from final;
GO

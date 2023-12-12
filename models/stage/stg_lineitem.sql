with lineitem as (

    select * from {{source('TPCH','LINEITEM')}}

)

select * from lineitem
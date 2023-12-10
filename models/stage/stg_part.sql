with part as (
    select * from {{source('TPCH','PART')}}

)

select * from part
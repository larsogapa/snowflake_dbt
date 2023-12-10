with partsupp as (
    select * from {{source('TPCH','PARTSUPP')}}
)

select * from partsupp
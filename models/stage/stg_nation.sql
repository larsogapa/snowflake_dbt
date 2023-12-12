with nation as (
    select * from {{source('TPCH','NATION')}}
)

select *
from nation
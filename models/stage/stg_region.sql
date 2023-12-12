WITH REGION AS(
    select * from {{source('TPCH','REGION')}}
)

select *
from region


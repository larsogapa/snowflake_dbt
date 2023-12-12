with customer as (
    select * from {{source('TPCH','CUSTOMER')}}
)

select *
from customer
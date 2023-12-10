with orders as (
    select * from {{source('TPCH','ORDERS')}}
)

select *
from orders
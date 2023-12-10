with supplier as (
    select * from {{source('TPCH','SUPPLIER')}}
)

select *
from supplier
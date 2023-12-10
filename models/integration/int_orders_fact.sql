with orders as (

    select *
    from {{ref('stg_lineitem')}} l
    left join {{ref('stg_orders')}} o
    on l.l_orderkey = o.o_orderkey
    order by l.l_orderkey
)


select * from orders
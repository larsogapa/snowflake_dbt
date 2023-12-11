with orders as (
    select 
    l.L_ORDERKEY as orderkey,
    l.L_PARTKEY as PARTKEY,
    l.L_SUPPKEY as SUPPKEY,
    o.o_custkey as custkey,
    l.L_LINENUMBER as linenumber,
    l.L_QUANTITY as quantity,
    l.L_EXTENDEDPRICE as Extendedprice,
    l.L_DISCOUNT as discount,
    l.L_TAX as tax,
    l.L_RETURNFLAG as RETURNFLAG,
    l.L_LINESTATUS as linestatus,
    l.L_SHIPDATE as shipdate,
    l.L_COMMITDATE as commidate,
    l.L_RECEIPTDATE as receipdate,
    l.L_SHIPINSTRUCT as shipinstruct,
    l.L_SHIPMODE as shipmode,
    l.L_COMMENT as comment,
    o.o_orderstatus as orderstatus,
    o.o_totalprice as totalprice,
    o.o_orderdate as orderdate,
    o.o_orderpriority as orderpriority,
    o.o_clerk as clerk,
    o.o_shippriority as shippriority
    from {{ref('stg_lineitem')}} l
    left join {{ref('stg_orders')}} o
    on l.l_orderkey = o.o_orderkey
)


select * from orders
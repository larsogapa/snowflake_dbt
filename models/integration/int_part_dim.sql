with part as (
    SELECT P.P_PARTKEY AS PART_NK,
    P.P_NAME AS NAME,
    P.P_MFGR AS MFGR,
    P.P_BRAND AS BRAND,
    P.P_TYPE AS TYPE,
    P.P_SIZE AS SIZE,
    P.P_CONTAINER AS CONTAINER,
    P.P_RETAILPRICE AS RETAILPRICE,
    P.P_COMMENT AS COMMENT,
    s.s_name AS Supplier,
    ps.ps_availqty AS availqty,
    ps.ps_supplycost AS supplycost
    FROM {{ref("stg_part")}} P
    LEFT JOIN {{ref('stg_partsupp')}} PS 
    ON p.p_partkey = PS.ps_partkey
    LEFT JOIN {{ref("stg_supplier")}} s
    ON PS.ps_suppkey = s.s_suppkey
)

select * from part

insert /*+append*/ into h_customer
select * from customer_ext;

insert /*+append*/ into h_lineitem
select l_orderkey,
       l_partkey,
       l_suppkey,
       l_linenumber,
       l_quantity,
       l_extendedprice,
       l_discount,
       l_tax,
       l_returnflag,
       l_linestatus,
       to_date(l_shipdate, 'YYYY-MM-DD'),
       to_date(l_commitdate, 'YYYY-MM-DD'),
       to_date(l_receiptdate, 'YYYY-MM-DD'),
       l_shipinstruct,
       l_shipmode,
       l_comment
from lineitem_ext;

insert  /*+append*/ into h_nation
select * from nation_ext;

insert /*+append*/ into h_order
select o_orderkey,
       o_custkey,
       o_orderstatus,
       o_totalprice,
       to_date(o_orderdate, 'YYYY-MM-DD'),
       o_orderpriority,
       o_clerk,
       o_shippriority,
       o_comment
from order_ext;

insert /*+append*/ into h_part
select * from part_ext;

insert /*+append*/ into h_partsupp
select * from partsupp_ext;

insert /*+append*/ into h_region
select * from region_ext;

insert /*+append*/ into h_supplier
select * from supplier_ext;

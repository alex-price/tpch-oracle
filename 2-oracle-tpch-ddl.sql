
drop table h_customer cascade constraints;
drop table customer_ext;
drop table h_lineitem cascade constraints;
drop table lineitem_ext;
drop table h_nation cascade constraints;
drop table nation_ext;
drop table h_order cascade constraints;
drop table order_ext;
drop table h_part cascade constraints;
drop table part_ext;
drop table h_partsupp cascade constraints;
drop table partsupp_ext;
drop table h_region cascade constraints;
drop table region_ext;
drop table h_supplier cascade constraints;
drop table supplier_ext;

create table customer_ext (
  c_custkey number(10),
  c_name varchar2(25),
  c_address varchar2(40),
  c_nationkey number(10),
  c_phone varchar2(15),
  c_acctbal number,
  c_mktsegment varchar2(10),
  c_comment varchar2(117)
) organization external (
  type oracle_loader default directory import_dir
  access parameters (
    fields terminated by '|'
    missing field values are null
  )
  location('customer.tbl')
);

create table h_customer (
  c_custkey number(10) not null,
  c_name varchar2(25) not null,
  c_address varchar2(40) not null,
  c_nationkey number(10) not null,
  c_phone varchar2(15) not null,
  c_acctbal number not null,
  c_mktsegment varchar2(10) not null,
  c_comment varchar2(117) not null
);

create table lineitem_ext (
  l_orderkey number(10),
  l_partkey number(10),
  l_suppkey number(10),
  l_linenumber number(38),
  l_quantity number,
  l_extendedprice number,
  l_discount number,
  l_tax number,
  l_returnflag char(1),
  l_linestatus char(1),
  l_shipdate varchar2(10),
  l_commitdate varchar2(10),
  l_receiptdate varchar2(10),
  l_shipinstruct varchar2(25),
  l_shipmode varchar2(10),
  l_comment varchar2(44)
) organization external (
  type oracle_loader default directory import_dir
  access parameters (
    fields terminated by '|'
    missing field values are null
  )
  location('lineitem.tbl')
);

create table h_lineitem (
  l_orderkey number(10) not null,
  l_partkey number(10) not null,
  l_suppkey number(10) not null,
  l_linenumber integer not null,
  l_quantity number not null,
  l_extendedprice number not null,
  l_discount number not null,
  l_tax number not null,
  l_returnflag char(1) not null,
  l_linestatus char(1) not null,
  l_shipdate date not null,
  l_commitdate date not null,
  l_receiptdate date not null,
  l_shipinstruct varchar2(25) not null,
  l_shipmode varchar2(10) not null,
  l_comment varchar2(44) not null
);

create table nation_ext (
  n_nationkey number(10),
  n_name varchar2(25),
  n_regionkey number(10),
  n_comment varchar2(152)
) organization external (
  type oracle_loader default directory import_dir
  access parameters (
    fields terminated by '|'
    missing field values are null
  )
  location('nation.tbl')
);

create table h_nation (
  n_nationkey number(10) not null,
  n_name varchar2(25) not null,
  n_regionkey number(10) not null,
  n_comment varchar2(152) not null
);

create table order_ext (
  o_orderkey number(10),
  o_custkey number(10),
  o_orderstatus char(1),
  o_totalprice number,
  o_orderdate varchar2(10),
  o_orderpriority varchar2(15),
  o_clerk varchar2(15),
  o_shippriority number(38),
  o_comment varchar2(79)
) organization external (
  type oracle_loader default directory import_dir
  access parameters (
    fields terminated by '|'
    missing field values are null
  )
  location('orders.tbl')
);

create table h_order (
  o_orderkey number(10) not null,
  o_custkey number(10) not null,
  o_orderstatus char(1) not null,
  o_totalprice number not null,
  o_orderdate date not null,
  o_orderpriority varchar2(15) not null,
  o_clerk varchar2(15) not null,
  o_shippriority integer not null,
  o_comment varchar2(79) not null
);

create table part_ext (
  p_partkey number(10),
  p_name varchar2(55),
  p_mfgr varchar2(25),
  p_brand varchar2(10),
  p_type varchar2(25),
  p_size number(38),
  p_container varchar2(10),
  p_retailprice number,
  p_comment varchar2(23)
) organization external (
  type oracle_loader default directory import_dir
  access parameters (
    fields terminated by '|'
    missing field values are null
  )
  location('part.tbl')
);

create table h_part (
  p_partkey number(10) not null,
  p_name varchar2(55) not null,
  p_mfgr varchar2(25) not null,
  p_brand varchar2(10) not null,
  p_type varchar2(25) not null,
  p_size integer not null,
  p_container varchar2(10) not null,
  p_retailprice number not null,
  p_comment varchar2(23) not null
);

create table partsupp_ext (
  ps_partkey number(10),
  ps_suppkey number(10),
  ps_availqty number(38),
  ps_supplycost number,
  ps_comment varchar2(199)
) organization external (
  type oracle_loader default directory import_dir
  access parameters (
    fields terminated by '|'
    missing field values are null
  )
  location('partsupp.tbl')
);

create table h_partsupp (
  ps_partkey number(10) not null,
  ps_suppkey number(10) not null,
  ps_availqty integer not null,
  ps_supplycost number not null,
  ps_comment varchar2(199) not null
);

create table region_ext (
  r_regionkey number(10),
  r_name varchar2(25),
  r_comment varchar2(152)
) organization external (
  type oracle_loader default directory import_dir
  access parameters (
    fields terminated by '|'
    missing field values are null
  )
  location('region.tbl')
);

create table h_region (
  r_regionkey number(10) not null,
  r_name varchar2(25) not null,
  r_comment varchar2(152) not null
);

create table supplier_ext (
  s_suppkey number(10),
  s_name varchar2(25),
  s_address varchar2(40),
  s_nationkey number(10),
  s_phone varchar2(15),
  s_acctbal number,
  s_comment varchar2(101)
) organization external (
  type oracle_loader default directory import_dir
  access parameters (
    fields terminated by '|'
    missing field values are null
  )
  location('supplier.tbl')
);

create table h_supplier (
  s_suppkey number(10) not null,
  s_name varchar2(25) not null,
  s_address varchar2(40) not null,
  s_nationkey number(10) not null,
  s_phone varchar2(15) not null,
  s_acctbal number not null,
  s_comment varchar2(101) not null
);

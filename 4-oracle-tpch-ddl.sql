
alter table h_customer add primary key (c_custkey);
alter table h_lineitem add primary key (l_linenumber, l_orderkey);
alter table h_nation add primary key (n_nationkey);
alter table h_order add primary key (o_orderkey);
alter table h_part add primary key (p_partkey);
alter table h_partsupp add primary key(ps_partkey, ps_suppkey);
alter table h_region add primary key (r_regionkey);
alter table h_supplier add primary key (s_suppkey);

alter table h_customer add foreign key (c_nationkey) references h_nation (n_nationkey);
alter table h_lineitem add foreign key (l_orderkey) references h_order (o_orderkey);
alter table h_lineitem add foreign key (l_partkey, l_suppkey) references h_partsupp (ps_partkey, ps_suppkey);
alter table h_nation add foreign key (n_regionkey) references h_region (r_regionkey);
alter table h_order add foreign key (o_custkey) references h_customer (c_custkey);
alter table h_partsupp add foreign key (ps_suppkey) references h_supplier (s_suppkey);
alter table h_supplier add foreign key (s_nationkey) references h_nation (n_nationkey);

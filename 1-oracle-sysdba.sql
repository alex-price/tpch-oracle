
create tablespace tpch_ts datafile size 100m autoextend on next 100m nologging;

create user tpch identified by tpch temporary tablespace temp default tablespace tpch_ts;

grant connect,resource to tpch;

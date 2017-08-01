
# Steps for setting up the TPC-H dataset locally in Oracle.

## Install an Oracle database locally for testing.

Clone the Oracle (docker-images)[https://github.com/oracle/docker-images] and read the instructions for (OracleDatabase )[https://github.com/oracle/docker-images/tree/master/OracleDatabase]. You will have to download one of the supported versions directly from Oracle. There is a shell script that will compose a docker-image of that version installed.

## Look at the TPC-H dataset.

Orders -> Customers
Orders -> LineItems
LineItems -> Part -> PartSupp

## Use the TPC-H toolset to generate sample data in delimited text files.

TBD

## Generate the TPC-H schema in Oracle.

Create the TPCH user (as SYSDBA):
* 1-oracle-sysdba.sql

Initialize the schema (as TPCH):
* 2-oracle-tpch-ddl.sql

## Import the generated data into Oracle.

Import the data from flat files (as external tables) into Oracle tables:
* 3-oracle-tpch-dml.sql

Define and enable constraints:
* 4-oracle-tpch-ddl.sql

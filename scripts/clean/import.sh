#!/bin/sh
set -e
set -x


# Import database scheme
psql -p 15431 -h localhost -U postgres -f archive/clean/sql/schema.sql postgres


## Import database data
for sqlfile in $(ls archive/clean/sql/data-*); do
    psql -p 15431 -h localhost -U postgres -f "${sqlfile}" postgres
done


# Import database foreign keys
psql -p 15431 -h localhost -U postgres -f archive/clean/sql/foreignkeys.sql postgres

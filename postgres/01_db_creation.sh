#!/bin/bash
# Create openempi role and database

psql -U postgres <<-EOSQL
  CREATE ROLE openempi LOGIN PASSWORD 'openempi' SUPERUSER VALID UNTIL 'infinity';
  CREATE DATABASE openempi WITH ENCODING='UTF8' OWNER=openempi CONNECTION LIMIT=-1;
EOSQL

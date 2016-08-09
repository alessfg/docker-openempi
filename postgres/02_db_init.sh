#!/bin/bash
# Populate database schema with scripts

psql -U openempi -d openempi <<-EOSQL
  \i ./scripts/01_create_new_database_schema-3.0.0.sql;
  \i ./scripts/02_create_person_entity_model_definition.sql;
  \i ./scripts/03_create_person_reference_tables.sql;
  \i ./scripts/04_update_database_schema-3.1.0.sql;
EOSQL

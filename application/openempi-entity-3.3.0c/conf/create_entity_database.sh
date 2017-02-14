#!/bin/bash
#
if [ $# -eq 0 ]; then
    echo "You must specify the directory where the SQL scripts will be loaded from."
    exit 1
fi

SCRIPT_DIR=$1
echo "Loading scripts from $1"

export PGPASSWORD=openempi

dbpresent=`psql --dbname=postgres --host=localhost --username=openempi \
  --command="select datname from pg_database" | grep openempi`
if [ -z $dbpresent ]
then
  echo "The database openempi does not yet exist; it must be created first."
  exit 1
fi

rolepresent=`psql --dbname=openempi --host=localhost --username=openempi \
  --command="select rolname from pg_roles where rolname='openempi'" | grep openempi`

if [ -z $rolepresent ]
then
  echo "The openempi database roles does not exist; it must be created first."
  exit 1
fi

schemapresent=`psql --dbname=openempi --host=localhost --username=openempi \
  --command="select tablename from pg_tables where tablename='entity_attribute'" | grep entity`
if [ ! -z $schemapresent ]
then
  echo "OpenEMPI schema has already been created in the database."
  exit 0
fi

echo "Creating database schema"
psql --dbname=openempi --host=localhost --username=openempi -f $SCRIPT_DIR/create_new_database_schema-3.0.0.sql
echo "Updating database schema to the latest version"
psql --dbname=openempi --host=localhost --username=openempi -f $SCRIPT_DIR/update_database_schema-3.1.0.sql
psql --dbname=openempi --host=localhost --username=openempi -f $SCRIPT_DIR/update_database_schema-3.2.0.sql
psql --dbname=openempi --host=localhost --username=openempi -f $SCRIPT_DIR/update_database_schema-3.3.0.sql
echo "Loading reference data"
psql --dbname=openempi --host=localhost --username=openempi -f $SCRIPT_DIR/create_person_reference_tables.sql
echo "Loading person entity definition"
psql --dbname=openempi --host=localhost --username=openempi -f $SCRIPT_DIR/create_person_entity_model_definition.sql

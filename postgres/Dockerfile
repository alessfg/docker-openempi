FROM postgres:9.4

MAINTAINER Alessandro Fael Garcia <alessfg@hotmail.com>

LABEL OpenEMPI-Version="3.1.0" \
      Description="Docker image for the openEMPI database"

# Copy files required to initialise Postgres with the OpenEMPI database schema
COPY ./scripts ./scripts
COPY ./01_db_creation.sh ./docker-entrypoint-initdb.d/01_db_creation.sh
COPY ./02_db_init.sh ./docker-entrypoint-initdb.d/02_db_init.sh

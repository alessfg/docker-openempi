#!/bin/bash
# Define environment variables required for Tomcat

export OPENEMPI_HOME=/etc/opt/openempi-entity-3.3.0c
export CATALINA_OPTS="-Xms128m -Xmx2048m -XX:MaxPermSize=512m \
                      -Dopenempi.home=$OPENEMPI_HOME \
                      -Djdbc.url=jdbc\:postgresql\://postgres:5432/openempi"

FROM tomcat:7

MAINTAINER Alessandro Fael Garcia <alessfg@hotmail.com>

LABEL OpenEMPI-Version="3.1.0" \
      Description="Docker image for the OpenEMPI application"

# Copy OpenEMPI files into their corresponding directories
COPY ./openempi-3.1.0/lib/openempi-3.1.0.war /opt/openempi-3.1.0/lib/openempi-3.1.0.war
COPY ./openempi-3.1.0/conf /etc/opt/openempi-3.1.0/conf
COPY ./openempi-3.1.0/conf/openempi-admin.xml /usr/local/tomcat/conf/Catalina/localhost/openempi-admin.xml
COPY ./setenv.sh /usr/local/tomcat/bin/setenv.sh
COPY ./wait-for-it.sh /opt/openempi-3.1.0/bin/wait-for-it.sh

# Make startup script executable
RUN chmod +x /opt/openempi-3.1.0/bin/wait-for-it.sh

# Expose port 8080 outside of Docker
EXPOSE 8080

# Initialisation scripts
# Wait until database is available
# Then proceed to start Tomcat
CMD /opt/openempi-3.1.0/bin/wait-for-it.sh postgres:5432 -t 60 && \
  catalina.sh run

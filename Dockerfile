FROM tomcat:8.0.43-jre8
ADD geoserver-2.15.2-war/geoserver.war /usr/local/tomcat/webapps/
ADD tomcat-users.xml /usr/local/tomcat/conf/
# Set location for geoserver config
#ENV GEOSERVER_DATA_DIR=/root
#RUN mkdir /usr/local/tomcat/webapps/geoserver/data/jdbcconfig
#ADD jdbcconfig.properties /usr/local/tomcat/webapps/geoserver/data/jdbcconfig
EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
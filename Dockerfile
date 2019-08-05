FROM tomcat:8.0.43-jre8
ADD geoserver-2.15.2-war/geoserver.war /usr/local/tomcat/webapps/
ADD tomcat-users.xml /usr/local/tomcat/conf/
# ADD server.xml /usr/local/tomcat/conf/
EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
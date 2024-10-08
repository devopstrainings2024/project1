FROM tomcat
WORKDIR /usr/local/tomcat/webapps
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
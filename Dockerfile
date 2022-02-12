FROM tomcat:8.5
RUN echo "export JAVA_OPTS=\"-Dapp.env=staging\"" > /usr/local/tomcat/bin/setenv.sh
COPY target/demo.war /usr/local/tomcat/webapps/demo.war

EXPOSE 8081
CMD ["catalina.sh", "run"]

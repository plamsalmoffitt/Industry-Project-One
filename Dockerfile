FROM tomcat:8.0-alpine

LABEL maintainer="devopsconsious@gmail.com"

ADD **/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]

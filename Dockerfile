FROM tomcat:8

ADD docker/backend/conf/ /usr/local/tomcat/conf/

RUN ["rm", "-r", "/usr/local/tomcat/webapps"]

RUN apt-get update && apt-get install --assume-yes openjdk-8-jdk

ADD kotlin.web.demo.backend/build/libs/WebDemoBackend.war /usr/local/tomcat/webapps/ROOT.war

ADD kotlin-backend.sh .

CMD ./kotlin-backend.sh

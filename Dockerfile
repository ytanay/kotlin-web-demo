FROM kotlin-backend-base

ADD kotlin.web.demo.backend/build/libs/WebDemoBackend.war /usr/local/tomcat/webapps/ROOT.war

ADD kotlin-backend.sh .

CMD ./kotlin-backend.sh

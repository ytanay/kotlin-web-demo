echo "Setting $PORT"
sed -i -e "s/port=\"8080\"/port=\"${PORT}\"/g" /usr/local/tomcat/conf/server.xml
cat /usr/local/tomcat/conf/server.xml | grep port=

echo "Resetting webapp"
ls -l /usr/local/tomcat/webapps
mv /usr/local/tomcat/webapps/ROOT.war /tmp/ROOT.war
rm -r /usr/local/tomcat/webapps
mkdir /usr/local/tomcat/webapps
mv /tmp/ROOT.war /usr/local/tomcat/webapps/ROOT.war
ls -l /usr/local/tomcat/webapps

echo "Starting!"
catalina.sh run

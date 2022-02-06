FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y tomcat8
RUN apt-get install -y maven
RUN apt-get install -y git
EXPOSE 8080
RUN git clone https://github.com/deepshankaryadav/CyberFRAT-DevSecOps-Training-Sample-Java-App.git "/tmp/mvn/1"
RUN mvn package -B -f /tmp/mvn/1
RUN cp /tmp/mvn/1/target/WebApp.war /var/lib/tomcat8/webapps/
CMD /opt/tomcat/bin/catalina.sh run && tail -f /opt/tomcat/logs/catalina.out
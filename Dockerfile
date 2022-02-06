FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install default-jdk
RUN wget /home/tomcat9/ https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz
RUN tar xzvf /home/tomcat9/apache-tomcat-9.0.58.tar.gz -C "/home/tomcat9/"
#RUN apt-get install -y tomcat8
#RUN groupadd tomcat
#RUN useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
RUN
RUN apt-get install -y maven
RUN apt-get install -y git
RUN git clone https://github.com/deepshankaryadav/CyberFRAT-DevSecOps-Training-Sample-Java-App.git "/tmp/mvn/1"
RUN mvn package -B -f /tmp/mvn/1
EXPOSE 8080
RUN cp /tmp/mvn/1/target/WebApp.war /home/tomcat9/webapps/
CMD [/home/severov/tomcat9/apache-tomcat-9.0.58/bin/catalina.sh, "run"]

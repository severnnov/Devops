FROM ubuntu:16.04
RUN apt-get update && apt-get install -y default-jdk wget
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz
RUN mkdir /home/tomcat9/
RUN tar xzvf apache-tomcat-9.0.58.tar.gz -C "/home/tomcat9/"
EXPOSE 8080

CMD ["/home/tomcat9/apache-tomcat-9.0.58/bin/catalina.sh", "run"]
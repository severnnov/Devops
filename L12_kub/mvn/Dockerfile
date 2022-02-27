FROM ubuntu:16.04
RUN apt-get update && apt-get install -y wget maven git
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git "/tmp/mvn/1"
RUN wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.28/mysql-connector-java-8.0.28.jar "/tmp/mvn/1/App42PaaS-Java-MySQL-Sample/WebContent/WEB-INF/lib/"
RUN mvn package -B -f "/tmp/mvn/1"
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y wget default-jdk maven git
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git "/tmp/mvn/1"
ADD pom.xml /tmp/mvn/1
RUN mvn package -B -f "/tmp/mvn/1"
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y default-jdk wget maven git
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git "/tmp/mvn/1" && rm /tmp/mvn/1/WebContent/Config.properties
RUN mvn package -B -f "/tmp/mvn/1"
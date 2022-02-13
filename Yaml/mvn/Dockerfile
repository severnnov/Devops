FROM ubuntu:16.04
RUN apt-get update && apt-get install -y default-jdk wget maven git
RUN git clone https://github.com/deepshankaryadav/CyberFRAT-DevSecOps-Training-Sample-Java-App.git "/tmp/mvn/1"
RUN mvn package -B -f "/tmp/mvn/1"
EXPOSE 8080
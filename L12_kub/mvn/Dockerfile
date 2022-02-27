FROM ubuntu:16.04
RUN apt-get update && apt-get install -y default-jdk wget maven git
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git "/tmp/mvn/1"
RUN echo "app42.paas.db.username = "acp4pogynvaeidfj" > /tmp/mvn/1/WebContent/Config.properties &&\
echo "app42.paas.db.port = "3306" >> /tmp/mvn/1/WebContent/Config.properties &&\
echo "app42.paas.db.password = "jc31d2qyy7h9jv5jn1u9uosjksxzaizw" >> /tmp/mvn/1/WebContent/Config.properties &&\
echo "app42.paas.db.ip = "0.0.0.0" >> /tmp/mvn/1/WebContent/Config.properties &&\
echo "app42.paas.db.name = "dd" >> /tmp/mvn/1/WebContent/Config.properties
RUN mvn package -B -f "/tmp/mvn/1"
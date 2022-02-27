FROM ubuntu:16.04
RUN apt-get update && apt-get install -y default-jdk wget maven git
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git "/tmp/mvn/1"
RUN echo > /tmp/mvn/1/App42PaaS-Java-MySQL-Sample/WebContent/Config.properties \
"app42.paas.db.username = "acp4pogynvaeidfj" \
app42.paas.db.port = "3306" \
app42.paas.db.password = "jc31d2qyy7h9jv5jn1u9uosjksxzaizw" \
app42.paas.db.ip = "0.0.0.0" \
app42.paas.db.name = "dd""
RUN mvn package -B -f "/tmp/mvn/1"
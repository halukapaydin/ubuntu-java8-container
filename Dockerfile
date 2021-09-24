FROM ubuntu:impish
VOLUME ["/tmp","/dev/shm"]

RUN mkdir -p /opt/tscope
RUN apt-get update && apt-get install -y wget
WORKDIR /opt/tscope
RUN wget https://github.com/halukapaydin/ubuntu-java8-container/raw/main/jdk-8u202-linux-x64.tar.gz
RUN tar xf jdk-8u202-linux-x64.tar.gz
RUN rm -fr jdk-8u202-linux-x64.tar.gz
RUN echo "JAVA_HOME=/opt/tscope/jdk1.8.0_202" >> /etc/environment
RUN ln -s /opt/tscope/jdk1.8.0_202/bin/java /usr/bin/java


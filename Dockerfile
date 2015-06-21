FROM java:openjdk-8-jdk
MAINTAINER Shixiong Zhu <zsxwing@gmail.com>

RUN apt-get update && apt-get install -y \
  vim \
  time \
  python3

RUN echo export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 >> /root/.bashrc

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

ADD start.sh /root/

CMD /root/start.sh


# VERSION 0.1.0

FROM jamesdbloom/docker-java6-maven

MAINTAINER shadab siddiqui <siddshadab7@gmail.com>
LABEL Description="This image provides Oracle JDK 1.6" \
      License="MIT" \
      Version="0.1.0"

ENV JAVA_HOME /usr/lib/jvm/java-6-oracle/
RUN export JAVA_HOME

#FROM adoptopenjdk/openjdk8:ubi
WORKDIR ./opt/openreports
RUN mkdir ./temp
COPY ./database ./database
COPY ./openreports ./openreports
COPY ./reports ./reports
COPY ./startup.sh ./
COPY ./tomcat ./tomcat
EXPOSE 8080
CMD ["/bin/bash", "./startup.sh"]

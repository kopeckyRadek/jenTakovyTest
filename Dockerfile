#
FROM openjdk:8-jdk-alpine

RUN /bin/bash apt-get install -y nodejs

RUN /bin/bash -c 'npm install newman --global'
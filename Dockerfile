#
FROM openjdk:8-jdk-alpine

#Installs newman (postman cmd)
RUN apk add --update nodejs nodejs-npm
RUN npm install newman --global
RUN newman --version

VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar", "/app.jar"]
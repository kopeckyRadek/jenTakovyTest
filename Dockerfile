FROM alpine:3.5

RUN uname -a
RUN apk update

RUN apk add openjdk8
RUN java -version

RUN apk add --update nodejs
RUN npm install newman --global
RUN newman --version

VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]
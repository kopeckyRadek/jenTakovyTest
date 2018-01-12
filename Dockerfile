#
FROM maven:3-alpine

#Installs newman (postman cmd)
RUN apk add --update nodejs nodejs-npm
RUN npm install newman --global
RUN newman --version
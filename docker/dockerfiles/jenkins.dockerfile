FROM jenkins/jenkins:alpine

LABEL maintainer="davegthemighty@hotmail.com"

COPY ./docker/config/jenkins/plugins.txt /usr/share/jenkins/plugins.txt

RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/plugins.txt

EXPOSE 8080
FROM openjdk:8u181-jre-stretch

ARG ARTIFACT
ADD $ARTIFACT /opt/app/app.jar

RUN["java", "-jar", "/opt/app/app.jar"]


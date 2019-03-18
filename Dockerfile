FROM openjdk:8-jdk-alpine

ADD ./target/*.jar /opt/app/app.jar

RUN["java", "-jar", "/opt/app/app.jar"]


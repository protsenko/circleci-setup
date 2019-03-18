FROM openjdk:8u181-jre-stretch

ADD ./target/*.jar /opt/app/app.jar

CMD ["java", "-jar", "/opt/app/app.jar"]
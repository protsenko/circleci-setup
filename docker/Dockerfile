FROM openjdk:8u181-jre-stretch

ARG ARTIFACT
ADD $ARTIFACT /opt/app/app.jar
ENV APP_JAR="/opt/app/app.jar"

ADD ./docker/run.sh /opt/app/run.sh
RUN chmod a+x /opt/app/run.sh
ENTRYPOINT ["/opt/app/run.sh"]



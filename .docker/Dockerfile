FROM openjdk:8-jre-slim

ARG VCS_REF
ARG PROJECT_NAME
ARG PROJECT_REPO_URL
ARG BUILD_DATE

LABEL \
    org.label-schema.schema-version="1.0" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.name=$PROJECT_NAME \
    org.label-schema.vcs-url=$PROJECT_REPO_URL \
    org.label-schema.description="Simple project for integration GitHub, CircleCI, SonarCloud, and DockerHub." \
    org.label-schema.vendor="protsenko"

ADD ./target/$PROJECT_NAME-*.jar /opt/app/app.jar
ADD .docker/entrypoint.sh /opt/app/entrypoint.sh
RUN chmod +x /opt/app/entrypoint.sh

EXPOSE 8080
ENTRYPOINT ["/opt/app/entrypoint.sh"]

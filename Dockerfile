FROM openjdk:8-jre-slim

ARG VCS_REF
ARG PROJECT_NAME
ARG PROJECT_REPO_URL

LABEL \
    org.label-schema.schema-version="1.0" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.name=$PROJECT_NAME \
    org.label-schema.vcs-url=$PROJECT_REPO_URL \
    org.label-schema.vendor="protsenko"

ADD ./target/*.jar /opt/app/app.jar

CMD ["java", "-jar", "/opt/app/app.jar"]
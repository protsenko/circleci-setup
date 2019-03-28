#!/usr/bin/env bash

set -Eeuo pipefail

if [ -z ${SPRING_PROFILE+x} ]; then
    echo "SPRING_PROFILE environment variable is undefined";
    exit 1;
fi
APP_OPT="-Dspring.profiles.active=$SPRING_PROFILE"

RUN_APP="java ${APP_OPT} -jar /opt/app/app.jar"

echo $RUN_APP
exec $RUN_APP
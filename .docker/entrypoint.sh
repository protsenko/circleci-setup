#!/usr/bin/env bash

set -Eeuo pipefail

## Spring profile
if [ -z ${SPRING_PROFILE+x} ]; then
    echo "SPRING_PROFILE environment variable is undefined";
    exit 1;
fi

## -Xmx option
MAX_MEM=""
if [ -z ${MAX_MEMORY+x} ]; then
    echo "MAX_MEMORY is undefined. Default value is 128m";
    MAX_MEM="128m"
else
    MAX_MEM=$MAX_MEMORY
fi

## -Xms option
MIN_MEM=""
if [ -z ${MIN_MEMORY+x} ]; then
    echo "MIN_MEMORY is undefined. Default value is 64m";
    MIN_MEM="64m"
else
    MIN_MEM=$MIN_MEMORY
fi


APP_OPT="-Dspring.profiles.active=$SPRING_PROFILE -Xmx$MAX_MEM -Xms$MIN_MEM"
RUN_APP="java ${APP_OPT} -jar /opt/app/app.jar"

echo $RUN_APP
exec $RUN_APP
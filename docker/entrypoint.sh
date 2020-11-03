#!/bin/sh
set -e

echo ls
exec java \
    -jar \
    /app.jar

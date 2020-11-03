#!/bin/sh
set -e

ls
exec java \
    -jar \
    /appsdfs.jar

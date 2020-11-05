#!/bin/sh
set -e

ls -alsih
pwd
exec java -jar app.jar

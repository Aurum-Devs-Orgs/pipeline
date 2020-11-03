FROM azul/zulu-openjdk-alpine:11

MAINTAINER payments.domain@lottoland.com

RUN addgroup -S java && adduser -S java -G java

ARG JAR_FILE=target/*.jar

#ENTRYPOINT EXECUTION FILE
COPY --chown=java:java docker/entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

#APP WITH LOG
COPY --chown=java:java ${JAR_FILE} app.jar
COPY --chown=java:java docker/logback.xml logback.xml

EXPOSE 8080

USER java

ENTRYPOINT ["/entrypoint.sh"]
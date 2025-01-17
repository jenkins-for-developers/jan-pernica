FROM openjdk:8-jre-alpine
LABEL MAINTAINER="Damien DUPORTAL <dduportal@cloudbees.com>"

COPY ./target/demoapp.jar /app/app.jar
COPY env-develop.yml /app/config.yml
EXPOSE 8080

ENTRYPOINT ["java","-jar","/app/app.jar"]
CMD ["server","/app/config.yml"]

FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /opt/app
ARG artifacts=target/spring-boot-web.jar
COPY ${artifacts} app.jar
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "app.jar" ]
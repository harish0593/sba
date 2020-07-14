FROM harishsekar/gradle_base:5.1 as build
ENV APP_HOME=/home/spring_hello_app/
COPY . $APP_HOME
WORKDIR $APP_HOME
USER root                
RUN chown -R gradle $APP_HOME 
USER gradle 
RUN gradle clean build --stacktrace

FROM openjdk:8-jre-alpine
WORKDIR /home/spring_hello_app
COPY --from=0 "/home/spring_hello_app/build/libs/spring-boot-gradle-example-1.0.0.jar" .
EXPOSE 8181
ENTRYPOINT [ "java", "-jar", "/home/spring_hello_app/spring-boot-gradle-example-1.0.0.jar"]

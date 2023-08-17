FROM openjdk:17
EXPOSE 8090
ADD target/authentication.jar authentication.jar
ENTRYPOINT ["java","-jar","/authentication.jar"]
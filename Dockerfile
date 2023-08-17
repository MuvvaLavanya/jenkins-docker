FROM openjdk:17
EXPOSE 8081
ADD GymMicroservice/target/gym.jar gym.jar
ENTRYPOINT ["java","-jar","GymMicroservice/target/gym.jar"]
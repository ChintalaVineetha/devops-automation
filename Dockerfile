FROM openjdk:8
EXPOSE 8080
ADD target/devops-integration.jar devops-integration.jar
RUN usermod -aG docker jenkins
ENTRYPOINT ["java","-jar","/devops-integration.jar"]

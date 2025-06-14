FROM openjdk:17
EXPOSE 8080
ADD target/jenkins-dev-ops.jar jenkins-dev-ops.jar
ENTRYPOINT ["java","-jar","/jenkins-dev-ops.jar"]
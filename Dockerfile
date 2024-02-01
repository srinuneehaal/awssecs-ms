#docker login -u "srinivaspalli" -p "Akki123$$" docker.io

#docker build -t srinivaspalli/awssecs-ms:latest .
#docker push srinivaspalli/awssecs-ms:latest
#http://192.168.1.73:8080/hello
FROM openjdk:17
WORKDIR /opt
ENV PORT 8080
EXPOSE 8080
COPY target/*.jar /opt/awssecs-ms.jar
ENTRYPOINT exec java $JAVA_OPTS -jar awssecs-ms.jar
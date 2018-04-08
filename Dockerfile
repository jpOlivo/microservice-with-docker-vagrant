FROM frolvlad/alpine-oraclejdk8:slim
MAINTAINER jpolivo
ADD encripter3des-aas-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 7070
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

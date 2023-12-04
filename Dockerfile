FROM openjdk:21

USER pyo

RUN mkdir -p /home/pyo/app

WORKDIR /home/pyo/app

ADD ./build/libs/kotlindev-0.0.1-SNAPSHOT.jar kotlindev.jar

RUN mkdir logs

ENV JAVA_OPTS=""

EXPOSE 8080

ENTRYPOINT ["nohup", "java", "-jar", "-Duser.timezone=Asia/Seoul", "-Xmx2048m", "/home/pyo/app/kotlindev.jar", "&"]
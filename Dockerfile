FROM openjdk:21

RUN useradd pyo
RUN id

USER pyo
RUN id


RUN mkdir -p /home/pyo/app

WORKDIR /home/pyo/app

ADD ./target/kotlindev-0.0.1-SNAPSHOT.jar kotlindev.jar

RUN mkdir logs

ENV JAVA_OPTS=""

EXPOSE 8080

ENTRYPOINT ["nohup", "java", "-jar", "-Duser.timezone=Asia/Seoul", "-Xmx2048m", "/home/pyo/app/kotlindev.jar", "&"]
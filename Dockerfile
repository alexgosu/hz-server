FROM adoptopenjdk/openjdk11:jre-11.0.16.1_1-alpine

EXPOSE 5701
ENV TZ=Asia/Almaty

ADD ./target/*.jar /opt/app.jar

ENTRYPOINT java -Xms1g -Xmx1g -XX:+UseG1GC -jar /opt/app.jar
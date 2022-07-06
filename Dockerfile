FROM maven:3.8.1-openjdk-17-slim

ARG JAR_FILE=target/*jar
COPY ${JAR_FILE} app.jar
ENV PORT=8066
ENV CLIENT_SERVICE_URL=http://localhost:8066/eureka

ENTRYPOINT ["java","-Xms128M","-Xmx128M","-jar","/app.jar" ,"--server.port=${PORT}" , "--eureka.client.serviceUrl.defaultZone=${CLIENT_SERVICE_URL}"]

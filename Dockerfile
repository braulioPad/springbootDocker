FROM maven as builder
COPY . /app
RUN cd /app && mvn package
FROM openjdk:8-alpine
COPY --from=builder /app/target/springBootTest-0.0.1-SNAPSHOT.jar /opt/app.jar
CMD java -jar /opt/app.jar


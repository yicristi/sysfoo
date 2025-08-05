FROM maven:3.9.6-eclipse-temurin-17-alpine

WORKDIR /build

COPY . .

RUN mvn package -DskipTests && \
    mv target/sysfoo*.jar /run/sysfoo.jar

EXPOSE 8080

CMD java -jar /run/sysfoo.jar


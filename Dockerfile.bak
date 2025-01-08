FROM openjdk:17
RUN mkdir /calculadora
WORKDIR /calculadora
COPY build/libs/calculator-java-gradle-0.0.1-SNAPSHOT.jar calculator-java-gradle.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar","calculator-java-gradle.jar"]

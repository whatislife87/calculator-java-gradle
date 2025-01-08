# OpenJDK 17 이미지 사용
FROM openjdk:17

# 애플리케이션 디렉토리 생성
RUN mkdir /calculadora

# 작업 디렉토리 설정
WORKDIR /calculadora

# JAR 파일 복사
COPY build/libs/calculator-java-gradle-0.0.1-SNAPSHOT.jar calculator-java-gradle.jar

# 포트 노출
EXPOSE 8000

# JVM 옵션 설정
# Xms256m, -Xmx512m: Java 힙 메모리의 최소 크기와 최대 크기를 각각 256MB와 512MB로 설정합니다. 이는 애플리케이션의 메모리 사용량을 제한하고, OutOfMemoryError 발생 가능성을 줄이기 위한 설정입니다.
# -XX:MaxMetaspaceSize=128m: 메타스페이스의 최대 크기를 128MB로 설정합니다. 메타스페이스는 클래스, 메서드, 필드 등의 메타데이터를 저장하는 영역입니다.

ENTRYPOINT ["java", "-Xms256m", "-Xmx512m", "-XX:MaxMetaspaceSize=128m", "-jar", "calculator-java-gradle.jar"]

FROM openjdk:11-jre-slim

# 빌드 결과 디렉토리 지정
ARG JAR_FILE=build/libs/*.jar

# app.jar 파일로 복사
COPY ${JAR_FILE} app.jar

# jar 파일 실행
ENTRYPOINT ["java","-jar","/app.jar"]

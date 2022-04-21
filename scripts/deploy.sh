#!/bin/bash

PROJECT_NAME="spring-webapp"
JAR_FILE="$PROJECT_NAME.jar"
#PROJECT_ROOT="/home/ubuntu/app"
#JAR_FILE="app.jar"
#
## 현재 구동 중인 애플리케이션 pid 확인
#CURRENT_PID=$(pgrep -f $JAR_FILE)
#
## 프로세스가 켜져 있으면 죽이기
#if [ -z $CURRENT_PID ]; then
#else
#  kill -15 $CURRENT_PID
#fi

# build 파일 복사
echo "> 파일 복사" >> susccess_deploy.log
cp ./build/libs/*.jar $JAR_FILE

# jar 파일 실행
echo "> 파일 실행" >> susccess_deploy.log
nohup java -jar $JAR_FILE &

CURRENT_PID=$(pgrep -f $JAR_FILE)
echo "> 실행된 프로세스 아이디 $CURRENT_PID" >> susccess_deploy.log

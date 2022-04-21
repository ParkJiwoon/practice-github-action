#!/bin/bash

PROJECT_ROOT="/home/ubuntu/app"
JAR_FILE="$PROJECT_ROOT/spring-webapp.jar"

APP_LOG="$PROJECT_ROOT/application.log"
ERROR_LOG="$PROJECT_ROOT/error.log"
DEPLOY_LOG="$PROJECT_ROOT/deploy.log"

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
echo "> 파일 복사" >> $DEPLOY_LOG
cp $PROJECT_ROOT/build/libs/*.jar $JAR_FILE

# jar 파일 실행
echo "> 파일 실행" >> $DEPLOY_LOG
nohup java -jar $JAR_FILE > $APP_LOG 2> $ERROR_LOG &

CURRENT_PID=$(pgrep -f $JAR_FILE)
echo "> 실행된 프로세스 아이디 $CURRENT_PID 입니다." >> $DEPLOY_LOG
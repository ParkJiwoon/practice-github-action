#!/bin/bash

REPOSITORY="/home/ubuntu"
JAR_FILE="app.jar"

# 현재 구동 중인 애플리케이션 pid 확인
CURRENT_PID=$(pgrep -f $JAR_FILE)

# 프로세스가 켜져 있으면 죽이기
if [ -z $CURRENT_PID ]; then
  echo "> 현재 구동 중인 애플리케이션이 없으므로 종료하지 않습니다." >> ./error_deploy.log
else
  echo "> 현재 실행중인 애플리케이션 강제 종료 $CURRENT_PID" >> ./error_deploy.log
  kill -15 $CURRENT_PID
fi

# build 파일 복사
cp ./build/libs/*.jar $JAR_FILE

# jar 파일 실행
nohup java -jar $JAR_FILE --server.port=8081 &

sleep 3

echo "> 배포 완료 $(pgrep -f $JAR_FILE)" >> ./error_deploy.log
#!/bin/bash

REPOSITORY="/home/ubuntu"
PROJECT_NAME="app"

# 현재 구동 중인 애플리케이션 pid 확인
CURRENT_PID=$(pgrep -f $PROJECT_NAME | grep java | awk '{print $1}')

# 프로세스가 켜져 있으면 죽이기
if [ -z "$CURRENT_PID" ]; then
  echo "> 현재 구동 중인 애플리케이션이 없으므로 종료하지 않습니다." >> ./error_deploy.log
else
  kill -15 $CURRENT_PID
  sleep 5
fi

# build 파일 복사
cp ./build/libs/*.jar "$PROJECT_NAME.jar"

# jar 파일 찾기
JAR_FILE=$(ls -tr ./*.jar | tail -n 1)

# jar 파일에 실행 권한 추가
chmod +x $JAR_FILE

# jar 파일 실행
nohup java -jar $JAR_FILE > ./nohup.out 2>&1 &

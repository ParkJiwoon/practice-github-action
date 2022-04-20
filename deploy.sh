#!/bin/bash

# docker image 빌드
docker build -t springboot/sample .

# 기존에 떠 있는 도커 컨테이너 종료
docker rm -f codedeploy

# 도커 이미지 삭제
docker rmi springboot/sample

# docker 이미지 실행
docker run -d --name codedeploy -p 8080:8080 springboot/sample

# AWS ECR 에서 도커 이미지 가져오기 위해 인증
(aws ecr get-login --region ap-northeast-2 --no-include-email)

# 기존에 떠 있는 도커 컨테이너 종료
sudo docker rm -f codedeploy

# 도커 이미지 삭제
sudo docker rmi springboot/sample

# 최신 도커 이미지 가져오기
sudo docker pull springboot/sample:latest

# docker 이미지 실행
sudo docker run -d --name codedeploy -p 8080:8080 springboot/sample

# docker image 빌드
sudo docker build -t springboot/sample .

# 기존에 떠 있는 도커 컨테이너 종료
sudo docker rm -f codedeploy

# 도커 이미지 삭제
sudo docker rmi springboot/sample

# docker 이미지 실행
sudo docker run -d --name codedeploy -p 8080:8080 springboot/sample

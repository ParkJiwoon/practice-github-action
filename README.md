# Github Actions Test Repository

Github Actions 테스트용 레포입니다.

전체 정리글은 [Github Actions CD: AWS EC2 에 Spring Boot 배포하기](https://bcp0109.tistory.com/363) 글을 참고하면 됩니다.

주요 파일들은 다음과 같습니다.

- [Github Actions CI Workflow - gradle.yml](https://github.com/ParkJiwoon/practice-github-action/blob/main/.github/workflows/gradle.yml)
- [Github Actions CD Workflow - deploy.yml](https://github.com/ParkJiwoon/practice-github-action/blob/main/.github/workflows/deploy.yml)
- [AppSpec 파일](https://github.com/ParkJiwoon/practice-github-action/blob/main/appspec.yml)
- [배포 스크립트 (start, stop)](https://github.com/ParkJiwoon/practice-github-action/tree/main/scripts)

<br>

## 빌드 파일만 전송

AWS EC2 서버에 전체 프로젝트 코드를 보내지 않고 빌드한 파일만 전달해서 실행시키는 방법도 있습니다.

프로젝트의 크기가 압축해서 전달하기 부담스러울 것 같은데 그럴 때 사용하면 좋을 것 같아요.

수정 사항과 자세한 내용은 [Pull Request](https://github.com/ParkJiwoon/practice-github-action/pull/14) 로 대체합니다.

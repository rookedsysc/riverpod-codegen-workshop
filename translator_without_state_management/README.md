# translator_without_state_management

플러터 리버팟 코드제너레이션 워크샵

1. 프로젝트 실행하기

1) lib/common/papago.dart 파일 추가
2) 파파고 API 사용을 위해 네이버 개발자센터에서 어플리케이션 등록하기
3) iOS나 Android 플랫폼 사용 시 번들 id 혹은 패키지명을 'xyz.penrosesteps.workshops.riverpodcodegen'로 설정. 만약 패키지명 중복으로 플랫폼 설정이 불가하다면 rename 패키지를 이용해 프로젝트 패키지명 변경 후 등록하기
4) API 설정 후 
https://developers.naver.com/apps/#/myapp 에서 client id와 secret를 복사 해 lib/common/papago.dart 파일에 아래 코드 추가
```
const papagoClientId = '복사한 클라이언트 아이디';
const papagoClientSecret = '복사한 시크릿키';
```
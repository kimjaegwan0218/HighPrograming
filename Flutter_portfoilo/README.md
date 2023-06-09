+ # KSU Intro App

- 사용한 프로그램
  * flutter
  * android studio
  * dart
     
- 구성
  * 앱 소개
  * 추가 한 사항

+ ## 수정 내역
> 1. 메인 화면
![메인화면](https://github.com/kimjaegwan0218/HighPrograming/assets/107456389/2406c6de-33e6-4de4-a24f-0a7f37ab031d)

   
> 2. 컨텐츠 수정
![깃허브 아이콘](https://github.com/kimjaegwan0218/HighPrograming/assets/107456389/feaaee20-fb5f-4cac-a9ff-bb9849621101)

>> 깃 허브 아이콘을 추가 후 GitHub API 사
  ```
  IconButton(
            icon: FadeInImage.memoryNetwork(
              width: 24,
              height: 24,
              placeholder: kTransparentImage,
              image: 'https://cdn-icons-png.flaticon.com/512/25/25231.png',
            ) ,
            onPressed:(){
              _launchURL('https://github.com/kimjaegwan0218');
              print('Icon button clicked');
            },
          )
  ```
> url_launcher와 transparent_image pakage를 사용하여 이미지를 바꾸고 url추가
![Screenshot_1686287830](https://github.com/kimjaegwan0218/HighPrograming/assets/107456389/e1b328ee-80e8-42d8-b343-c6ccca0e0b14)

```
leading: IconButton(
                  icon: FadeInImage.memoryNetwork(
                    width: 100,
                    height: 100,
                    placeholder: kTransparentImage,
                    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsHSBkSd_TMhMwZ4pS_XNhfOPW7xCTO5mY3B-lyWTE&s',
                  ),
                  onPressed: () {
                    _launchURL('https://github.com/kimjaegwan0218/HighPrograming/tree/main/KSUIntro');
                  },
                ),       
```
   
* * *
> 참조 링크 [GitHub API](https://docs.github.com/en/rest)


+ # KSU Intro App

- 사용한 프로그램
  * cordova
  * android studio
  * jquery mobile
  * chart.js
  * visualstudio code
     
- 구성
  * 경성대학교 소개
  * 경성대학교 영상
  * 경성대학교 음악
  * 경성대학교 사진
  * 경성대학교 학사통계
  * 단말기 정보

+ ## 수정 내역
> 1. 메인 화면
![Screenshot_1680801652](https://user-images.githubusercontent.com/107456389/230453139-929e8db8-dbbf-42e8-93d4-5f434683333e.png)
   
> 2. 컨텐츠 수정
![Screenshot_1680801660](https://user-images.githubusercontent.com/107456389/230453242-e81ff39a-c484-4174-b170-bd78be4999a1.png)
>> 2-1. css framework bluma를 이용
  ```
  <article class="message is-primary">
		 <div class="message-header">
				<h3>경성대학교 역사</h3>
			</div>
			<div class="message-body"></div>
	</article>
  ```
> 2. 컨텐츠 수정
![Screenshot_1680801670](https://user-images.githubusercontent.com/107456389/230454242-289d4229-39fc-47d9-b4ea-81ea3e346c25.png)
![Screenshot_1680801679](https://user-images.githubusercontent.com/107456389/230454616-9560c360-784f-4a94-8eea-2931cdd9c4a1.png)
![Screenshot_1680801854](https://user-images.githubusercontent.com/107456389/230454654-4b4cfb4c-0c32-4f89-ae6d-be5140ae8cc2.png)
![Screenshot_1680801867](https://user-images.githubusercontent.com/107456389/230454675-205e8aa3-7932-4b0f-b020-733bc50a409f.png)
![Screenshot_1680801882](https://user-images.githubusercontent.com/107456389/230454702-047328b6-cadf-43f8-8c7b-ed452a844c59.png)
>> 2-2. js 이미지 처리를 이용하여 이미지 클릭시 사진이 넘어가도록 수정
![Screenshot_1680801892](https://user-images.githubusercontent.com/107456389/230454821-4a704358-fde0-4355-bc3a-87162a0d6fef.png)
```
<script>var files = ["이미지"];
		var imgs = [];
		for (i = 0; i < files.length; i++) {
			imgs[i] = new Image(); //이미지 객체 생성
			imgs[i].src = files[i];
		}
		var next = 1;
		function change(obj) {
			obj.src = imgs[next].src;
			next++;
			next %= imgs.length;
		}
    </script>
 ~
   <img id="img" style="border:20px ridge wheat;" src="이미지" width="100%" height="100%"
					onclick="change(this)">         
```
> 2-3. chart.js를 이용한 경성대학교 학사 통계
![Screenshot_1680801898](https://user-images.githubusercontent.com/107456389/230455720-9e8b7bbe-de40-4bf0-9d79-e84ee621da42.png)
![Screenshot_1680801902](https://user-images.githubusercontent.com/107456389/230455752-d588c77e-7eeb-42df-abdd-d68b8217daed.png)
> 2-4. cordova plugin을 이용한 단말기 정보 확인
![Screenshot_1680801914](https://user-images.githubusercontent.com/107456389/230456290-fdb85639-8991-4cc0-8a4b-acc5b6fb7b62.png)
   
* * *
> 참조 링크 [KSUIntroApp]

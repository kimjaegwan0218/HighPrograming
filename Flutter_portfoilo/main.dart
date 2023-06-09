import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);


  void _launchURL(String url) async{
    try{
        await launch(
          url,
          forceSafariVC: false,
          forceWebView: false,
          enableJavaScript: true,
        );
    }catch(e){
      print('Could not launch $url: $e ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        actions:<Widget>[
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
        ]
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('About Me', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/my_photo.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 12),
                  Expanded(child: const Text('안녕하세요! 제 이름은 김재관이며, 경성대학교 소프트웨어학과에 재학중입니다.'))
                ],
              ),

              const SizedBox(height: 16),
              const Text('Skills', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const ListTile(
                  title: Text('정보처리기사 필기'),
                  subtitle: Text('정보시스템의 생명주기 전반에 걸친 프로젝트 업무(계획수립, 분석, 설계, 구현, 시험, 유지보수, 운영) 수행 능력을 검증하는 것'),
                  leading: Icon(Icons.mobile_screen_share)),
              const ListTile(
                  title: Text('Auto CAD 2급'),
                  subtitle: Text('컴퓨터를 이용하여 정교하고 복잡한 설계 도면을 모델링하는 소프트 프로그램입니다.'),
                  leading: Icon(Icons.mobile_screen_share)),
              const SizedBox(height: 16),
              const Text('Projects', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ListTile(
                  title: Text('경성대학교 소개 앱'),
                  subtitle: Text('이 앱은 cordova를 이용하여 개발한 앱입니다.'),
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
              ),

              ListTile(
                  title: Text('간단한 Unity Game'),
                  subtitle: Text('이 게임은 Unity로 개발한 게임입니다.'),
                leading: IconButton(
                  icon: FadeInImage.memoryNetwork(
                    width: 75,
                    height: 75,
                    placeholder: kTransparentImage,
                    image: 'https://cdn-icons-png.flaticon.com/512/5969/5969205.png',
                  ),
                  onPressed: () {
                    _launchURL('https://github.com/kimjaegwan0218/ksgame/tree/main/UnityGameUpdate');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Future<Map<String, dynamic>> fetchGitHubUserProfile(String username) async {
  final String url = 'https://api.github.com/users/kimjaegwan0218';
  final http.Response response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return json.decode(response.body) as Map<String, dynamic>;
  } else {
    throw Exception('Failed to fetch user profile.');
  }
}
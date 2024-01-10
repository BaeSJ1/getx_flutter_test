import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_test/src/pages/named/simple_state_manage_page.dart';
import 'package:getx_flutter_test/src/pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //tab바 부분 페이지 생성 참고하기
            ElevatedButton(
                onPressed: (){
                  Get.to(Firstpage());
                },// 버튼 누르면 Firstpage로 넘어간다. GestureDetector의 onTap 설정해보기
                child: Text("일반적인 라우트")),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Get.toNamed("/first");
                },
                child: Text("Named 라우트")),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Get.toNamed("/next", arguments: User(
                    name: "개발하는 남자",
                    age: 32
                  ));
                },
                child: Text("Arguments 전달")),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                    Get.toNamed("/user/28357?name=개남&age=22");
                },
                child: Text("동적 url")),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Get.to(SimpleStateManagePage());
                },
                child: Text("단순상태관리")),
          ],
        ),
      ),
    );
  }
}

class User{
  String name;
  int age;
  User({required this.name, required this.age});
}

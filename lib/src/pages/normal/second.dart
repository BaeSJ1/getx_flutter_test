import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Get.back();
                },
                child: Text("뒤로 이동")),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Get.to(Home());
                  Get.offAll(Home()); //전에 히스토리 싹 다 지워짐. 예) 회원가입 창 같은거 뒤로 가면 안된다
                },
                child: Text("홈 이동"))
          ],
        ),
      )
    );
  }
}

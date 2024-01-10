import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_test/src/pages/normal/second.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Get.to(SecondPage());
                }, child: Text("다음페이지 이동")),
          ],
        ),
      ),
    );
  }
}

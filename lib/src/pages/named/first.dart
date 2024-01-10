import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_test/src/pages/normal/second.dart';

class FirstNamedpage extends StatelessWidget {
  const FirstNamedpage({super.key});

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
                  Get.offNamed("/second");
                }, child: Text("다음페이지 이동")),
          ],
        ),
      ),
    );
  }
}

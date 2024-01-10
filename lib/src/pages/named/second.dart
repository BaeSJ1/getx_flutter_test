import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({super.key});

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
                onPressed: (){},
                child: Text("홈 이동"))
          ],
        ),
      )
    );
  }
}

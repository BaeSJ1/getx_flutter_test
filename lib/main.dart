import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_test/src/pages/named/first.dart';
import 'package:getx_flutter_test/src/pages/named/second.dart';

import 'src/home.dart';
import 'src/pages/normal/next.dart';
import 'src/pages/normal/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
      initialRoute: "/",
      getPages: [
        GetPage(
            name: "/",
            page:() => Home(),
            transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => FirstNamedpage(),
            transition: Transition.zoom),
        GetPage(
            name: "/second",
            page: () => SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/next",
            page: () => NextPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/user/:uid",
            page: () => UserPage(),
            transition: Transition.zoom),
      ],
    );
  }
}

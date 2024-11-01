import 'package:flutter/material.dart';

import '../state/with_getx.dart';
import '../state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("단순상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: WithGetX(),),
            Expanded(child: WithProvider(),),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './page/tabs.dart';

void main() {
  runApp(const MaterialApp(
    //去除debug
    debugShowCheckedModeBanner: false,
    title: "Flutter Demo",
    home: MyTabs(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("测试自定义底部导航栏");
  }
}

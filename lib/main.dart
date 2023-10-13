import 'package:flutter/material.dart';

//引入路由
import './router/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //去除debug
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      // home: Tabs(),
      //初始化路由
      initialRoute: "/",
      //命名路由
      routes: router(context),
    );
  }
}

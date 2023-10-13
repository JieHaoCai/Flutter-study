import 'package:flutter/material.dart';

import './page/tabs.dart';

import './page/search.dart';
import './page/tabs/categroy.dart';
import './page/tabs/home.dart';

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
      //命名路由
      routes: {
        "/search": (context) => const SearchPage(),
        "/": (context) => const HomePage(),
        "/categroy": (context) => const CatrgroyPage()
      },
    );
  }
}

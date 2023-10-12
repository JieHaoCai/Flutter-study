import 'package:flutter/material.dart';

//使用自定义图标
import './selfFont.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ICON'),
        backgroundColor: Colors.yellow,
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(
          Icons.home,
          size: 40,
          color: Colors.red,
        ),
        SizedBox(
          height: 20,
        ),
        //使用自定义图标
        Icon(
          SelfFont.weixin,
          size: 40,
          color: Colors.green,
        )
      ],
    );
  }
}

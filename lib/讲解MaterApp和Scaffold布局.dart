//首先需要引入主题文件
import 'package:flutter/material.dart';

//入口文件
void main() {
  runApp(const myApp());
}

//这种就是自定义组件，并且是一个无状态组件StatelessWidget
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('你好 Flutter'),
        ),
        body: const Center(
          child: Text(
            'hello',
            textDirection: TextDirection.ltr,
            style:
                TextStyle(color: Color.fromRGBO(22, 71, 145, 1), fontSize: 40),
          ),
        ),
      ),
    );
  }
}

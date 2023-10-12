import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('网格布局'),
    ),
    body: const MyApp(),
  )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //水平间距
      crossAxisSpacing: 10,
      //垂直间距
      mainAxisSpacing: 10,
      //主轴数量
      crossAxisCount: 3,
      //设置宽高比,如果设置了宽度和高度那么将失效
      childAspectRatio: 0.7,

      // Generate 100 widgets that display their index in the List.
      children: List.generate(100, (index) {
        return Center(
            child: Container(
          alignment: Alignment.center,
          // width: 100,
          // height: 100,
          decoration: const BoxDecoration(color: Colors.yellow),
          child: Text(
            'Item $index',
            style: const TextStyle(fontSize: 12, color: Colors.blue),
          ),
        ));
      }),
    );
  }
}

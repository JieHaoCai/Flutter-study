import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('你好'),
        ),
        body: const Column(children: [
          MyApp(),
        ])),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(color: Colors.yellow),
          child: Text('hello')),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('动态列表'),
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  List<Widget> _initListData() {
    List<Widget> list = [];

    for (var i = 0; i < 200; i++) {
      list.add(ListTile(
        title: Text("我是一个列表---$i"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: _initListData(),
    );
  }
}

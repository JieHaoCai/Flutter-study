import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('Card卡片'),
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
    //页面显示一个容器，宽度是屏幕的宽度  高度是容器宽度的一半
    // return AspectRatio(
    //   aspectRatio: 2 / 1,
    //   child: Container(
    //     color: Colors.red,
    //   ),
    // );

    List<Widget> _initCard() {
      List<Widget> list = [];
      for (var i = 0; i < 20; i++) {
        list.add(
          const Card(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            elevation: 10, //阴影
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    '张三',
                    style: TextStyle(fontSize: 28),
                  ),
                  subtitle: Text('高级软件工程师'),
                ),
                Divider(),
                ListTile(
                  title: Text('电话:1111111111111111111'),
                ),
                ListTile(
                  title: Text('地址：xxxxxxxxxxxx'),
                ),
              ],
            ),
          ),
        );
      }
      return list;
    }

    //卡片效果
    return ListView(
      children: _initCard(),
    );
  }
}

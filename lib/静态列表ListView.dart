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
    return ListView(
      // scrollDirection: Axis.horizontal, //横向布局
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.map),
          title: Text('Map'),
          subtitle: Text('地图'),
        ),
        Divider(), //横线
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Album'),
          subtitle: Text('专辑'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
          subtitle: Text('手机'),
        ),
        ListTile(
          title: Text('新闻'),
          subtitle: Text('这是一篇新闻'),
          trailing: Image.network(
              "https://p5.img.cntv.cn/photoAlbum/page/performance/img/2023/10/12/1697067789970_707.jpg"),
        ),
        Image.network(
            "https://p4.img.cntv.cn/photoAlbum/page/performance/img/2023/10/12/1697068017268_408.jpg"),
        Container(
          height: 44,
          alignment: Alignment.center,
          child: const Text(
            '我是一个标题',
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}

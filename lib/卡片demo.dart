import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('这是一个基础的页面标题'),
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  List<Widget> _initCard() {
    List<Widget> list = [];

    for (var i = 0; i < 100; i++) {
      list.add(Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        //给他的四周加一个间距
        elevation: 20,
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Column(children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
                "https://p5.img.cntv.cn/photoAlbum/page/performance/img/2023/10/12/1697067789970_707.jpg"),
          ),
          ListTile(
            leading:
                // ClipOval(
                //   child: Image.network(
                //     'https://static.bliiblii.com/static-m/hz-active/img/giftBg.png',
                //     fit: BoxFit.cover,
                //   ),
                // ),
                const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://static.bliiblii.com/static-m/hz-active/img/giftBg.png"),
            ),
            title: Text('标题 $i'),
            subtitle: Text('这是一个简介 $i'),
          )
        ]),
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListView(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: _initCard(),
    );
  }
}

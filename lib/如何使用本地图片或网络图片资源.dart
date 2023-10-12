import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('你好'),
      ),
      body: const Column(children: [
        MyApp(),
        SizedBox(
          height: 20,
        ),
        Circular(),
        SizedBox(
          height: 20,
        ),
        LocalPic()
      ]),
    ),
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
        child: Image.network(
          'https://static.bliiblii.com/static-m/hz-active/img/giftBg.png',
          // scale: 2, //配置缩放
          // alignment: Alignment.centerLeft, //配置布局
          // fit: BoxFit.cover, //裁剪方式  cover
          // repeat: ImageRepeat.repeatX, //平铺方式
        ),
      ),
    );
  }
}

//实现一个圆形图片
class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    //第一种方式
    // return Container(
    //   height: 150,
    //   width: 150,
    //   decoration: BoxDecoration(
    //     color: Colors.yellow,
    //     //相当于背景图片
    //     borderRadius: BorderRadius.circular(75),
    //     image: const DecorationImage(
    //         image: NetworkImage(
    //             'https://static.bliiblii.com/static-m/hz-active/img/mainbg.png'),
    //         fit: BoxFit.contain),
    //   ),
    // );
    //第二种方式
    return ClipOval(
      child: Image.network(
        'https://static.bliiblii.com/static-m/hz-active/img/mainbg.png',
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

//加载本地图片
class LocalPic extends StatelessWidget {
  const LocalPic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Image.asset("images/223-1.png"),
    );
  }
}

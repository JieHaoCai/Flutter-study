//首先需要引入主题文件
import 'package:flutter/material.dart';

//入口文件
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('你好'),
      ),
      body: const Column(children: [MyApp(), MyButton(), MyText()]),
    ),
  ));
}

//这种就是自定义组件，并且是一个无状态组件StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      //元素内方位居中
      alignment: Alignment.center,
      //位移
      transform: Matrix4.translationValues(0, 40, 0),
      //选转
      // transform: Matrix4.rotationZ(0.2),
      width: 200,
      height: 200,
      //设置容器的样式
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.yellow, width: 2),
          borderRadius: BorderRadius.circular(10),
          //配置阴影
          boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 10.0)],
          //背景线性渐变和径向渐变
          gradient: const LinearGradient(colors: [Colors.red, Colors.yellow])),

      child: const Text(
        "你好",
        style: TextStyle(
            color: Color.fromRGBO(19, 79, 134, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ));
  }
}

//创建一个自定义按钮
class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: const Text(
        '点击',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: const BoxDecoration(color: Colors.yellow),
      child: const Text(
        "你好我是Flutter",
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

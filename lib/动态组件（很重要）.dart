import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('有状态组件,实现计数器')),
      body: const HomePage(),
      // 浮动按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    ),
  ));
}

//无状态组件
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("无状态组件");
  }
}

//一般用的比较多的都是有状态组件，如果你想要改变页面中的数据的话就需要使用有状态组件
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _numCount = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          "$_numCount",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(height: 60),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _numCount++;
              });
            },
            child: Text('点击+1,此时 $_numCount')),
        const SizedBox(height: 60),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _numCount = 0;
              });
            },
            child: const Text('重置'))
      ]),
    );
  }
}

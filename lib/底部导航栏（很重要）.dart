import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyBar(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("测试自定义底部导航栏");
  }
}

class MyBar extends StatefulWidget {
  const MyBar({super.key});

  @override
  State<MyBar> createState() => _MyBarState();
}

class _MyBarState extends State<MyBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('自定义底部导航栏'),
      ),
      body: const MyApp(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //默认选中的下标
        currentIndex: _currentIndex,
        //这里改变值需要调用setState，估计是学react的
        onTap: (index) => {setState(() => _currentIndex = index)},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置")
        ],
      ),
    );
  }
}

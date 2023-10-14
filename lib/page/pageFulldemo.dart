import 'package:flutter/material.dart';

class PageFullDemo extends StatefulWidget {
  const PageFullDemo({super.key});

  @override
  State<PageFullDemo> createState() => _PageFullDemoState();
}

class _PageFullDemoState extends State<PageFullDemo> {
  int currentIndex = 0;

  void addListData() {
    for (var i = 0; i < 10; i++) {
      list.add(Center(
        child: Text(
          "第${i + 1}屏",
          style: TextStyle(fontSize: 20),
        ),
      ));
    }
  }

  List<Widget> list = [];
  @override
  void initState() {
    super.initState();
    addListData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("上拉无限加载demo")),
        body: PageView(
          scrollDirection: Axis.vertical,
          onPageChanged: (index) {
            print(index);
            if (index + 2 == list.length) {
              setState(() {
                addListData();
              });
            }
          },
          children: list,
        ));
  }
}

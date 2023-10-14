import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("滑动页面")),
      //pageview的每一个child就是一个页面
      body: PageView(
        //可以设置滚动方位
        scrollDirection: Axis.vertical,
        //页面滚动触发的方法
        onPageChanged: (value) => {print(value)},
        children: [
          Center(
            child: Text(
              "第一屏",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Center(
            child: Text(
              "第二屏",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Center(
            child: Text(
              "第三屏",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ],
      ),
    );
  }
}

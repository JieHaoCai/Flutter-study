import 'package:flutter/material.dart';

import './message.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('首页'),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/search');
                //使用替换路由跳转，相当于干掉前一个页面
                // Navigator.of(context).pushReplacementNamed("/home")

                //直接跳转到message页面，这种跳转方式相当于redirect，会删除前面一个页面
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return MessagePage();
                }), (route) => false);
              },
              child: Text("命名路由跳转")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/pageview");
              },
              child: Text("类似轮播效果或者抖音效果")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/pagebuilder");
              },
              child: Text("使用pageBuilder")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/pagefull");
              },
              child: Text("上拉无限加载")),
        ],
      ),
    );
  }
}

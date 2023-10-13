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

                //直接跳转到message页面
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return MessagePage();
                }), (route) => false);
              },
              child: Text("命名路由跳转"))
        ],
      ),
    );
  }
}
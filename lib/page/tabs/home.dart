import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      child: ListView(
        padding: EdgeInsets.fromLTRB(80, 20, 80, 80),
        children: [
          const Text('首页'),
          ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/search');
                //  Get.toNamed("/search?hello=11111", arguments: {"msg": "hello"});

                //使用替换路由跳转，相当于干掉前一个页面
                // Navigator.of(context).pushReplacementNamed("/home")

                //直接跳转到message页面，这种跳转方式相当于redirect，会删除前面一个页面
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (context) {
                //   return const MessagePage();
                // }), (route) => false);
                // Get.offAll(const MessagePage());
              },
              child: const Text("命名路由跳转")),
          ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/pageview");
                Get.toNamed("/pageview");
              },
              child: const Text("类似轮播效果或者抖音效果")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/pagebuilder", arguments: {});
              },
              child: const Text("使用pageBuilder")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/pagefull");
              },
              child: const Text("上拉无限加载")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/pageanmation");
              },
              child: const Text("动态数据列表")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/mygetx");
              },
              child: const Text("getx的响应式状态管理")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/myinput");
              },
              child: const Text("测试输入框相关业务")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/mywebview");
              },
              child: const Text("测试webview相关业务")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/myi18n");
              },
              child: const Text("测试国际化相关业务")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/mypic");
              },
              child: const Text("测试渐进式图片加载")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/testreq");
              },
              child: const Text("测试网络请求")),
        ],
      ),
    );
  }
}

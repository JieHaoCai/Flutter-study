import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("接收到的数据 ${Get.arguments}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("登录页面"),
      ),
      body: Center(
        child: Column(children: [Text(Get.arguments['msg'])]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final msg; //意味着之后会有参数
  const LoginPage({super.key, this.msg});

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

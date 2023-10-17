import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyI18NPage extends StatelessWidget {
  const MyI18NPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("i18n测试页面"),
      ),
      body: Column(children: [
        Text('hello'.tr),
        ElevatedButton(
          onPressed: () {
            Get.updateLocale(Locale('en', 'US'));
          },
          child: Text("改成英文"),
        ),
        ElevatedButton(
          onPressed: () {
            Get.updateLocale(Locale('zh', 'CN'));
          },
          child: Text("改成中文"),
        )
      ]),
    );
  }
}

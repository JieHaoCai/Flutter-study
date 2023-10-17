import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../store/user.dart';

class CatrgroyPage extends StatefulWidget {
  const CatrgroyPage({super.key});

  @override
  State<CatrgroyPage> createState() => _CatrgroyPageState();
}

class _CatrgroyPageState extends State<CatrgroyPage> {
  //通过Get.find获取同一个控制器实例，可以使用数据,注意，只有先put控制器，才能find，否则会报错
  final UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Obx(() => Text('分类当前store里面的数值: ${userController.count.value}')),
        ElevatedButton(
            onPressed: () {
              //不建议这么改，这样会导致数据的改变无法追踪，尽量调用方法去使用
              // userfind.count.value = 10;
              //建议这么修改
              userController.reset();
            },
            child: const Text("重置"))
      ]),
    );
  }
}

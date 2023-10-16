import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../store/user.dart';

class UserPage extends StatefulWidget {
  UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  //我要改变数据，就使用Get.put
  final UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Obx(() => Text('Count: ${userController.count.value}')),
          ElevatedButton(
              onPressed: () {
                userController.increment();
              },
              child: Text("测试状态管理类似于vuex，去分类页面看看"))
        ],
      ),
    );
  }
}

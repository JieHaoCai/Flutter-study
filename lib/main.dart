import 'package:flutter/material.dart';
import 'package:get/get.dart';
//引入路由
import './router/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //去除debug
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      //初始化路由
      initialRoute: "/",
      //命名路由
      // routes: router(context),
      // 以后统一使用这种方式去管理路由
      getPages: AppPage.routes,
      // onGenerateInitialRoutes: router(context),
      // home: TestGetDialog(),
    );
  }
}

class TestGetDialog extends StatelessWidget {
  const TestGetDialog({super.key});

  Widget _buildtestDialog(context) {
    return ElevatedButton(
        onPressed: () {
          Get.defaultDialog(
              title: "提示信息",
              middleText: "您确定要删除吗？",
              confirm: ElevatedButton(
                  onPressed: () {
                    print("yes");
                    Navigator.pop(context);
                  },
                  child: const Text("yes")),
              cancel: ElevatedButton(
                  onPressed: () {
                    print("no");
                    Navigator.pop(context);
                  },
                  child: const Text("no")));
        },
        child: Text("getx的dialog"));
  }

  Widget _buildtoast() {
    return ElevatedButton(
        onPressed: () {
          Get.snackbar("提示", "您还没有登录", snackPosition: SnackPosition.TOP);
        },
        child: const Text("getx snabar"));
  }

  Widget _buildbottomsheet() {
    return ElevatedButton(
        onPressed: () {
          Get.bottomSheet(Container(
            color: Get.isDarkMode ? Colors.black26 : Colors.white,
            height: 200,
            child: Column(children: [
              ListTile(
                leading: Icon(
                  Icons.wb_sunny_outlined,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                onTap: () {
                  Get.changeTheme(ThemeData.light());
                  Get.back();
                },
                title: const Text("白天模式"),
              ),
              const Divider(),
              ListTile(
                leading: Icon(
                  Icons.wb_sunny,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                onTap: () {
                  Get.changeTheme(ThemeData.dark());
                  Get.back();
                },
                title: const Text("暗黑模式"),
              ),
            ]),
          ));
        },
        child: const Text("getx bottom sheet(切换主题)"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("测试getx")),
        body: Column(
          children: [
            _buildtestDialog(context),
            _buildtoast(),
            _buildbottomsheet(),
          ],
        ));
  }
}

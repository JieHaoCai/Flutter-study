import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGetXState extends StatelessWidget {
  //响应式数据
  RxInt _counter = 0.obs;

  MyGetXState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("测试getx的响应式状态管理")),
      body: Column(
        children: [
          Container(
              child: Obx(
            () => Text(
              "当前的数值 ${_counter.value}",
              style: TextStyle(fontSize: 30),
            ),
          )),
          ElevatedButton(
              onPressed: () {
                _counter.value = 0;
              },
              child: Text("RESET"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';

class MyAnmationList extends StatefulWidget {
  const MyAnmationList({super.key});

  @override
  State<MyAnmationList> createState() => _MyAnmationListState();
}

class _MyAnmationListState extends State<MyAnmationList> {
  List<String> list = ["第一条", "第二条"];
  final _globalKey = GlobalKey<AnimatedListState>();
  bool flag = true;

  //创建元素
  Widget _buildItem(index) {
    return ListTile(
      title: Text(list[index]),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          _delItem(index);
        },
      ),
    );
  }

//删除方法
  _delItem(index) {
    // 添加检查以确保索引有效
    print("delete element $index");
    if (flag == true) {
      flag = false;
      _globalKey.currentState!.removeItem(index, (context, animation) {
        //这里必须要存一个临时变量，否则删除会发现找不到这个元素，原因就是因为元素已经删除，可是动画还没走
        var removeItem = _buildItem(index);
        //数组中删除数据
        list.removeAt(index);
        //返回一个动画
        return FadeTransition(opacity: animation, child: removeItem);
      });
      //这里加延迟的目的是为了防止删除的时候还没删除完全就立刻删除下一个导致索引有问题，删除异常
      Timer.periodic(const Duration(milliseconds: 500), (timer) {
        flag = true;
        timer.cancel(); // 取消定时器，避免重复执行
      });
    }
  }

  _addItem() {
    setState(() {
      list.add("我是新增数据");
      _globalKey.currentState!.insertItem(list.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("动画类型的listView"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addItem();
        },
        child: const Icon(Icons.add),
      ),
      body: AnimatedList(
          key: _globalKey,
          initialItemCount: list.length,
          itemBuilder: (context, index, anmation) {
            return FadeTransition(opacity: anmation, child: _buildItem(index));
          }),
    );
  }
}

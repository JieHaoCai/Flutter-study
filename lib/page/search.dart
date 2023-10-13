import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final String title;

  const SearchPage({super.key, this.title = '搜索'});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //返回上一页
        onPressed: () => {Navigator.pop(context)},
        child: const Icon(Icons.home),
      ),
      //传入参数
      appBar: AppBar(title: Text(widget.title)),
      body: const Center(
        child: Text("查找页面"),
      ),
    );
  }
}

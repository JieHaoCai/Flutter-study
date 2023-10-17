import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  final String title;

  SearchPage({Key? key, required this.title}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final dynamic arguments = Get.arguments;
    final String msg = arguments['msg'];
    final String hello = Get.parameters['hello'] ?? '';
    print("$msg,$hello");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back();
        },
        child: const Icon(Icons.home),
      ),
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('传递的消息: $msg'),
            Text('URL 参数 hello: $hello'),
            // Text("dadada")
          ],
        ),
      ),
    );
  }
}

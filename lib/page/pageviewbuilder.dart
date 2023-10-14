import 'package:flutter/material.dart';

class PageBuilderDemo extends StatefulWidget {
  const PageBuilderDemo({super.key});

  @override
  State<PageBuilderDemo> createState() => _PageBuilderDemoState();
}

class _PageBuilderDemoState extends State<PageBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("pageBuilder")),
      body: PageView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Center(
              child: Text(
                "第$index屏",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            );
          }),
    );
  }
}

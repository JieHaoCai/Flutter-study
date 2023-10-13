import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("设置页面"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/dialog');
              },
              child: const Text("dialog演示"))
        ],
      ),
    );
  }
}

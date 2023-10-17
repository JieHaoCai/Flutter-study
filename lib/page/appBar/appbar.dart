import 'package:flutter/material.dart';

class MyBar extends StatefulWidget {
  const MyBar({super.key});

  @override
  State<MyBar> createState() => _MyBarState();
}

class _MyBarState extends State<MyBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(''),
    );
  }
}

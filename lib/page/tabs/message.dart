import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('命令路由')),
      body: Center(
        child: Column(
          children: [
            const Text("这是消息页面"),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
                icon: const Icon(Icons.home),
                label: const Text('首页'))
          ],
        ),
      ),
    );
  }
}

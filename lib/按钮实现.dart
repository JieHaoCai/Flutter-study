import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('Flutter的按钮demo'),
    ),
    body: const MyApp(),
  )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          // 突起按钮
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.yellow)),
              onPressed: () {
                print('普通按钮');
              },
              child: const Text('普通按钮')),
          //文本按钮
          TextButton(
              onPressed: () {
                print('文本按钮');
              },
              child: const Text('文本按钮')),
          //边框按钮
          OutlinedButton(onPressed: () {}, child: const Text('边框按钮')),
          //图标按钮
          IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up))
        ]),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //带图标的按钮,其他也是类似
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: Text('发送'))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: ElevatedButton(
                  // 圆角
                  // style: ButtonStyle(
                  //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(12)))),
                  //圆形
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder(
                          side: BorderSide(color: Colors.yellow)))),
                  onPressed: () {},
                  child: const Text('自定义大小的按钮')),
            )
          ],
        )
      ],
    );
  }
}

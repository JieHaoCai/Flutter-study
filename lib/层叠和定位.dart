import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('层叠布局'),
      ),
      body: const MyApp(),
    ),
  ));
}

// Container(
//       height: 400,
//       width: 300,
//       color: Colors.white,
//       child: Stack(
//         // alignment: Alignment.center,
//         children: [
//           Container(
//             height: 400,
//             width: 300,
//             color: Colors.red,
//           ),
//           //使用绝对定位,基于最外层,如果没有外部容器，那么就相对于整个屏幕
//           Positioned(
//               left: 0,
//               bottom: 0,
//               child: Container(
//                 height: 100,
//                 width: 100,
//                 color: Colors.yellow,
//               )),
//           const Positioned(right: 0, top: 200, child: Text('你好'))
//         ],
//       ),
//     );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  List<Widget> _initData() {
    List<Widget> list = [];
    for (var i = 0; i < 100; i++) {
      list.add(ListTile(title: Text("我是一个列表---$i")));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    //获取屏幕的高度和宽度
    final size = MediaQuery.of(context).size;

    print("屏幕的宽度${size.width},屏幕的高度 ${size.height}");

    return Stack(
      children: [
        Positioned(
            left: 0,
            top: 0,
            width: size.width,
            height: 44,
            child: Container(
              alignment: Alignment.center,
              height: 44,
              color: Colors.black,
              child: const Text(
                "导航栏",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )),
        // Row(
        //   children: [
        //     Expanded(
        //         child: Container(
        //       alignment: Alignment.center,
        //       height: 44,
        //       color: Colors.black,
        //       child: const Text(
        //         "一级",
        //         style: TextStyle(color: Colors.white, fontSize: 20),
        //       ),
        //     ))
        //   ],
        // ),
        ListView(
          children: _initData(),
        )
      ],
    );
  }
}

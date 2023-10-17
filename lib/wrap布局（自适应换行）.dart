import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Wrap组件实现（自适应换行）电商搜索'),
          ),
          body: const MyList()

          //  const Column(children: [
          //   MyApp(),
          // ])),
          )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Wrap(
        //主轴方向上的间距
        spacing: 5,
        //纵轴的间距
        runSpacing: 10,
        //类似于flex
        alignment: WrapAlignment.start,
        //方位
        // direction: Axis.vertical,
        children: [
          Button(
            "自定义组件",
            onPressed: () {},
          ),
          Button(
            "第三级别",
            onPressed: () {},
          ),
          Button(
            "大大大",
            onPressed: () {},
          ),
          Button(
            "大大阿达",
            onPressed: () {},
          ),
          Button(
            "自定义组件",
            onPressed: () {},
          ),
          Button(
            "自定义组件",
            onPressed: () {},
          ),
          Button(
            "自定义组件",
            onPressed: () {},
          ),
          Button(
            "自定义组件",
            onPressed: () {},
          ),
          Button(
            "自定义组件",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

//自定义按钮组件
class Button extends StatelessWidget {
  String text;
  void Function()? onPressed;
  Button(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(95, 93, 88, 0.596)),
            foregroundColor:
                MaterialStateProperty.all(Color.fromRGBO(37, 36, 36, 1))),
        onPressed: onPressed,
        child: Text(text));
  }
}

//自定义滚动列表组件
class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [Text("热搜", style: Theme.of(context).textTheme.titleLarge)],
        ),
        const Divider(),
        Wrap(
          //主轴方向上的间距
          spacing: 5,
          //纵轴的间距
          runSpacing: 10,
          //类似于flex
          alignment: WrapAlignment.start,
          //方位
          // direction: Axis.vertical,
          children: [
            Button(
              "男装",
              onPressed: () {},
            ),
            Button(
              "女装",
              onPressed: () {},
            ),
            Button(
              "衣服",
              onPressed: () {},
            ),
            Button(
              "你好世界",
              onPressed: () {},
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(40),
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.delete),
              label: Text("清空历史记录")),
        )
      ],
    );
  }
}

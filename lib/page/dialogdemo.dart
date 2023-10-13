import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("提示信息"),
            content: const Text("您确定要删除吗？"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop("好的");
                  },
                  child: const Text("确定")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop("取消");
                  },
                  child: const Text("取消"))
            ],
          );
        });
    print(result);
  }

  void _selectDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("请选择语言："),
            children: [
              SimpleDialogOption(
                child: Text("汉语"),
                onPressed: () => {Navigator.of(context).pop("汗")},
              ),
              SimpleDialogOption(
                child: Text("日语"),
                onPressed: () => {Navigator.of(context).pop("ri")},
              ),
              SimpleDialogOption(
                child: Text("法语"),
                onPressed: () => {Navigator.of(context).pop("fa")},
              ),
              SimpleDialogOption(
                child: Text("英语"),
                onPressed: () => {Navigator.of(context).pop("en")},
              ),
            ],
          );
        });
    print(result);
  }

  void _modelDialog() {
    print("_modelDialog");
  }

  void _toast() {
    print("_toast");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //传入参数
      appBar: AppBar(title: const Text("dialog")),
      body: Center(
          child: Column(
        children: [
          const Text("测试dialog"),
          ElevatedButton(
              onPressed: _alertDialog, child: const Text("alert弹出框")),
          ElevatedButton(
              onPressed: _selectDialog, child: const Text("select弹出框")),
          ElevatedButton(onPressed: _modelDialog, child: const Text("底部弹出框")),
          ElevatedButton(onPressed: _toast, child: const Text("Toast弹出框"))
        ],
      )),
    );
  }
}

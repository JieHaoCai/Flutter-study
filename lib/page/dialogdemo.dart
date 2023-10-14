import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
        //点击灰色背景是否关闭弹出框
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text("请选择语言："),
            children: [
              SimpleDialogOption(
                child: const Text("汉语"),
                onPressed: () => {Navigator.of(context).pop("汗")},
              ),
              SimpleDialogOption(
                child: const Text("日语"),
                onPressed: () => {Navigator.of(context).pop("ri")},
              ),
              SimpleDialogOption(
                child: const Text("法语"),
                onPressed: () => {Navigator.of(context).pop("fa")},
              ),
              SimpleDialogOption(
                child: const Text("英语"),
                // 这种方式也可以
                onPressed: () => {Navigator.pop(context, "en")},
              ),
            ],
          );
        });
    print(result);
  }

  void _modelDialog() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 300, //默认是自适应高度
            child: Column(
              children: [
                ListTile(
                  title: const Text("商品1"),
                  onTap: () {
                    Navigator.pop(context, "商品1");
                  },
                ),
                ListTile(
                  title: const Text("商品2"),
                  onTap: () {
                    Navigator.pop(context, "商品2");
                  },
                ),
                ListTile(
                  title: const Text("商品3"),
                  onTap: () {
                    Navigator.pop(context, "商品3");
                  },
                )
              ],
            ),
          );
        });
    print(result);
  }

  void _toast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
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

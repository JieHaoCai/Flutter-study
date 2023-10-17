import 'package:flutter/material.dart';
import 'package:flutter01/api/userApi.dart';

class MyRequest extends StatefulWidget {
  const MyRequest({Key? key}) : super(key: key);

  @override
  _MyRequestState createState() => _MyRequestState();
}

class _MyRequestState extends State<MyRequest> {
  List<dynamic> list = [];

  Future<void> _getData() async {
    var result = await UserApi().getUserInfo({'refer': '1.1.1.1'});
    setState(() {
      list = result['data'];
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("测试网络请求")),
      body: Column(
        children: [
          const Text("测试网络请求"),
          ElevatedButton(
            onPressed: _getData,
            child: const Text("点击请求"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                var item = list[index];
                return Card(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: ListTile(
                    title: Text("${item['name']}"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

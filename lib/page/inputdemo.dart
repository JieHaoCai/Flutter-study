import 'package:flutter/material.dart';

//测试输入框

class MyInputPage extends StatefulWidget {
  @override
  State<MyInputPage> createState() => _MyInputPageState();
}

class _MyInputPageState extends State<MyInputPage> {
  final myController = TextEditingController();
  //实现聚焦
  late FocusNode myFocusNode;
  //给form表单一个key值
  final _formKey = GlobalKey<FormState>();

  //在不需要使用的时候移除掉
  @override
  void dispose() {
    myController.dispose();

    myFocusNode.dispose();
    super.dispose();
  }

  //在初始的时候进行监听
  @override
  void initState() {
    myController.addListener(_printLatestValue);
    super.initState();
    //聚焦
    myFocusNode = FocusNode();
  }

  void _printLatestValue() {
    print('Second text field: ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("测试输入框输入内容")),
      body: MyCustomForm(
          myController: myController,
          myFocusNode: myFocusNode,
          formKey: _formKey),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text that the user has entered by using the
                // TextEditingController.
                content: Text(myController.text),
              );
            },
          );
        },
        tooltip: '点击展示当前输入框的值!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  final TextEditingController myController;
  final FocusNode myFocusNode;
  final GlobalKey<FormState> formKey;
  const MyCustomForm(
      {Key? key,
      required this.myController,
      required this.myFocusNode,
      required this.formKey})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            // autofocus: true, //一旦文本框可见，就将其聚焦
            focusNode: myFocusNode,
            //输入框内容变动
            onChanged: (text) {
              print('First text field: $text');
            },
            controller: myController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: ElevatedButton(
              onPressed: () {
                myFocusNode.requestFocus();
              },
              child: Text("点击实现聚焦")),
        ),
        Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              // Add TextFormFields and ElevatedButton here.
              TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入数值';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: '带表单校验的',
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Validate returns true if the form is valid, or false otherwise.
            if (formKey.currentState!.validate()) {
              // If the form is valid, display a snackbar. In the real world,
              // you'd often call a server or save the information in a database.
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            }
          },
          child: const Text('提交表单'),
        ),
      ],
    );
  }
}

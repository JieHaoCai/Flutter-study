// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class MyWebviewPage extends StatefulWidget {
//   const MyWebviewPage({super.key});

//   @override
//   State<MyWebviewPage> createState() => _MyWebviewPageState();
// }

// class _MyWebviewPageState extends State<MyWebviewPage> {
//   //你需要先导入webview_flutter:
//   //第一步，先声明一个weviewController
//   late WebViewController controller;

//   @override
//   void initState() {
//     //第二步，在 initState 中初始化 controller
//     controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..loadRequest(Uri.parse('https://www.csdn.net/'))
//       ..setNavigationDelegate(NavigationDelegate(
//         //页面开始请求
//         onNavigationRequest: (requset) {
//           print(requset);
//           return NavigationDecision.prevent;
//         },
//         //页面开始加载
//         onPageStarted: (url) {},
//         //页面加载完毕,注入js
//         onPageFinished: (url) async {
//           var cookie = await controller
//               .runJavaScriptReturningResult('document.cookie') as String;
//           print(cookie);
//         },
//         //加载错误
//         onWebResourceError: (error) {
//           print(error);
//         },
//       ));
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("测试webview"),
//       ),
//       body: Column(children: [
//         Expanded(child: WebViewWidget(controller: controller)),
//         Text("sdadadad")
//       ]),
//       floatingActionButton: ElevatedButton(
//         child: Text("获取标题"),
//         onPressed: () async {
//           var title = await controller.getTitle();
//           print(title);
//         },
//       ),
//     );
//   }
// }

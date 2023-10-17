import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebviewPage extends StatefulWidget {
  const MyWebviewPage({super.key});

  @override
  State<MyWebviewPage> createState() => _MyWebviewPageState();
}

class _MyWebviewPageState extends State<MyWebviewPage> {
  //你需要先导入webview_flutter:
  //第一步，先声明一个weviewController
  late WebViewController controller;

  double _progress = 0;
  @override
  void initState() {
    //第二步，在 initState 中初始化 controller
    controller = WebViewController()
      //默认是不开启的，手动开启支持js
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setUserAgent(
          // "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36"
          "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36")
      ..loadRequest(Uri.parse('https://www.csdn.net/'), headers: {})
      //这个方法可以用来跟html页面交互
      // ..addJavaScriptChannel(name, onMessageReceived: onMessageReceived)
      ..setNavigationDelegate(NavigationDelegate(
        //   //页面开始请求,获取页面请求
        onNavigationRequest: (requset) {
          print("页面请求参数 ${requset.url}");
          return NavigationDecision.navigate;
        },
        //   //页面开始加载
        //   onPageStarted: (url) {},
        //页面加载完毕,注入js,既使 WebView 加载的页面中可能还有链接，跳到另一个地址，js 注入的代码依然有效！
        onPageFinished: (url) async {
          var cookie = await controller
              .runJavaScriptReturningResult('document.cookie') as String;

          var ua = await controller
              .runJavaScriptReturningResult('navigator.userAgent;') as String;
          print("当前页面的cookie：$cookie,当前的ua是 $ua");
        },
        //   //加载错误
        //   onWebResourceError: (error) {
        //     print(error);
        //   },
      ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("测试webview"),
      ),
      body: Column(children: [
        // LinearProgressIndicator(value: _progress),

        //第三步，使用WebViewWidget,使用sizebox可以控制大小
        SizedBox(
            height: 400,
            child: WebViewWidget(
                //控制器
                controller: controller,
                //手势操作
                gestureRecognizers: {
                  Factory<VerticalDragGestureRecognizer>(
                    () {
                      return VerticalDragGestureRecognizer()
                        ..onStart = (DragStartDetails details) {
                          print("start");
                        }
                        ..onDown = (DragDownDetails details) {
                          print("down: $details");
                        };
                    },
                  )
                })),
        Padding(
          padding: EdgeInsets.all(20),
          child: ElevatedButton(
              onPressed: () {
                controller.loadRequest(Uri.parse('https://juejin.cn'));
              },
              child: Text("重定向跳转")),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: ElevatedButton(
              onPressed: () {
                controller.reload();
              },
              child: Text("刷新页面")),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: ElevatedButton(
              onPressed: () {
                //判断是否可以返回上一个页面
                controller
                    .canGoBack()
                    .then((value) => print("当前是否可以返回 $value"));

                //判断是否可以重定向
                controller
                    .canGoForward()
                    .then((value) => print("当前是否可以重定向 $value"));

                controller.goBack();
              },
              child: Text("返回上一个页面")),
        )
      ]),
      floatingActionButton: ElevatedButton(
        child: Text("获取标题"),
        onPressed: () async {
          var title = await controller.getTitle();
          print(title);
          Get.snackbar("当前页面的标题", title as String,
              backgroundColor: Colors.white);
        },
      ),
    );
  }
}

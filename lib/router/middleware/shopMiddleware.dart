import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class shopMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    print(route);
    // return null;
    //没有权限跳转到登录页面
    return const RouteSettings(name: "/login", arguments: {"msg": "你还未登录！"});
  }
}

import 'package:get/get.dart';
import '../page/tabs.dart';
import '../page/search.dart';
import '../page/tabs/categroy.dart';
import '../page/login.dart';
import '../page/register.dart';
import '../page/dialogdemo.dart';
import '../page/pageviewdemo.dart';
import '../page/pageviewbuilder.dart';
import '../page/pageFulldemo.dart';
import '../page/anmationListDemo.dart';
import '../page/getxstatedemo.dart';
//引入中间件
import "../middleware/shopMiddleware.dart";

class AppPage {
  static final routes = [
    GetPage(
      name: "/",
      page: () => const MyTabs(),
      transition: Transition.leftToRight, //设置单个页面跳转的方式
      // middlewares: [MiddlePageVC()],//设置中间件(GetPage),可以根据优先级设置多个中间件
    ),
    GetPage(
        name: "/pagefull",
        page: () => const PageFullDemo(),
        transition: Transition.rightToLeft, //设置单个页面跳转的方式
        middlewares: [shopMiddleware()]), //设置中间件(GetPage),可以根据优先级设置多个中间件
    GetPage(
        name: "/pageanmation",
        page: () => const MyAnmationList(),
        transition: Transition.leftToRight //设置单个页面跳转的方式
        ),
    GetPage(
        name: "/pagebuilder",
        page: () => const PageBuilderDemo(),
        transition: Transition.leftToRight //设置单个页面跳转的方式
        ),
    GetPage(
        name: "/pageview",
        page: () => const MyPageView(),
        transition: Transition.leftToRight //设置单个页面跳转的方式
        ),
    GetPage(
        name: "/dialog",
        page: () => const DialogPage(),
        transition: Transition.rightToLeft //设置单个页面跳转的方式
        ),
    GetPage(
        name: "/login",
        page: () => const LoginPage(),
        transition: Transition.leftToRight //设置单个页面跳转的方式
        ),
    GetPage(
        name: "/register",
        page: () => const RegisterPage(),
        transition: Transition.leftToRight //设置单个页面跳转的方式
        ),
    GetPage(
        name: "/search",
        page: () => const SearchPage(),
        transition: Transition.leftToRight //设置单个页面跳转的方式
        ),
    GetPage(
        name: "/categroy",
        page: () => const CatrgroyPage(),
        transition: Transition.leftToRight //设置单个页面跳转的方式
        ),
    GetPage(
        name: "/mygetx",
        page: () => MyGetXState(),
        transition: Transition.leftToRight //设置单个页面跳转的方式
        )
  ];
}


// router(context) {
//   return {
//     "/pageanmation": (context) => const MyAnmationList(),
//     "/pagefull": (context) => const PageFullDemo(),
//     "/pagebuilder": (context) => const PageBuilderDemo(),
//     "/pageview": (context) => const MyPageView(),
//     "/dialog": (context) => const DialogPage(),
//     "/login": (context) => const LoginPage(),
//     "/register": (context) => const RegisterPage(),
//     "/search": (context) => const SearchPage(),
//     "/": (context) => const MyTabs(),
//     "/categroy": (context) => const CatrgroyPage()
//   };
// }

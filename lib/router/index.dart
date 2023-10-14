import '../page/tabs.dart';
import '../page/search.dart';
import '../page/tabs/categroy.dart';
import '../page/login.dart';
import '../page/register.dart';
import '../page/dialogdemo.dart';
import '../page/pageviewdemo.dart';
import '../page/pageviewbuilder.dart';
import '../page/pageFulldemo.dart';

router(context) {
  return {
    "/pagefull": (context) => const PageFullDemo(),
    "/pagebuilder": (context) => const PageBuilderDemo(),
    "/pageview": (context) => const MyPageView(),
    "/dialog": (context) => const DialogPage(),
    "/login": (context) => const LoginPage(),
    "/register": (context) => const RegisterPage(),
    "/search": (context) => const SearchPage(),
    "/": (context) => const MyTabs(),
    "/categroy": (context) => const CatrgroyPage()
  };
}

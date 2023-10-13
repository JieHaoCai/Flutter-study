import '../page/tabs.dart';
import '../page/search.dart';
import '../page/tabs/categroy.dart';
import '../page/login.dart';
import '../page/register.dart';
import '../page/dialogdemo.dart';

router(context) {
  return {
    "/dialog": (context) => const DialogPage(),
    "/login": (context) => const LoginPage(),
    "/register": (context) => const RegisterPage(),
    "/search": (context) => const SearchPage(),
    "/": (context) => const MyTabs(),
    "/categroy": (context) => const CatrgroyPage()
  };
}

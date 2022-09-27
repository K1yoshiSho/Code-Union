import 'package:flutter/cupertino.dart';
import 'package:testproject/src/screens/main/home_screen.dart';
import 'package:testproject/src/screens/main_screen.dart';

import '../screens/auth/auth_screen.dart';
import '../screens/auth/register.dart';
import 'routing_const.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case MainScreenRoute:
        return CupertinoPageRoute(builder: (context) => const MainScreen());
      case HomeRoute:
        return CupertinoPageRoute(builder: (context) => const HomeScreen());
      default:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
    }
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:testproject/src/screens/auth/register.dart';
import 'src/routes/routing.dart';
import 'src/routes/routing_const.dart';
import 'src/screens/auth/auth_screen.dart';
import 'src/theme/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      // Заменили параметр home на initialRoute
      initialRoute: AuthRoute,
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        barBackgroundColor: AppColors.white,
      ),
    );
  }
}

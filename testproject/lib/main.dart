// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:testproject/src/screens/auth/register.dart';
import 'src/routes/routing.dart';
import 'src/screens/auth/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: AuthScreen(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      routes: {
        '/auth/login': (context) => AuthScreen(),
        '/auth/register': (context) => RegisterScreen(),
      },
    );
  }
}

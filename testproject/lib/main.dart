// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:testproject/src/screens/auth/register.dart';
import 'src/screens/auth/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: RegisterScreen(),
    );
  }
}

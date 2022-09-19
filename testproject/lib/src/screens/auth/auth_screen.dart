// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Авторизация'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CupertinoTextField(
              placeholder: 'Логин или почта',
            ),
            CupertinoTextField(
              placeholder: 'Пароль',
            ),
            CupertinoButton.filled(
              child: Text('Войти'),
              onPressed: () {},
            ),
            CupertinoButton.filled(
              child: Text('Зарегистрироваться'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

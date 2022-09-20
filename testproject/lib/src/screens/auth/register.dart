// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFF3F4F6),
      navigationBar: CupertinoNavigationBar(
        border: Border(),
        backgroundColor: CupertinoColors.white,
        middle: Text('Регистрация'),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CupertinoTextField(
                placeholder: 'Логин или почта',
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CupertinoTextField(
                placeholder: 'Телефон',
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CupertinoTextField(
                placeholder: 'Пароль',
                obscureText: _isObscure,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.white,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CupertinoTextField(
                placeholder: 'Повторите пароль',
                obscureText: _isObscure,
                suffix: Icon(CupertinoIcons.eye_slash_fill),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.white,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                color: Color(0xFF4631D2),
                child: Text('Войти'),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                color: Color(0xFF4631D2),
                child: Text('Зарегистрироваться'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

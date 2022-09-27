// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testproject/src/widgets/custom_textfield.dart';

import '../../routes/routing_const.dart';
import '../../theme/app_color.dart';
import '../../widgets/custom_button.dart';

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
      backgroundColor: AppColors.scaffoldBackground,
      navigationBar: CupertinoNavigationBar(
        border: Border(),
        backgroundColor: AppColors.white,
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
              child: CustomTextField(
                placeholder: 'Логин или почта',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CustomTextField(
                placeholder: 'Телефон',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CustomTextField(
                placeholder: 'Пароль',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CustomTextField(
                placeholder: 'Повторите пароль',
                obscureText: _isObscure,
                suffix: CupertinoButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    child: _isObscure
                        ? Icon(
                            CupertinoIcons.eye_solid,
                            color: Colors.grey,
                          )
                        : Icon(
                            CupertinoIcons.eye_slash_fill,
                            color: Colors.grey,
                          )),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                placeholder: 'Зарегистрироваться',
                onPressed: () {
                  Navigator.pushNamed(context, MainScreenRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

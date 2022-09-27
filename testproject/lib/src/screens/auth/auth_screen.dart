// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:testproject/src/theme/app_color.dart';
import '../../routes/routing_const.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import 'package:dio/dio.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.scaffoldBackground,
      navigationBar: CupertinoNavigationBar(
        border: Border(),
        backgroundColor: AppColors.white,
        middle: Text('Авторизация'),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: CustomTextField(
                placeholder: "Логин",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(
                placeholder: "Пароль",
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                placeholder: "Войти",
                onPressed: () async {
                  Dio dio = Dio();
                  Response response = await dio.get(
                    'https://web.codeunion.kz/',
                  );
                  print(response.data);
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                placeholder: "Зарегистрироваться",
                onPressed: () {
                  Navigator.pushNamed(context, RegisterRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

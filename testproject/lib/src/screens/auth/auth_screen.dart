// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:testproject/src/theme/app_color.dart';
import '../../routes/routing_const.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import 'package:dio/dio.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});
  Dio dio = Dio();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                controller: emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(
                placeholder: "Пароль",
                controller: passwordController,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                placeholder: "Войти",
                onPressed: () async {
                  try {
                    Response response = await dio.post(
                      'http://188.225.83.80:6719/api/v1/auth/login',
                      data: {
                        'email': emailController.text,
                        'password': passwordController.text,
                      },
                    );

                    print(response.data['tokens']['accessToken']);
                    Navigator.pushReplacementNamed(context, MainRoute);
                  } on DioError catch (e) {
                    print(e.response!.data);
                    // Открываем модалку с сообщением ошибки
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text('Ошибка'),
                          content: Text('Неправильный логин или пароль!'),
                          actions: [
                            CupertinoButton(
                              child: Text('ОК'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        );
                      },
                    );
                    throw e;
                  }
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

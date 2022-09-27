import 'package:flutter/cupertino.dart';
import 'package:testproject/src/theme/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.placeholder = 'Введите',
    this.suffix,
    this.obscureText = false,
    this.decoration,
  }) : super(key: key);

  final String placeholder;
  final Widget? suffix;
  final bool obscureText;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: placeholder,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
      suffix: suffix,
      obscureText: obscureText,
    );
  }
}

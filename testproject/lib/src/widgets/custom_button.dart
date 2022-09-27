import 'package:flutter/cupertino.dart';
import 'package:testproject/src/theme/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onPressed, this.placeholder = "Нажать"})
      : super(key: key);

  final Function()? onPressed;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: AppColors.main,
      onPressed: onPressed,
      child: Text(placeholder),
    );
  }
}
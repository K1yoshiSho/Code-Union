// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:testproject/src/theme/app_color.dart';
import 'package:testproject/src/widgets/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.scaffoldBackground,
      navigationBar: CupertinoNavigationBar(
        border: Border(),
        backgroundColor: AppColors.white,
        middle: Text('Профиль'),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://lmg-labmanager.s3.amazonaws.com/assets/articleNo/23259/iImg/43114/owensjeffrey.jpg',
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    'Yelaman Yelmuratov',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text('e99xxx@gmail.com'),
                ],
              ),
            ],
          ),
          CustomButton(
            placeholder: 'Выйти',
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

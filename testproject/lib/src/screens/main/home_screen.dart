// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:testproject/src/theme/app_color.dart';
import 'package:testproject/src/widgets/custom_textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'https://inbusiness.kz/uploads/25/images/FPnGailS.jpg',
      'https://tengrinews.kz/userdata/gallery/2018/gallery_1099/thumb_m/photo_36093.png',
      'https://astanait.edu.kz/wp-content/uploads/2020/10/DSC01154-1-scaled.jpg'
    ];

    List<String> titles = [
      'Esentai Mall',
      'Mega Silkway',
      'Astana IT University'
    ];

    List<String> description = [
      'Один из крупнейших торговых центров в Аль-Фараби',
      'Торговый центр находящийся между EXPO и Назарбаев университет',
      'Айти университет столицы, который находится в EXPO'
    ];

    return CupertinoPageScaffold(
        child: SafeArea(
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomTextField(
            placeholder: 'Поиск',
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          images[index],
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.2,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            titles[index],
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            description[index],
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  CupertinoIcons.heart,
                                  color: AppColors.red,
                                  size: 24,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: images.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 20);
            },
          ),
        )
      ]),
    ));
  }
}

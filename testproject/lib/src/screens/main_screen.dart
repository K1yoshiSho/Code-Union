// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'main/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: const [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.gift)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
      ]),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return const HomeScreen();
              case 1:
                return const HomeScreen();
              case 2:
                return const HomeScreen();
              case 3:
                return const HomeScreen();
              default:
                return const HomeScreen();
            }
          },
        );
      },
    );
  }
}

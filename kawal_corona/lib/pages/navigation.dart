import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kawal_corona/controller/navigation_controller.dart';
import 'package:kawal_corona/pages/about_screen.dart';
import 'package:kawal_corona/pages/home.dart';
import 'package:kawal_corona/pages/statistic_screen.dart';

class NavigationPage extends StatelessWidget {
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  NavigationPage({Key? key}) : super(key: key);

  final screen = [
    HomeScreen(),
    StatisticScreen(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: bottomNavigationController.selectedIndex.value,
          children: screen,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'About',
            ),
          ],
          showUnselectedLabels: false,
          currentIndex: bottomNavigationController.selectedIndex.value,
          selectedItemColor: Color(0xff157FFB),
          onTap: (index) => bottomNavigationController.changeIndex(index),
        ),
      ),
    );
  }
}

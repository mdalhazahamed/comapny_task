import 'package:company_task/ui/views/botton_nav_controller/botton_nav_page/home_screen.dart';
import 'package:company_task/ui/views/botton_nav_controller/botton_nav_page/record_screen.dart';
import 'package:company_task/ui/views/botton_nav_controller/botton_nav_page/saved_screen.dart';
import 'package:company_task/ui/views/botton_nav_controller/botton_nav_page/search_screen.dart';
import 'package:company_task/ui/views/botton_nav_controller/botton_nav_page/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../const/app_strings.dart';

class BottomNavController extends StatelessWidget {
  BottomNavController({Key? key}) : super(key: key);
  final _pages = [
    HomeScreen(),
    SearchScreen(),
    RecordScreen(),
    SavedScreen(),
    SettingsScreen(),
  ];
  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            // backgroundColor: AppColors.scaffoldColor,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.home,
                    color: Colors.grey,
                  ),
                  label: AppStrings.home),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.chartSimple,
                    color: Colors.grey,
                  ),
                  label: AppStrings.challenges),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.dumbbell,
                    color: Colors.grey,
                  ),
                  label: AppStrings.media),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.search,
                    color: Colors.grey,
                  ),
                  label: AppStrings.search),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.person,
                    color: Colors.grey,
                  ),
                  label: AppStrings.myProfile),
            ],
            currentIndex: _currentIndex.value.toInt(),
            onTap: (int index) {
              _currentIndex.value = index;
            },
          ),
          body: _pages[_currentIndex.value.toInt()],
        ));
  }
}

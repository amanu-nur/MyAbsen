import 'package:flutter/material.dart';
import 'package:myabsen/ui/pages/home_page.dart';
import 'package:myabsen/ui/widgets/custom_bottom_navigation_item.dart';
import '../../shared/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return homePage();
    }

    // Custom Bottom
    Widget customBottom() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 24, right: 24, bottom: 30),
          height: 60,
          decoration: BoxDecoration(
              color: kLightColor,
              borderRadius: BorderRadius.circular(radiusDefault)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageUrl: 'assets/ic_home.png',
                isSelect: true,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/ic_task.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/ic_setting.png',
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kGreyColor,
      body: Stack(
        children: [buildContent(), customBottom()],
      ),
    );
  }
}

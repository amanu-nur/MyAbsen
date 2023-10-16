import 'package:flutter/material.dart';
import 'package:myabsen/shared/theme.dart';
import 'package:myabsen/ui/pages/clockin_page.dart';
import 'package:myabsen/ui/pages/main_app.dart';
import 'package:myabsen/ui/widgets/custom_button.dart';

class CICamera extends StatelessWidget {
  const CICamera({super.key});

  Widget header(context) {
    return Container(
      padding: EdgeInsets.only(
          left: marginDefault, right: marginDefault, top: 50, bottom: 30),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ClockIn()),
              );
            },
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Center(
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/ic_back.png'),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Photo',
                  style: lightTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            width: 45,
          ),
        ],
      ),
    );
  }

  Widget locationTag() {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
      width: double.infinity,
      margin:
          EdgeInsets.only(left: marginDefault, right: marginDefault, top: 50),
      decoration: BoxDecoration(
        color: kLightColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Take Your Photo',
            style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
                decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 150,
            height: 225,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/img-man.jpg'),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          customButton(
            titleButton: 'Submit',
            customHeight: true,
            height: 47,
            customRadius: true,
            radius: 5,
            colorSecondary: true,
            funcButton: '/main-app',
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        image: DecorationImage(
            image: AssetImage('assets/bg-default.png'), fit: BoxFit.fill),
      ),
      child: Column(
        children: [header(context), locationTag()],
      ),
    );
  }
}

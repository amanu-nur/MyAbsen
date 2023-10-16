import 'package:flutter/material.dart';
import 'package:myabsen/shared/theme.dart';
import 'package:myabsen/ui/pages/clockin_page.dart';
import 'package:myabsen/ui/pages/main_app.dart';
import 'package:myabsen/ui/widgets/custom_button.dart';

class AbsenDetail extends StatelessWidget {
  const AbsenDetail({super.key});

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
                MaterialPageRoute(builder: (context) => MainApp()),
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
                  'Absence Recap',
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
            'Enter the Semester Period',
            style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
                decoration: TextDecoration.none),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(5)),
            child: Text(
              '21 Agu 2023 - 15 Des 2023',
              style: lightTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: bold,
                  decoration: TextDecoration.none),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 80,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Text(
                        'Present',
                        style: blackTextStyle.copyWith(
                            fontSize: 9,
                            fontWeight: black,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        '45 Days',
                        style: blackTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: black,
                            decoration: TextDecoration.none),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Text(
                        'Permission',
                        style: blackTextStyle.copyWith(
                            fontSize: 9,
                            fontWeight: black,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        '5 Days',
                        style: blackTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: black,
                            decoration: TextDecoration.none),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Text(
                        'Alpha',
                        style: blackTextStyle.copyWith(
                            fontSize: 9,
                            fontWeight: black,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        '5 Days',
                        style: blackTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: black,
                            decoration: TextDecoration.none),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          customButton(
            titleButton: 'Back',
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

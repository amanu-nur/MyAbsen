import 'package:flutter/material.dart';
import 'package:myabsen/shared/theme.dart';
import 'package:myabsen/ui/pages/clockin_page.dart';
import 'package:myabsen/ui/pages/main_app.dart';
import 'package:myabsen/ui/widgets/custom_button.dart';
import 'package:myabsen/ui/widgets/custom_textform.dart';

class DetailSemester extends StatelessWidget {
  const DetailSemester({super.key});

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
                  'Permission',
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
            'Permission Form',
            style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
                decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: kLightColor,
                borderRadius: BorderRadius.circular(radiusDefault)),
            child: Column(
              children: [
                customTextForm(
                  titleForm: 'Fullname',
                  placeholder: 'Your Full Name',
                  marginBottom: 10,
                ),
                customTextForm(
                  titleForm: 'Date',
                  placeholder: 'Example 13-04-2004',
                  isSecure: true,
                  marginBottom: 10,
                ),
                customTextForm(
                  titleForm: 'Description',
                  placeholder: 'Desc.....',
                  isSecure: true,
                  marginBottom: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
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
    return Scaffold(
      body: Container(
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
      ),
    );
  }
}

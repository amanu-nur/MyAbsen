import 'package:flutter/material.dart';
import 'package:myabsen/ui/widgets/custom_button.dart';
import 'package:myabsen/ui/widgets/custom_textform.dart';
import '../../shared/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(
          'Hello welcome,\nplease come in',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget sectionInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kLightColor,
            borderRadius: BorderRadius.circular(radiusDefault)),
        child: Column(
          children: [
            customTextForm(
              titleForm: 'Username',
              placeholder: 'Your username',
              marginBottom: 30,
            ),
            customTextForm(
              titleForm: 'Password',
              placeholder: 'Your password',
              isSecure: true,
              marginBottom: 120,
            ),
            customButton(
              titleButton: 'Sign In',
              funcButton: '/main-app',
            )
          ],
        ),
      );
    }

    Widget tacBottom() {
      return Container(
        margin: EdgeInsets.only(
          top: 140,
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            "Terms and Conditions",
            style:
                secondaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kGreyColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: marginDefault),
          children: [title(), sectionInput(), tacBottom()],
        ),
      ),
    );
  }
}

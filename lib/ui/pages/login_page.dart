import 'package:flutter/material.dart';
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
      Widget usernameInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Username',
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: light),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: kDarkColor,
              decoration: InputDecoration(
                  hintText: "Your username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radiusDefault)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radiusDefault),
                      borderSide: BorderSide(color: kPrimaryColor))),
            )
          ]),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Password',
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: light),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: kDarkColor,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Your password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radiusDefault)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radiusDefault),
                      borderSide: BorderSide(color: kPrimaryColor))),
            )
          ]),
        );
      }

      Widget submitButton() {
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radiusDefault))),
            child: Text(
              'Sign In',
              style: lightTextStyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kLightColor,
            borderRadius: BorderRadius.circular(radiusDefault)),
        child: Column(
          children: [usernameInput(), passwordInput(), submitButton()],
        ),
      );
    }

    Widget tacBottom() {
      return Container(
        margin: EdgeInsets.only(
          top: 240,
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

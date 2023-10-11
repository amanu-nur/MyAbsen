import 'package:flutter/material.dart';
import 'package:myabsen/shared/theme.dart';
import 'package:myabsen/ui/widgets/custom_button.dart';

class ClockIn extends StatelessWidget {
  const ClockIn({super.key});

  Widget header() {
    return Container(
      padding: EdgeInsets.only(
          left: marginDefault, right: marginDefault, top: 50, bottom: 30),
      child: Row(
        children: [
          Container(
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
                )),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '08:34 AM',
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
                  image: AssetImage('assets/ic_circle.png'),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget locationTag() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 60, left: 30, right: 30),
        width: double.infinity,
        margin: EdgeInsets.only(
            left: marginDefault, right: marginDefault, top: 300),
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
              'Your Location',
              style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                  decoration: TextDecoration.none),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Jl. Gatot Subroto No.1, RT.1/RW.3, Senayan, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10270',
              textAlign: TextAlign.center,
              style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: regular,
                  decoration: TextDecoration.none),
            ),
            SizedBox(
              height: 150,
            ),
            customButton(
              titleButton: 'Clock In',
              customHeight: true,
              height: 47,
              customRadius: true,
              radius: 5,
              colorSecondary: true,
              funcButton: '/main-app',
            )
          ],
        ),
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
            image: AssetImage('assets/dumy_maps.png'), fit: BoxFit.fill),
      ),
      child: Column(
        children: [header(), locationTag()],
      ),
    );
  }
}

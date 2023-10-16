import 'package:flutter/material.dart';
import 'package:myabsen/shared/theme.dart';
import 'package:myabsen/ui/pages/detail_absen.dart';
import 'package:myabsen/ui/pages/detail_semester.dart';
import 'package:myabsen/ui/widgets/custom_button.dart';
import 'package:myabsen/ui/widgets/custom_menu_items.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  Widget MenuList(context) {
    return Container(
      margin:
          EdgeInsets.only(left: marginDefault, right: marginDefault, top: 30),
      child: Column(
        children: [
          Text(
            'Menu',
            style: blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MenuItem(
                  title: 'Shift',
                  icon: 'assets/ic_shif.png',
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AbsenDetail()),
                    );
                  },
                  child: MenuItem(
                    title: 'Absence Recap',
                    icon: 'assets/ic_list.png',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailSemester()),
                    );
                  },
                  child: MenuItem(
                    title: 'Permission',
                    icon: 'assets/ic_cuti.png',
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget CheckMenu() {
    return Container(
      padding: EdgeInsets.only(left: marginDefault, right: marginDefault),
      // padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: kSecondaryColor,
      ),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: kLightColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radiusDefault),
                topRight: Radius.circular(radiusDefault))),
        child: Column(
          children: [
            Text(
              'Live Attendance',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
            Text(
              '08:34 AM',
              style: primaryTextStyle.copyWith(fontSize: 32, fontWeight: black),
            ),
            Text(
              'Wed, 11 October 2023',
              style: secondaryTextStyle.copyWith(
                  fontSize: 14, fontWeight: regular),
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 25, bottom: 25),
              color: kGreysColor,
            ),
            Text(
              'Lecture Hours',
              style: secondaryTextStyle.copyWith(
                  fontSize: 14, fontWeight: regular),
            ),
            Text(
              '08:00 AM - 05:00 PM',
              style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, // Menyusun tombol secara rata di kanan dan kiri
                children: [
                  customButton(
                    titleButton: 'Clock In',
                    widthFUll: false,
                    customHeight: true,
                    customRadius: true,
                    width: 145,
                    height: 45,
                    radius: 5,
                    colorSecondary: true,
                    funcButton: '/clock-in',
                  ),
                  customButton(
                    titleButton: 'Clock Out',
                    widthFUll: false,
                    customHeight: true,
                    customRadius: true,
                    width: 145,
                    height: 45,
                    radius: 5,
                    colorSecondary: true,
                    funcButton: '/clock-in',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      padding: EdgeInsets.only(
          left: marginDefault, right: marginDefault, top: 30, bottom: 30),
      color: kSecondaryColor,
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            margin: EdgeInsets.only(right: 13),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image:
                    DecorationImage(image: AssetImage('assets/dumy_img.png'))),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kezia Anne',
                  style:
                      lightTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                ),
                Text('Teknik Informatika',
                    style: lightTextStyle.copyWith(
                        fontSize: 13, fontWeight: regular))
              ],
            ),
          ),
          Container(
            height: 15,
            width: 20,
            margin: EdgeInsets.only(right: 13),
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/ic_logout.png'))),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [header(), CheckMenu(), MenuList(context)],
    );
  }
}

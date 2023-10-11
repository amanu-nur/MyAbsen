import 'package:flutter/material.dart';
import 'package:myabsen/shared/theme.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String icon;
  const MenuItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: kLightColor, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Container(
            width: 32,
            height: 32,
            margin: EdgeInsets.only(bottom: 5),
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(icon))),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(fontSize: 9, fontWeight: black),
          )
        ],
      ),
    );
  }
}

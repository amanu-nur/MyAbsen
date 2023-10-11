import 'package:flutter/material.dart';
import 'package:myabsen/shared/theme.dart';

class customButton extends StatelessWidget {
  final String titleButton;
  final bool colorSecondary;
  final bool widthFUll;
  final bool customRadius;
  final bool customHeight;
  final double width;
  final double height;
  final double radius;
  final String funcButton;

  const customButton({
    super.key,
    required this.titleButton,
    this.funcButton = '/',
    this.widthFUll = true,
    this.customRadius = false,
    this.customHeight = false,
    this.colorSecondary = false,
    this.width = 0,
    this.height = 0,
    this.radius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthFUll ? double.infinity : width,
      height: customHeight ? height : 55,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, funcButton);
        },
        style: TextButton.styleFrom(
            backgroundColor: colorSecondary ? kSecondaryColor : kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    customRadius ? radius : radiusDefault))),
        child: Text(
          titleButton,
          style: lightTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      ),
    );
  }
}

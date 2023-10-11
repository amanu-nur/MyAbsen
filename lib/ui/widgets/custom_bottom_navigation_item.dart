import 'package:flutter/material.dart';
import 'package:myabsen/shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelect;

  const CustomBottomNavigationItem(
      {super.key, required this.imageUrl, this.isSelect = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageUrl))),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isSelect ? kPrimaryColor : kTransparantColor,
              borderRadius: BorderRadius.circular(15)),
        )
      ],
    );
  }
}

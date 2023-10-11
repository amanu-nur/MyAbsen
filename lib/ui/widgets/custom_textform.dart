import 'package:flutter/material.dart';
import 'package:myabsen/shared/theme.dart';

class customTextForm extends StatelessWidget {
  final String titleForm;
  final String placeholder;
  final bool isSecure;
  final double marginBottom;

  const customTextForm(
      {super.key,
      required this.titleForm,
      required this.placeholder,
      this.isSecure = false,
      this.marginBottom = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: marginBottom),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          titleForm,
          style: blackTextStyle.copyWith(fontSize: 14, fontWeight: light),
        ),
        SizedBox(
          height: 6,
        ),
        TextFormField(
          cursorColor: kDarkColor,
          obscureText: isSecure,
          decoration: InputDecoration(
              hintText: placeholder,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radiusDefault)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radiusDefault),
                  borderSide: BorderSide(color: kPrimaryColor))),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/fonts.dart';
import '../../../utils/sizes.dart';

SignInButtons(BuildContext context, String image, String text,
    Color buttonColor, bool textColor) {
  final width = MediaQuery.of(context).size.width;
  return Container(
    height: heightSize(50),
    width: width,
    padding: EdgeInsets.symmetric(
        horizontal: widthSize(10), vertical: heightSize(14)),
    decoration: BoxDecoration(
        color: buttonColor,
        border: Border.all(color: Color(0xFFDEDEDE)),
        borderRadius: BorderRadius.all(Radius.circular(widthSize(8)))),
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          height: heightSize(20),
          width: widthSize(20),
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          )),
      SizedBox(width: widthSize(10)),
      Text(
        text,
        style: TextStyle(
          color: textColor == true ? background : headerText,
          fontSize: fontSize(16),
          fontFamily: usedFonts().workSans,
          fontWeight: FontWeight.w700,
        ),
      )
    ]),
  );
}

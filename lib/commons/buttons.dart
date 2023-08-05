import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';

buttons(BuildContext context, String text, double height, double width,
    Color buttonColor) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(widthSize(8)))),
    child: Center(
        child: Text(
      text,
      style: TextStyle(
          fontSize: fontSize(16),
          fontFamily: usedFonts().workSans,
          color: background,
          fontWeight: FontWeight.w700),
    )),
  );
}

import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';

healthPackages(BuildContext context, String image, String heading,
    String subText, String ratings) {
  return Container(
    height: heightSize(210),
    width: widthSize(191),
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0x19000000),
          blurRadius: 60,
          offset: Offset(0, 6),
          spreadRadius: 0,
        )
      ],
    ),
    child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: widthSize(191),
            height: heightSize(119),
            child: Image.asset(image),
          ),
          SizedBox(height: heightSize(12)),
          Text(
            heading,
            style: TextStyle(
                fontSize: fontSize(16),
                color: const Color(0xFF030C54),
                fontWeight: FontWeight.w500,
                fontFamily: usedFonts().GTWalsheim),
          ),
          SizedBox(height: heightSize(8)),
          Text(
            "\$$subText",
            style: TextStyle(
                color: const Color(0xFF030C54),
                fontSize: fontSize(16),
                fontWeight: FontWeight.w700,
                fontFamily: usedFonts().workSans),
          ),
          SizedBox(height: heightSize(10)),
          Text(
            "⭐️ $ratings",
            style: TextStyle(
              color: const Color(0xFF030C54),
              fontSize: fontSize(16),
              fontFamily: usedFonts().GTWalsheim,
              fontWeight: FontWeight.w500,
            ),
          )
        ]),
  );
}

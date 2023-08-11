import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/fonts.dart';
import '../../../utils/sizes.dart';

otherServices(String text, String image) {
  return SizedBox(
    height: heightSize(93),
    width: widthSize(63),
    child: Column(children: [
      Container(
        height: heightSize(60),
        width: widthSize(60),
        decoration: ShapeDecoration(
          color: Color(0xFFF3F7FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x07000000),
              blurRadius: 20,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
            child: SizedBox(
                height: heightSize(30),
                width: widthSize(19.50),
                child: SvgPicture.asset(image))),
      ),
      SizedBox(height: heightSize(12)),
      Expanded(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF030C54),
            fontSize: fontSize(12),
            fontFamily: usedFonts().GTWalsheim,
            fontWeight: FontWeight.w400,
          ),
        ),
      )
    ]),
  );
}

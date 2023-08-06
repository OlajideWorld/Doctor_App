import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

ourServicesCard(String text, String image) {
  return SizedBox(
    height: heightSize(103),
    width: widthSize(70),
    child: Column(children: [
      Container(
        height: heightSize(70),
        width: widthSize(70),
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
                height: heightSize(32),
                width: widthSize(32),
                child: Image.asset(image))),
      ),
      SizedBox(height: heightSize(12)),
      Text(
        text,
        style: TextStyle(
          color: Color(0xFF030C54),
          fontSize: fontSize(14),
          fontFamily: usedFonts().GTWalsheim,
          fontWeight: FontWeight.w400,
        ),
      )
    ]),
  );
}

ourServicesList(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return SizedBox(
    height: heightSize(240),
    width: width,
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ourServicesCard("Blood Test", "assets/services1.png"),
          ourServicesCard("Blood Test", "assets/services2.png"),
          ourServicesCard("Blood Test", "assets/services3.png"),
          ourServicesCard("Blood Test", "assets/services4.png"),
        ],
      ),
      SizedBox(height: heightSize(24)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ourServicesCard("Blood Test", "assets/services5.png"),
          ourServicesCard("Blood Test", "assets/services6.png"),
          ourServicesCard("Blood Test", "assets/services7.png"),
          ourServicesCard("Blood Test", "assets/services8.png"),
        ],
      )
    ]),
  );
}

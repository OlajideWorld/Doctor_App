import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../commons/buttons.dart';
import '../../../utils/colors.dart';
import '../../../utils/fonts.dart';
import '../../../utils/sizes.dart';
import '../screens/services_details.dart';

servicesList(BuildContext context, String text, String image, bool isSvg) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      Get.to(() => const ServicesDetails());
    },
    child: Container(
      height: heightSize(112),
      width: width,
      padding: EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: heightSize(80),
            width: widthSize(80),
            child: isSvg ? SvgPicture.asset(image) : Image.asset(image),
          ),
          SizedBox(width: widthSize(12)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize(14),
                  fontFamily: usedFonts().GTWalsheim,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '⭐️ 4.2 (210 Reviews)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize(12),
                  fontFamily: usedFonts().GTWalsheim,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '\$270',
                style: TextStyle(
                  color: Color(0xFF022F8E),
                  fontSize: fontSize(14),
                  fontFamily: usedFonts().workSans,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          const Spacer(),
          buttons(context, "Details", heightSize(30), widthSize(57), headerText)
        ],
      ),
    ),
  );
}

scheduleWidget(BuildContext context, String text, String image, bool isSvg) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      Get.to(() => const ServicesDetails());
    },
    child: Container(
      height: heightSize(112),
      width: width,
      padding: EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: heightSize(80),
            width: widthSize(80),
            child: isSvg ? SvgPicture.asset(image) : Image.asset(image),
          ),
          SizedBox(width: widthSize(12)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize(14),
                  fontFamily: usedFonts().GTWalsheim,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '⭐️ 4.2 (210 Reviews)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize(12),
                  fontFamily: usedFonts().GTWalsheim,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '800m away',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize(12),
                  fontFamily: usedFonts().GTWalsheim,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          const Spacer(),
          Icon(
            Icons.keyboard_arrow_down,
            color: headerText,
            size: heightSize(18),
          )
        ],
      ),
    ),
  );
}

scheduleWidget2(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return Container(
    height: heightSize(41),
    width: width,
    padding: EdgeInsets.symmetric(
        horizontal: widthSize(16), vertical: heightSize(10)),
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    child: Row(children: [
      SizedBox(
        height: heightSize(16),
        width: widthSize(16.50),
        child: SvgPicture.asset("assets/Urologyimage24.svg"),
      ),
      SizedBox(width: widthSize(10)),
      Text(
        'Minor Surgery',
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize(14),
          fontFamily: usedFonts().GTWalsheim,
          fontWeight: FontWeight.w400,
          height: 1.50,
        ),
      ),
      const Spacer(),
      Icon(
        Icons.keyboard_arrow_down,
        color: headerText,
        size: heightSize(16),
      )
    ]),
  );
}

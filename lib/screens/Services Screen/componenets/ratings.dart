import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

ratingsBox(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: widthSize(20)),
    child: SizedBox(
      height: heightSize(60),
      child: Row(children: [
        SizedBox(
          height: heightSize(60),
          width: widthSize(60),
          child: SvgPicture.asset("assets/Pharmacyimage16.svg"),
        ),
        SizedBox(width: widthSize(16)),
        Column(
          children: [
            Text(
              'Minor Surgery',
              style: TextStyle(
                color: Colors.black,
                fontSize: fontSize(16),
                fontFamily: usedFonts().workSans,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '⭐️ 4.2 (210 Reviews)',
              style: TextStyle(
                color: Colors.black,
                fontSize: fontSize(14),
                fontFamily: usedFonts().GTWalsheim,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        const Spacer(),
        SizedBox(
          height: heightSize(24),
          width: widthSize(24),
          child: SvgPicture.asset("assets/Heart.svg"),
        )
      ]),
    ),
  );
}

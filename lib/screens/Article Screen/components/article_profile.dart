import 'package:doctor_app/commons/buttons.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';

followImage(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return SizedBox(
    height: heightSize(40),
    width: width,
    child: Row(children: [
      SizedBox(
        height: heightSize(32),
        width: widthSize(32),
        child: Image.asset("assets/johndoe.png"),
      ),
      SizedBox(width: widthSize(8)),
      Column(
        children: [
          Text(
            'John Doe',
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize(14),
              fontFamily: usedFonts().workSans,
              fontWeight: FontWeight.w500,
              height: 1.50,
            ),
          ),
          Text(
            '22 Dec 2022',
            style: TextStyle(
              color: const Color(0xFFADADAD),
              fontSize: fontSize(12),
              fontFamily: usedFonts().workSans,
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          )
        ],
      ),
      const Spacer(),
      buttons(context, "follow", heightSize(25), widthSize(55), headerText)
    ]),
  );
}

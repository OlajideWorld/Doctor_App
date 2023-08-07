import 'package:doctor_app/commons/buttons.dart';
import 'package:doctor_app/screens/Sign%20in%20Screen/screens/sign_up_options.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

PageViewWidget(String image, BuildContext context, String Header,
    String subText, bool showButton) {
  final width = MediaQuery.of(context).size.width;
  return SizedBox(
    height: heightSize(400),
    width: width,
    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(
        height: heightSize(250),
        width: width,
        child: Image.asset(image),
      ),
      SizedBox(height: heightSize(150)),
      Text(
        Header,
        style: TextStyle(
          color: Color(0xFF00003F),
          fontSize: fontSize(24),
          fontFamily: usedFonts().workSans,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.72,
        ),
      ),
      SizedBox(height: heightSize(10)),
      Text(
        subText,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF444444),
          fontSize: fontSize(14),
          fontFamily: usedFonts().GTWalsheim,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.42,
        ),
      ),
      SizedBox(height: heightSize(58)),
      showButton == true
          ? GestureDetector(
              onTap: () {
                Get.to(() => SignInOptionsScreens());
              },
              child: buttons(context, "Get Started", heightSize(50), width,
                  Color(0xFF022F8E)),
            )
          : const SizedBox()
    ]),
  );
}

PageViewWidget2(String image, BuildContext context, bool useSvg) {
  final width = MediaQuery.of(context).size.width;
  return SizedBox(
    height: heightSize(200),
    width: width,
    child: useSvg == true ? SvgPicture.asset(image) : Image.asset(image),
  );
}

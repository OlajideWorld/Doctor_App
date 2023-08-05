import 'package:doctor_app/commons/buttons.dart';
import 'package:doctor_app/screens/homescreen/screens/homescreen.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class SignUpSuccessScreen extends StatelessWidget {
  const SignUpSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: background,
        body: Container(
          height: height,
          width: width,
          padding: EdgeInsets.only(
              top: heightSize(174),
              left: widthSize(20),
              right: widthSize(20),
              bottom: heightSize(30)),
          child: Column(
            children: [
              SizedBox(
                height: heightSize(300),
                width: widthSize(300),
                child: Image.asset(
                  "assets/signupSuccess.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: heightSize(29)),
              Text(
                "Registration Success!",
                style: TextStyle(
                    color: headerText,
                    fontFamily: usedFonts().workSans,
                    fontSize: fontSize(20),
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: heightSize(8)),
              Text(
                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor2,
                  fontSize: fontSize(14),
                  fontWeight: FontWeight.w600,
                  fontFamily: usedFonts().GTWalsheim,
                  height: 1.50,
                  letterSpacing: 0.42,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.homeScreen),
                child: buttons(context, "Continue", heightSize(50), width,
                    const Color(0xFF022F8E)),
              )
            ],
          ),
        ),
      );
    });
  }
}

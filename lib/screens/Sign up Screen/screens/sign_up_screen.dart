import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../commons/buttons.dart';
import '../../../utils/colors.dart';
import '../../../utils/fonts.dart';
import '../../../utils/sizes.dart';
import '../../Sign in Screen/components/sign_in_buttons.dart';
import '../../Sign in Screen/screens/sign_in_number.dart';
import '../../onBoard Screen/components/pagaviews.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final pageController = PageController();
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
              left: widthSize(20),
              right: widthSize(20),
              top: heightSize(77),
              bottom: heightSize(30)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              "Sign Up",
              style: TextStyle(
                color: headerText,
                fontSize: fontSize(28),
                fontFamily: usedFonts().workSans,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: heightSize(11)),
            Text(
              "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF777777),
                  fontSize: fontSize(14),
                  fontFamily: usedFonts().GTWalsheim,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: heightSize(32)),
            SizedBox(
              height: heightSize(200),
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: pageController,
                children: [
                  PageViewWidget2("assets/splashimage2.png", context, false),
                  PageViewWidget2("assets/pageview4.svg", context, true),
                  PageViewWidget2("assets/splashimage2.png", context, false)
                ],
              ),
            ),
            SizedBox(height: heightSize(32)),
            Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                    activeDotColor: headerText,
                    dotColor: pageindicator,
                    dotWidth: widthSize(6),
                    dotHeight: heightSize(6)),
              ),
            ),
            SizedBox(height: heightSize(37)),
            GestureDetector(
              onTap: () => Get.to(() => const SignInNumber(
                    isSignIn: false,
                    HeadText: "Sign Up",
                  )),
              child: buttons(context, "Sign Up With Phone Number",
                  heightSize(50), width, headerText),
            ),
            SizedBox(height: heightSize(20)),
            Text("Or",
                style: TextStyle(
                    color: headerText,
                    fontSize: fontSize(14),
                    fontWeight: FontWeight.w500,
                    fontFamily: usedFonts().workSans)),
            SizedBox(height: heightSize(22)),
            SignInButtons(context, "assets/FacebookLogo.png",
                "Sign In With Facebook", buttonColor2, true),
            SizedBox(height: heightSize(12)),
            SignInButtons(context, "assets/GoogleLogo.png",
                "Sign In With Google", background, false),
            SizedBox(height: heightSize(12)),
            SignInButtons(context, "assets/AppleLogo.png", "Sign In With Apple",
                headerText, true),
            const Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an accountt? ',
                    style: TextStyle(
                      color: headerText,
                      fontSize: fontSize(14),
                      fontFamily: usedFonts().GTWalsheim,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                      text: 'Sign In Here',
                      style: TextStyle(
                        color: const Color(0xFF022F8E),
                        fontSize: fontSize(14),
                        fontFamily: usedFonts().workSans,
                        fontWeight: FontWeight.w700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.back();
                        }),
                ],
              ),
            )
          ]),
        ),
      );
    });
  }
}

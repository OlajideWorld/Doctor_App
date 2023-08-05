import 'package:doctor_app/commons/buttons.dart';
import 'package:doctor_app/screens/Sign%20in%20Screen/components/sign_in_buttons.dart';
import 'package:doctor_app/screens/Sign%20in%20Screen/screens/sign_in_number.dart';
import 'package:doctor_app/screens/Sign%20up%20Screen/screens/sign_up_screen.dart';
import 'package:doctor_app/screens/onBoard%20Screen/components/pagaviews.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignInOptionsScreens extends StatelessWidget {
  SignInOptionsScreens({super.key});

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
              "Sign In",
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
                  PageViewWidget2("assets/pageview4.svg", context, true),
                  PageViewWidget2("assets/splashimage2.png", context, false),
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
                    isSignIn: true,
                    HeadText: "Sign In",
                  )),
              child: buttons(context, "Continue With Phone Number",
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
                    text: "Don't have an account? ",
                    style: TextStyle(
                      color: headerText,
                      fontSize: fontSize(14),
                      fontFamily: usedFonts().GTWalsheim,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                      text: 'Sign Up Here',
                      style: TextStyle(
                        color: const Color(0xFF022F8E),
                        fontSize: fontSize(14),
                        fontFamily: usedFonts().workSans,
                        fontWeight: FontWeight.w700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => SignUpScreen());
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

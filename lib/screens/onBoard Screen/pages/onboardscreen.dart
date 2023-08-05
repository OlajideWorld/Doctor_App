import 'package:doctor_app/screens/onBoard%20Screen/components/pagaviews.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreens extends StatelessWidget {
  OnBoardScreens({super.key});

  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, connstraints) {
        return Scaffold(
            backgroundColor: background,
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: heightSize(30), horizontal: widthSize(20)),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          pageController.animateToPage(2,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: headerText,
                              fontWeight: FontWeight.w500,
                              fontFamily: usedFonts().GTWalsheim,
                              fontSize: fontSize(14)),
                        ),
                      ),
                    ),
                    SizedBox(height: heightSize(110)),
                    Expanded(
                      child: SizedBox(
                        child: Stack(
                          children: [
                            PageView(
                              physics: const BouncingScrollPhysics(),
                              controller: pageController,
                              children: [
                                PageViewWidget(
                                    "assets/pageview1.png",
                                    context,
                                    "Check Health",
                                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                                    false),
                                PageViewWidget(
                                    "assets/pageview2.png",
                                    context,
                                    "Regular Check",
                                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                                    false),
                                PageViewWidget(
                                    "assets/pageview3.png",
                                    context,
                                    "Get Healthy",
                                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                                    true),
                              ],
                            ),
                            Center(
                              child: SmoothPageIndicator(
                                controller: pageController,
                                count: 3,
                                effect: JumpingDotEffect(
                                    activeDotColor: headerText,
                                    dotColor: pageindicator,
                                    dotWidth: widthSize(6),
                                    dotHeight: heightSize(6)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}

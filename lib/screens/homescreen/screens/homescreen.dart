import 'package:doctor_app/Services/api_call.dart';
import 'package:doctor_app/commons/customButtomBar.dart';
import 'package:doctor_app/models/service_model_response.dart';
import 'package:doctor_app/screens/Sign%20up%20Screen/controller/sign_up_controller.dart';
import 'package:doctor_app/screens/Services%20Screen/screens/our_services_screen.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/healthPackages.dart';
import '../components/health_articles.dart';
import '../components/homeAppBar.dart';
import '../components/message_container.dart';
import '../components/our_services.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final SignUpController controller = SignUpController.instance;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        backgroundColor: background,
        body: Container(
          height: height,
          width: width,
          padding: EdgeInsets.only(
              top: height * 0.05,
              left: widthSize(20),
              right: widthSize(20),
              bottom: heightSize(5)),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    homeAppBar(context),
                    SizedBox(height: heightSize(20)),
                    messageContainer(context),
                    SizedBox(height: heightSize(20)),
                    Text(
                      'Upcoming Appointment',
                      style: TextStyle(
                        color: headerText,
                        fontSize: fontSize(20),
                        fontFamily: usedFonts().workSans,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: heightSize(15)),
                    appointmentWidget(context),
                    SizedBox(height: heightSize(24)),
                    Text(
                      'Our Services',
                      style: TextStyle(
                        color: headerText,
                        fontSize: fontSize(20),
                        fontFamily: usedFonts().workSans,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: heightSize(19)),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const OurServicesScreen());
                      },
                      child: ourServicesList(context),
                    ),
                    SizedBox(height: heightSize(24)),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        healthPackages(context, "assets/healthimage1.png",
                            "Full Blood Examination", "450", "4.5"),
                        SizedBox(width: widthSize(16)),
                        healthPackages(context, "assets/healthimage2.png",
                            "Diabetic Screening", "270", "4.2")
                      ]),
                    ),
                    SizedBox(height: heightSize(24)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Health article',
                          style: TextStyle(
                            color: const Color(0xFF030C54),
                            fontSize: fontSize(20),
                            fontFamily: usedFonts().workSans,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            color: const Color(0xFF030C54),
                            fontSize: fontSize(12),
                            fontFamily: usedFonts().workSans,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: heightSize(15)),
                    healthArticlesWidget(
                        context,
                        "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                        "Jun 10, 2021 . 5min Read",
                        "assets/healthArticle.png"),
                    SizedBox(height: heightSize(14)),
                    healthArticlesWidget(
                        context,
                        "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                        "Jun 10, 2021 . 5min Read",
                        "assets/healthArticle.png"),
                    SizedBox(height: heightSize(14)),
                    healthArticlesWidget(
                        context,
                        "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                        "Jun 10, 2021 . 5min Read",
                        "assets/healthArticle.png")
                  ]),
            ),
          ),
        ),
      );
    });
  }
}

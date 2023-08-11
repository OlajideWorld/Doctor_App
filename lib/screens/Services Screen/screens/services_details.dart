import 'package:doctor_app/commons/buttons.dart';
import 'package:doctor_app/screens/Services%20Screen/componenets/other_services.dart';
import 'package:doctor_app/screens/Services%20Screen/screens/schedule_appointment.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/fonts.dart';
import '../componenets/ratings.dart';

class ServicesDetails extends StatelessWidget {
  const ServicesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      body: Container(
        height: height,
        width: width,
        // padding: EdgeInsets.only(top: height * 0.03),
        decoration: const BoxDecoration(
          color: background,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: heightSize(188),
                width: width,
                child: Stack(
                  children: [
                    SizedBox(
                      height: heightSize(188),
                      width: width,
                      child: Image.asset(
                        "assets/surgery.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: heightSize(54), horizontal: widthSize(21)),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => Get.back(),
                            child: SizedBox(
                              height: heightSize(24),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: heightSize(20),
                              ),
                            ),
                          ),
                          SizedBox(width: widthSize(117)),
                          Text(
                            'Our Service',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: fontSize(20),
                              fontFamily: usedFonts().workSans,
                              fontWeight: FontWeight.w700,
                              // letterSpacing: 0.48,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: heightSize(15)),
              ratingsBox(context),
              SizedBox(height: heightSize(20)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthSize(20)),
                child: Text(
                  'About Service',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize(14),
                    fontFamily: usedFonts().workSans,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: heightSize(12)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthSize(20)),
                child: Text(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize(14),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: heightSize(20)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthSize(20)),
                child: Text(
                  'Open Hours',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize(14),
                    fontFamily: usedFonts().workSans,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: heightSize(8)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthSize(20)),
                child: Text(
                  'Monday - Friday, 08:00 am - 12:pm',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize(14),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: heightSize(24)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthSize(20)),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const ScheduleAppointmentScreen());
                  },
                  child: buttons(context, "Book Appointment", heightSize(40),
                      width, headerText),
                ),
              ),
              SizedBox(height: heightSize(30)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthSize(20)),
                child: Text(
                  'Other Service',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize(14),
                    fontFamily: usedFonts().workSans,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: heightSize(22)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthSize(20)),
                child: SizedBox(
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        otherServices("Ultra Sound", "assets/UltraSound.svg"),
                        otherServices("Ultra Sound",
                            "assets/Obstetrics & Gynecologyimage22.svg"),
                        otherServices(
                            "Ultra Sound", "assets/mdi_blood-checkimage19.svg"),
                        otherServices("Ultra Sound", "assets/UltraSound.svg")
                      ],
                    ),
                    SizedBox(height: heightSize(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        otherServices("Ultra Sound", "assets/UltraSound.svg"),
                        otherServices("Ultra Sound",
                            "assets/Obstetrics & Gynecologyimage22.svg"),
                        otherServices(
                            "Ultra Sound", "assets/mdi_blood-checkimage19.svg"),
                        otherServices(
                            "Ultra Sound", "assets/UltraSound.svg")
                      ],
                    )
                  ]),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

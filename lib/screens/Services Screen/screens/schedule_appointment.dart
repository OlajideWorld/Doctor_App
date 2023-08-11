import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/fonts.dart';
import '../componenets/select_time.dart';
import '../componenets/services_list.dart';

class ScheduleAppointmentScreen extends StatelessWidget {
  const ScheduleAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.only(
            top: height * 0.05, left: widthSize(20), right: widthSize(20)),
        decoration: const BoxDecoration(color: background),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: SizedBox(
                    height: heightSize(24),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: headerText,
                      size: heightSize(20),
                    ),
                  ),
                ),
                SizedBox(width: widthSize(51)),
                Text(
                  'Schedule Appointment',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize(20),
                    fontFamily: usedFonts().workSans,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.48,
                  ),
                )
              ],
            ),
            SizedBox(height: heightSize(27)),
            scheduleWidget2(context),
            SizedBox(height: heightSize(19)),
            scheduleWidget(
                context, "Klinik Setia Alam", "assets/schedule.png", false),
            SizedBox(height: heightSize(16)),
            Text(
              'Select Time',
              style: TextStyle(
                color: Colors.black,
                fontSize: fontSize(14),
                fontFamily: usedFonts().workSans,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: heightSize(16)),
            const SelectAppointmentTime()
          ],
        ),
      ),
    );
  }
}

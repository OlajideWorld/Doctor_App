import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';

messageContainer(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return Container(
    height: heightSize(135),
    width: width,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      gradient: const LinearGradient(
        begin: Alignment(1.00, -0.00),
        end: Alignment(-1, 0),
        colors: [Color(0xFF022F8E), Color(0xD8022F8E)],
      ),
    ),
    padding: EdgeInsets.only(left: widthSize(26)),
    child: Row(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: heightSize(21)),
            child: Text(
              "Early protection for\nyour family health",
              style: TextStyle(
                  fontFamily: usedFonts().workSans,
                  color: background,
                  fontWeight: FontWeight.w600,
                  fontSize: fontSize(24)),
            ),
          ),
          SizedBox(height: heightSize(15)),
          Container(
            height: heightSize(29),
            width: widthSize(97),
            decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.15000000596046448),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: Center(
              child: Text(
                "Learn more",
                style: TextStyle(
                    fontSize: fontSize(14),
                    color: background,
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
      SizedBox(width: widthSize(15)),
      SizedBox(
        height: heightSize(135),
        width: widthSize(121),
        child: Image.asset(
          "assets/homeimage2.png",
          fit: BoxFit.contain,
        ),
      )
    ]),
  );
}

appointmentCard(BuildContext context, String text1, String text2) {
  return SizedBox(
    height: heightSize(36),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: TextStyle(
              color: const Color(0xFFADADAD),
              fontSize: fontSize(14),
              fontFamily: usedFonts().GTWalsheim,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              color: const Color(0xFF030C54),
              fontSize: fontSize(14),
              fontFamily: usedFonts().GTWalsheim,
              fontWeight: FontWeight.w500,
            ),
          )
        ]),
  );
}

appointmentWidget(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return Column(
    children: [
      Container(
        height: heightSize(75),
        width: width,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            color: background,
            border: Border(bottom: BorderSide(color: Color(0xFFE6E8F0)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appointmentCard(context, "Date", '14 May 2023'),
            appointmentCard(context, "Time", '10:30 am'),
            appointmentCard(context, "Doctor", 'Dr. Andreas Hugo')
          ],
        ),
      ),
      Container(
        height: heightSize(75),
        width: width,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            color: background,
            border: Border(top: BorderSide(color: Color(0xFFE6E8F0)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appointmentCard(context, "Date", '14 May 2023'),
            appointmentCard(context, "Time", '10:30 am'),
            Container(
              height: heightSize(35),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: ShapeDecoration(
                color: Color(0xFF022F8E),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Center(
                  child: Text(
                "Reschedule",
                style: TextStyle(
                  color: background,
                  fontSize: fontSize(14),
                  fontFamily: usedFonts().GTWalsheim,
                  fontWeight: FontWeight.w500,
                ),
              )),
            )
          ],
        ),
      ),
    ],
  );
}

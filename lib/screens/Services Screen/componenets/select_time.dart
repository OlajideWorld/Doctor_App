import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';

enum Time {
  nineAm,
  tenAm,
  elevenAm,
  onePm,
  twoPm,
  threePm,
  fourPm,
  fivePm,
  sixPm,
  sevenPm,
  eightPm
}

class SelectAppointmentTime extends StatefulWidget {
  const SelectAppointmentTime({super.key});

  @override
  State<SelectAppointmentTime> createState() => _SelectAppointmentTimeState();
}

class _SelectAppointmentTimeState extends State<SelectAppointmentTime> {
  Time time = Time.twoPm;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: heightSize(200),
      width: width,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  time = Time.nineAm;
                });
              },
              child: Container(
                height: heightSize(37),
                width: widthSize(103),
                decoration: ShapeDecoration(
                  color: time == Time.nineAm
                      ? const Color(0xFF022F8E)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                    child: Text(
                  '09:00 AM',
                  style: TextStyle(
                    color: time == Time.nineAm ? Colors.white : Colors.black,
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
            //
            //
            GestureDetector(
              onTap: () {
                setState(() {
                  time = Time.tenAm;
                });
              },
              child: Container(
                height: heightSize(37),
                width: widthSize(103),
                decoration: ShapeDecoration(
                  color: time == Time.tenAm
                      ? const Color(0xFF022F8E)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                    child: Text(
                  '10:00 AM',
                  style: TextStyle(
                    color: time == Time.tenAm ? Colors.white : Colors.black,
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
            //
            //
            GestureDetector(
              onTap: () {
                setState(() {
                  time = Time.elevenAm;
                });
              },
              child: Container(
                height: heightSize(37),
                width: widthSize(103),
                decoration: ShapeDecoration(
                  color: time == Time.elevenAm
                      ? const Color(0xFF022F8E)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                    child: Text(
                  '11:00 AM',
                  style: TextStyle(
                    color: time == Time.elevenAm ? Colors.white : Colors.black,
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            )
          ],
        ),
//
        SizedBox(height: heightSize(15)),

        //
        // 2Nd Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  time = Time.onePm;
                });
              },
              child: Container(
                height: heightSize(37),
                width: widthSize(103),
                decoration: ShapeDecoration(
                  color: time == Time.onePm
                      ? const Color(0xFF022F8E)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                    child: Text(
                  '13:00 PM',
                  style: TextStyle(
                    color: time == Time.onePm ? Colors.white : Colors.black,
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
            //
            //
            GestureDetector(
              onTap: () {
                setState(() {
                  time = Time.twoPm;
                });
              },
              child: Container(
                height: heightSize(37),
                width: widthSize(103),
                decoration: ShapeDecoration(
                  color: time == Time.twoPm
                      ? const Color(0xFF022F8E)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                    child: Text(
                  '14:00 PM',
                  style: TextStyle(
                    color: time == Time.twoPm ? Colors.white : Colors.black,
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
            //
            //
            GestureDetector(
              onTap: () {
                setState(() {
                  time = Time.threePm;
                });
              },
              child: Container(
                height: heightSize(37),
                width: widthSize(103),
                decoration: ShapeDecoration(
                  color: time == Time.threePm
                      ? const Color(0xFF022F8E)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                    child: Text(
                  '15:00 PM',
                  style: TextStyle(
                    color: time == Time.threePm ? Colors.white : Colors.black,
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            )
          ],
        ),
//
        SizedBox(height: heightSize(15)),
        //
        // 3RD Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  time = Time.fourPm;
                });
              },
              child: Container(
                height: heightSize(37),
                width: widthSize(103),
                decoration: ShapeDecoration(
                  color: time == Time.fourPm
                      ? const Color(0xFF022F8E)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                    child: Text(
                  '16:00 PM',
                  style: TextStyle(
                    color: time == Time.fourPm ? Colors.white : Colors.black,
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
            //
            //
            GestureDetector(
              onTap: () {
                setState(() {
                  time = Time.fivePm;
                });
              },
              child: Container(
                height: heightSize(37),
                width: widthSize(103),
                decoration: ShapeDecoration(
                  color: time == Time.fivePm
                      ? const Color(0xFF022F8E)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                    child: Text(
                  '17:00 PM',
                  style: TextStyle(
                    color: time == Time.fivePm ? Colors.white : Colors.black,
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
            //
            //
            GestureDetector(
              onTap: () {
                setState(() {
                  time = Time.sixPm;
                });
              },
              child: Container(
                height: heightSize(37),
                width: widthSize(103),
                decoration: ShapeDecoration(
                  color: time == Time.sixPm
                      ? const Color(0xFF022F8E)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                    child: Text(
                  '18:00 PM',
                  style: TextStyle(
                    color: time == Time.sixPm ? Colors.white : Colors.black,
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            )
          ],
        ),
        //

        SizedBox(height: heightSize(15)),
        //
        // 4TH Row
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  time = Time.sevenPm;
                });
              },
              child: Container(
                height: heightSize(37),
                width: widthSize(103),
                decoration: ShapeDecoration(
                  color: time == Time.sevenPm
                      ? const Color(0xFF022F8E)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                    child: Text(
                  '19:00 PM',
                  style: TextStyle(
                    color: time == Time.sevenPm ? Colors.white : Colors.black,
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
            //
            SizedBox(width: widthSize(35)),
            //
            GestureDetector(
              onTap: () {
                setState(() {
                  time = Time.eightPm;
                });
              },
              child: Container(
                height: heightSize(37),
                width: widthSize(103),
                decoration: ShapeDecoration(
                  color: time == Time.eightPm
                      ? const Color(0xFF022F8E)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                    child: Text(
                  '20:00 PM',
                  style: TextStyle(
                    color: time == Time.eightPm ? Colors.white : Colors.black,
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';

enum Status { employee, selfEmployed }

class SelectStatus extends StatefulWidget {
  final String status;
  final String firstIntance;
  final String secondInstance;
  const SelectStatus(
      {super.key,
      required this.status,
      required this.firstIntance,
      required this.secondInstance});

  @override
  State<SelectStatus> createState() => _SelectStatusState();
}

class _SelectStatusState extends State<SelectStatus> {
  Status _status = Status.employee;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: heightSize(60),
      width: width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(widget.status,
            style: TextStyle(
              color: Color(0xFF111828),
              fontSize: fontSize(20),
              fontFamily: usedFonts().GTWalsheim,
              fontWeight: FontWeight.w500,
              // height: 1.31,
              // letterSpacing: 0.32,
            )),
        SizedBox(height: heightSize(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: heightSize(21),
              width: widthSize(95),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: heightSize(16),
                      width: widthSize(16),
                      child: Radio(
                          activeColor: headerText,
                          value: Status.employee,
                          groupValue: _status,
                          onChanged: (Status? val) {
                            setState(() {
                              _status = val!;
                            });
                          }),
                    ),
                    SizedBox(width: widthSize(8)),
                    Text(
                      widget.firstIntance,
                      style: TextStyle(
                        color: const Color(0xFF00003F),
                        fontSize: fontSize(16),
                        fontFamily: usedFonts().workSans,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ]),
            ),
            SizedBox(width: widthSize(24)),
            SizedBox(
              height: heightSize(21),
              width: widthSize(125),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: heightSize(16),
                      width: widthSize(16),
                      child: Radio(
                          activeColor: headerText,
                          value: Status.selfEmployed,
                          groupValue: _status,
                          onChanged: (Status? val) {
                            setState(() {
                              _status = val!;
                            });
                          }),
                    ),
                    SizedBox(width: widthSize(8)),
                    Text(
                      widget.secondInstance,
                      style: TextStyle(
                        color: const Color(0xFF00003F),
                        fontSize: fontSize(16),
                        fontFamily: usedFonts().workSans,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ]),
            )
          ],
        )
      ]),
    );
  }
}

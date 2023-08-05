// ignore_for_file: file_names

import 'dart:developer';

import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:flutter/material.dart';

import '../../../models/listLabels.dart';
import '../../../utils/sizes.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String initial = "Gender";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightSize(100),
      width: widthSize(150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sex",
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize(16),
              fontFamily: usedFonts().GTWalsheim,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: heightSize(10)),
          Container(
            height: heightSize(50),
            padding: EdgeInsets.symmetric(horizontal: widthSize(20)),
            decoration: BoxDecoration(
              color: background,
              border: Border.all(color: Color(0xFFDEDEDE)),
              borderRadius: BorderRadius.circular(widthSize(10)),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                value: initial,
                onChanged: (String? val) {
                  setState(() {
                    initial = val!;
                  });
                  log(initial);
                },
                items: SelectedItems().gender.map((item) {
                  return DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(
                            fontSize: fontSize(20),
                            fontFamily: usedFonts().workSans,
                            fontWeight: FontWeight.w400),
                      ));
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

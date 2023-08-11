import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';

class SelectCategoriesWidget extends StatefulWidget {
  final String text;
  final double width;
  final bool selectedValue;
  const SelectCategoriesWidget(
      {super.key,
      required this.width,
      required this.text,
      required this.selectedValue});

  @override
  State<SelectCategoriesWidget> createState() => _SelectCategoriesWidgetState();
}

class _SelectCategoriesWidgetState extends State<SelectCategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    bool selected = widget.selectedValue;
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        height: heightSize(25),
        width: widthSize(widget.width),
        padding: EdgeInsets.symmetric(horizontal: widthSize(8)),
        decoration: ShapeDecoration(
          color: selected == true ? headerText : const Color(0xFFECEDF1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: selected == false ? headerText : Colors.white,
              fontSize: fontSize(12),
              fontFamily: usedFonts().workSans,
              fontWeight: FontWeight.w500,
              height: 1.75,
            ),
          ),
        ),
      ),
    );
  }
}

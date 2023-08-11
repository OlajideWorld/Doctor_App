import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';

productGelleryWidget(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Container(
    width: widthSize(118),
    height: heightSize(165),
    padding: EdgeInsets.only(top: heightSize(21)),
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.50, color: Color(0xFFECEDF1)),
        borderRadius: BorderRadius.circular(11.13),
      ),
    ),
    child: Column(children: [
      SizedBox(
        height: heightSize(60.32),
        width: widthSize(60.32),
        child: Image.asset("assets/product1.png"),
      )
    ]),
  );
}

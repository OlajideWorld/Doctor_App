import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';

productSampleImage(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Container(
    height: heightSize(135),
    width: width,
    padding: EdgeInsets.only(
        top: heightSize(21), left: widthSize(26), bottom: heightSize(19)),
    decoration: ShapeDecoration(
      color: const Color(0x143E3D95),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    child: Row(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Order quickly with\nPrescription',
            style: TextStyle(
              color: const Color(0xFF101623),
              fontSize: fontSize(18),
              fontFamily: usedFonts().GTWalsheim,
              fontWeight: FontWeight.w500,
              height: 1.39,
            ),
          ),
          Container(
            height: heightSize(30),
            width: widthSize(127),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: ShapeDecoration(
              color: Color(0xFF022F8E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Text(
              'Upload Prescription',
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize(12),
                fontFamily: usedFonts().GTWalsheim,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
      Transform(
        transform: Matrix4.identity()
          ..translate(0.0, 0.0)
          ..rotateZ(-0.20),
        child: Container(
          width: widthSize(213.76),
          height: heightSize(159.84),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/storeimage.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ]),
  );
}

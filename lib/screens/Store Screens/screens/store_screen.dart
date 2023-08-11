import 'package:doctor_app/screens/Services%20Screen/componenets/other_services.dart';
import 'package:doctor_app/screens/Store%20Screens/components/product_sample.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';

import '../../../commons/customButtomBar.dart';
import '../../homescreen/components/homeAppBar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: const CustomNavBar(),
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.only(
            top: height * 0.05, left: widthSize(20), right: widthSize(20)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          homeAppBar(context),
          SizedBox(height: heightSize(20)),
          productSampleImage(context),
          SizedBox(height: heightSize(20)),
          SizedBox(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  otherServices("Suplemen", "assets/medicineimage20.svg"),
                  otherServices("Nassal Care", "assets/medicineimage20.svg"),
                  otherServices("Femine Care", "assets/medicineimage20.svg"),
                  otherServices("Gastroenterol", "assets/medicineimage20.svg")
                ]),
          ),
          SizedBox(height: heightSize(20)),
          SizedBox(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  otherServices("Suplemen", "assets/medicineimage20.svg"),
                  otherServices("Nassal Care", "assets/medicineimage20.svg"),
                  otherServices("Femine Care", "assets/medicineimage20.svg"),
                  otherServices("Gastroenterol", "assets/medicineimage20.svg")
                ]),
          ),
          SizedBox(height: heightSize(20)),
          Text(
            'Popular Product',
            style: TextStyle(
              color: const Color(0xFF101623),
              fontSize: fontSize(16),
              fontFamily: usedFonts().workSans,
              fontWeight: FontWeight.w700,
            ),
          ),
  
        ]),
      ),
    );
  }
}

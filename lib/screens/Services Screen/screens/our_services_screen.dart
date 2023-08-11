import 'dart:developer';

import 'package:doctor_app/Services/api_call.dart';
import 'package:doctor_app/screens/Services%20Screen/componenets/services_list.dart';
import 'package:doctor_app/screens/Services%20Screen/screens/services_details.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../commons/buttons.dart';
import '../../../models/service_model_response.dart';
import '../../../utils/sizes.dart';

class OurServicesScreen extends StatefulWidget {
  const OurServicesScreen({super.key});

  @override
  State<OurServicesScreen> createState() => _OurServicesScreenState();
}

class _OurServicesScreenState extends State<OurServicesScreen> {
  ServiceResponse? _services;

  @override
  void initState() {
    super.initState();
    getServices();
  }

  getServices() async {
    final data = await ApiCalls().fetchServices();
    setState(() {
      _services = data;
    });
  }

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
            top: height * 0.05,
            left: widthSize(20),
            right: widthSize(20),
            bottom: heightSize(5)),
        child: Column(children: [
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
              SizedBox(width: widthSize(117)),
              Text(
                'Our Service',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize(20),
                  fontFamily: usedFonts().workSans,
                  fontWeight: FontWeight.w700,
                  // letterSpacing: 0.48,
                ),
              )
            ],
          ),
          SizedBox(height: heightSize(24)),
          SizedBox(
            height: heightSize(44),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    size: heightSize(18),
                  ),
                  hintText: "Search doctor, drugs, articles...",
                  hintStyle: TextStyle(
                    color: const Color(0xFFADADAD),
                    fontSize: fontSize(12),
                    fontFamily: usedFonts().workSans,
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(color: headerText, width: 0.50)),
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(color: Colors.grey, width: 0.50))),
            ),
          ),
          SizedBox(height: heightSize(20)),
          servicesList(
              context, "Minor Surgery", "assets/Pharmacyimage16.svg", true),
          servicesList(context, "Utra Sound", "assets/UltraSound.svg", true),
          servicesList(context, "ECG", "assets/medicineimage20.svg", true),
          servicesList(context, "X-Ray", "assets/Pharmacyimage16.svg", true),
          servicesList(context, "Blood Test", "assets/Blood Test.svg", true),
          servicesList(
              context, "Blood Test", "assets/Group 23image15.svg", true)
        ]),
      ),
    );
  }
}

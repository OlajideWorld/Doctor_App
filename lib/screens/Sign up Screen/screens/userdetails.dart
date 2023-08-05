import 'package:doctor_app/commons/buttons.dart';
import 'package:doctor_app/commons/inputText.dart';
import 'package:doctor_app/screens/Sign%20up%20Screen/screens/signup_success.dart';
import 'package:doctor_app/screens/Sign%20up%20Screen/components/dropdownGender.dart';
import 'package:doctor_app/screens/Sign%20up%20Screen/components/pickImage.dart';
import 'package:doctor_app/screens/Sign%20up%20Screen/components/select_medical_cards.dart';
import 'package:doctor_app/screens/Sign%20up%20Screen/components/select_status.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../utils/fonts.dart';

class InputUserDetailsScreen extends StatelessWidget {
  const InputUserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: background,
        body: Container(
          height: height,
          width: width,
          padding: EdgeInsets.only(
              top: heightSize(52), left: widthSize(20), right: widthSize(20)),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
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
                      "Sign Up",
                      style: TextStyle(
                          color: headerText,
                          fontSize: fontSize(20),
                          fontFamily: usedFonts().workSans,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(height: heightSize(41)),
                Text(
                  "User Details",
                  style: TextStyle(
                      color: headerText,
                      fontSize: fontSize(24),
                      fontWeight: FontWeight.w700,
                      fontFamily: usedFonts().workSans),
                ),
                SizedBox(height: heightSize(11)),
                Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF777777),
                      fontSize: fontSize(14),
                      fontFamily: usedFonts().GTWalsheim,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: heightSize(20)),
                const PickingImage(),
                SizedBox(height: heightSize(22)),
                const SelectStatus(
                    status: "Working Status",
                    firstIntance: "Employee",
                    secondInstance: "Self Employee"),
                SizedBox(height: heightSize(22)),
                const InputTextField(
                    hintText: "Input Name",
                    obscureText: false,
                    text: "Name",
                    innerColor: background,
                    textColor: Colors.black,
                    differentiate: 2),
                SizedBox(height: heightSize(21)),
                SizedBox(
                  height: heightSize(180),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Datails",
                            style: TextStyle(
                                fontSize: fontSize(20),
                                fontFamily: usedFonts().GTWalsheim,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                            height: heightSize(150),
                            child: TextFormField(
                              // controller: controller.address,
                              validator: (String? val) {
                                if (val!.isEmpty) {
                                  return "Write your details";
                                }
                              },
                              maxLines: 6,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  hintStyle: TextStyle(
                                      fontSize: fontSize(16),
                                      fontFamily: usedFonts().GTWalsheim,
                                      fontWeight: FontWeight.w400),
                                  hintText: "Write the details"),
                            ))
                      ]),
                ),
                SizedBox(height: heightSize(21)),
                SizedBox(
                    height: heightSize(128),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: fontSize(20),
                              fontFamily: usedFonts().GTWalsheim,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: heightSize(5)),
                          IntlPhoneField(
                            showDropdownIcon: false,
                            decoration: const InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFCCCCCC)),
                              ),
                            ),
                            initialCountryCode: 'IN',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          )
                        ])),
                const InputTextField(
                    hintText: "Input Address",
                    obscureText: false,
                    text: "Address Street Name",
                    innerColor: background,
                    textColor: Colors.black,
                    differentiate: 2),
                SizedBox(height: heightSize(21)),
                const InputTextField(
                    hintText: "Input Passport Number",
                    obscureText: false,
                    text: "NRIC/ Passport",
                    innerColor: background,
                    textColor: Colors.black,
                    differentiate: 2),
                SizedBox(height: heightSize(21)),
                Row(
                  children: [
                    Expanded(child: DateOfBirth("Age")),
                    SizedBox(width: widthSize(16)),
                    const Expanded(child: GenderSelection())
                  ],
                ),
                SizedBox(height: heightSize(21)),
                const SelectMedicalCards(),
                SizedBox(height: heightSize(21)),
                const SelectStatus(
                    status: "Relationship",
                    firstIntance: "Single",
                    secondInstance: "Married"),
                SizedBox(height: heightSize(22)),
                GestureDetector(
                  onTap: () => Get.to(() => const SignUpSuccessScreen()),
                  child: buttons(
                    context,
                    "Continue",
                    heightSize(50),
                    width,
                    const Color(0xFF022F8E),
                  ),
                ),
              ]),
            ),
          ),
        ),
      );
    });
  }
}

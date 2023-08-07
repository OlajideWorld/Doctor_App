import 'package:doctor_app/commons/buttons.dart';
import 'package:doctor_app/screens/Sign%20in%20Screen/screens/receiveOtp.dart';
import 'package:doctor_app/screens/Sign%20up%20Screen/controller/sign_up_controller.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../Services/api_call.dart';

class SignInNumber extends StatefulWidget {
  final bool isSignIn;
  final String HeadText;
  SignInNumber({super.key, required this.isSignIn, required this.HeadText});

  @override
  State<SignInNumber> createState() => _SignInNumberState();
}

class _SignInNumberState extends State<SignInNumber> {
  final SignUpController controller = SignUpController.instance;

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
                  widget.HeadText,
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
              "Enter Phone Number",
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
                  color: textColor2,
                  fontSize: fontSize(14),
                  fontWeight: FontWeight.w700,
                  fontFamily: usedFonts().GTWalsheim),
            ),
            SizedBox(height: heightSize(26)),
            IntlPhoneField(
              showDropdownIcon: false,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                ),
              ),
              initialCountryCode: 'NI',
              onChanged: (phone) {
                setState(() {
                  controller.phoneNumber.value = phone.number;
                });
                debugPrint(controller.phoneNumber.value);
              },
              onSubmitted: (phone) {},
            ),
            SizedBox(height: heightSize(30)),
            GestureDetector(
              onTap: () async {
                setState(() {
                  controller.isLoading.value = true;
                });
                var data = {"mobile": controller.phoneNumber.value};

                final otp = await ApiCalls().sendOTP(data);
                if (otp != null) {
                  setState(() {
                    controller.otp.value = otp['body'].toString();
                  });

                  debugPrint(controller.otp.value);
                  Get.to(() => ReceiveOTPScreen(
                      isSignIn: widget.isSignIn, Headtext: widget.HeadText));
                } else {
                  setState(() {
                    controller.isLoading.value = false;
                  });
                }
              },
              child: controller.isLoading.value == true
                  ? SizedBox(
                      height: heightSize(50),
                      width: widthSize(50),
                      child: const CircularProgressIndicator(
                        color: headerText,
                      ),
                    )
                  : buttons(context, "Send OTP", heightSize(50), width,
                      const Color(0xFF022F8E)),
            )
          ]),
        ),
      );
    });
  }
}

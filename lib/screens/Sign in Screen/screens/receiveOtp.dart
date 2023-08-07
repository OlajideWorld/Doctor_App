import 'package:doctor_app/commons/buttons.dart';
import 'package:doctor_app/routes/routes.dart';
import 'package:doctor_app/screens/Sign%20up%20Screen/controller/sign_up_controller.dart';
import 'package:doctor_app/screens/Sign%20up%20Screen/screens/userdetails.dart';
import 'package:doctor_app/screens/homescreen/components/homeAppBar.dart';
import 'package:doctor_app/screens/homescreen/screens/homescreen.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Services/api_call.dart';
import '../../../utils/fonts.dart';
import '../../../utils/sizes.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ReceiveOTPScreen extends StatefulWidget {
  final bool isSignIn;
  final String Headtext;
  const ReceiveOTPScreen(
      {super.key, required this.isSignIn, required this.Headtext});

  @override
  State<ReceiveOTPScreen> createState() => _ReceiveOTPScreenState();
}

class _ReceiveOTPScreenState extends State<ReceiveOTPScreen> {
  final SignUpController controller = SignUpController.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      controller.isLoading.value = false;
    });
  }

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
                    widget.Headtext,
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
                "Enter OTP Code",
                style: TextStyle(
                    color: headerText,
                    fontSize: fontSize(24),
                    fontWeight: FontWeight.w700,
                    fontFamily: usedFonts().workSans),
              ),
              SizedBox(height: heightSize(8)),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'We have sent your code to\n',
                      style: TextStyle(
                        color: Color(0xFF777777),
                        fontSize: fontSize(14),
                        fontFamily: usedFonts().GTWalsheim,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0.42,
                      ),
                    ),
                    TextSpan(
                      text: '+234 03339174310',
                      style: TextStyle(
                        color: headerText,
                        fontSize: fontSize(14),
                        fontFamily: usedFonts().workSans,
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                        letterSpacing: 0.42,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: heightSize(21)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthSize(50)),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  backgroundColor: background,
                  keyboardType: TextInputType.number,
                  // onChanged: (value) {
                  //   setState(() {
                  //     controller.otp.value = value;
                  //   });
                  //   debugPrint(controller.otp.value);
                  // },
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      inactiveColor: const Color(0xFFDEDEDE),
                      borderRadius: BorderRadius.circular(8),
                      fieldHeight: heightSize(50),
                      fieldWidth: widthSize(50),
                      activeColor: const Color(0xFF022F8E)),
                ),
              ),
              SizedBox(height: heightSize(28)),
              GestureDetector(
                onTap: () async {
                  setState(() {
                    controller.isLoading.value = true;
                  });
                  var data = {
                    "mobile": controller.phoneNumber.value,
                    "otp": controller.otp.value
                  };

                  final message = await ApiCalls().verifyOTP(data);
                  if (message != null) {
                    if (widget.isSignIn == true) {
                      Get.to(() => HomeScreen());
                    } else {
                      Get.toNamed(Routes.userdetails);
                    }
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
                    : buttons(context, "Continue", heightSize(50), width,
                        const Color(0xFF022F8E)),
              ),
              SizedBox(height: heightSize(21)),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Didn’t receive a code? ',
                      style: TextStyle(
                        color: headerText,
                        fontSize: fontSize(14),
                        fontFamily: usedFonts().GTWalsheim,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.42,
                      ),
                    ),
                    TextSpan(
                      text: 'Send Again',
                      style: TextStyle(
                        color: Color(0xFF022F8E),
                        fontSize: fontSize(14),
                        fontFamily: usedFonts().workSans,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.42,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              )
            ]),
          ));
    });
  }
}

import 'package:doctor_app/screens/Sign%20up%20Screen/controller/sign_up_controller.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:doctor_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final SignUpController controller = SignUpController();
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
              top: height * 0.05, left: widthSize(20), right: widthSize(20)),
          child: Column(children: [
            Row(
              children: [
                if (controller.image == null)
                  CircleAvatar(
                      radius: heightSize(28),
                      backgroundImage:
                          const AssetImage("assets/homeprofile.png")),
                if (controller.image != null)
                  CircleAvatar(
                    radius: heightSize(28),
                    backgroundImage: Image.file(
                      controller.image!,
                      fit: BoxFit.fitWidth,
                    ).image,
                  ),
                SizedBox(width: widthSize(16)),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Good Morning",
                            style: TextStyle(
                              color: const Color(0xFF030C54),
                              fontSize: fontSize(14),
                              fontFamily: usedFonts().GTWalsheim,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                              height: heightSize(16),
                              width: widthSize(16),
                              child: const Text("👋"))
                        ],
                      ),
                      SizedBox(height: heightSize(6)),
                      Text(
                        "Bentornato",
                        style: TextStyle(
                            color: const Color(0xFF030C54),
                            fontSize: fontSize(23),
                            fontWeight: FontWeight.w700,
                            fontFamily: usedFonts().workSans),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: heightSize(24),
                  width: widthSize(50),
                  child: Row(children: [
                    SizedBox(
                      height: heightSize(24),
                      width: widthSize(24),
                      child: SvgPicture.asset("assets/Notification.svg"),
                    ),
                    SizedBox(
                      height: heightSize(24),
                      width: widthSize(24),
                      child: SvgPicture.asset("assets/Heart.svg"),
                    )
                  ]),
                )
              ],
            ),
            SizedBox(height: heightSize(21)),
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
                      color: Color(0xFFADADAD),
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
                        borderSide:
                            BorderSide(color: Colors.grey, width: 0.50))),
              ),
            )
          ]),
        ),
      );
    });
  }
}

// ignore_for_file: file_names

import 'package:doctor_app/screens/Sign%20up%20Screen/controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/fonts.dart';
import '../../../utils/sizes.dart';

final SignUpController controller = SignUpController();

homeAppBar(BuildContext context) {
  return SizedBox(
    child: Column(
      children: [
        Row(
          children: [
            if (controller.image == null)
              CircleAvatar(
                  radius: heightSize(28),
                  backgroundImage: const AssetImage("assets/homeprofile.png")),
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
      ],
    ),
  );
}

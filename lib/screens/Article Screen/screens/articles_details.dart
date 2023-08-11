import 'package:doctor_app/screens/Article%20Screen/components/article_profile.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/fonts.dart';
import '../../../utils/sizes.dart';

class ArticlesDetails extends StatelessWidget {
  const ArticlesDetails({super.key});

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
            top: height * 0.05, left: widthSize(20), right: widthSize(20)),
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
                'Articles',
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
          SizedBox(height: heightSize(26.5)),
          SizedBox(
            width: widthSize(335),
            child: Text(
              "New Study Shows Promise for Treating Alzheimer's Disease with Ultrasound Technology",
              style: TextStyle(
                color: headerText,
                fontSize: fontSize(16),
                fontFamily: usedFonts().workSans,
                fontWeight: FontWeight.w600,
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: heightSize(16)),
          Container(
            width: width,
            height: heightSize(186),
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/individualarticle.png"),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          SizedBox(height: heightSize(18)),
          followImage(context),
          SizedBox(height: heightSize(16)),
          SizedBox(
            width: 335,
            child: Opacity(
              opacity: 0.90,
              child: Text(
                "Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology.",
                style: TextStyle(
                  color: headerText,
                  fontSize: fontSize(14),
                  fontFamily: usedFonts().workSans,
                  fontWeight: FontWeight.w400,
                  height: 1.71,
                ),
              ),
            ),
          ),
          SizedBox(height: heightSize(12)),
          SizedBox(
            width: 335,
            child: Opacity(
              opacity: 0.90,
              child: Text(
                "The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active.",
                style: TextStyle(
                  color: headerText,
                  fontSize: fontSize(14),
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w400,
                  height: 1.71,
                ),
              ),
            ),
          ),
          Container(
            height: heightSize(48),
            width: widthSize(152),
            padding: EdgeInsets.all(widthSize(8)),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              shadows: [
                BoxShadow(
                  color: const Color(0x19000000),
                  blurRadius: widthSize(59),
                  offset: const Offset(0, 6),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: heightSize(32),
                    width: widthSize(32),
                    child: Image.asset("assets/Heart2.png"),
                  ),
                  Text(
                    '6.7k',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSize(12),
                      fontFamily: usedFonts().GTWalsheim,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: heightSize(32),
                    width: widthSize(32),
                    child: Image.asset("assets/chatImage.png"),
                  ),
                  Text(
                    '12k',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSize(12),
                      fontFamily: usedFonts().GTWalsheim,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
          )
        ]),
      ),
    );
  }
}

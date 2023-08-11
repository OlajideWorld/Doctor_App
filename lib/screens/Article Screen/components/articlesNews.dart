import 'package:doctor_app/screens/Article%20Screen/screens/articles_details.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/fonts.dart';
import '../../../utils/sizes.dart';

articlesNews(BuildContext context, String text1, String text2, String image,
    bool isSelected) {
  final width = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      Get.to(() => const ArticlesDetails());
    },
    child: Container(
      height: heightSize(86),
      width: width,
      padding: EdgeInsets.symmetric(
          vertical: heightSize(6), horizontal: widthSize(12)),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Colors.grey),
          borderRadius: BorderRadius.circular(widthSize(10)),
        ),
      ),
      child: Row(children: [
        SizedBox(
          height: heightSize(55),
          width: widthSize(55),
          child: Image.asset(image),
        ),
        SizedBox(width: widthSize(19)),
        SizedBox(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
                width: widthSize(209),
                child: Text(
                  text1,
                  style: TextStyle(
                    color: const Color(0xFF030C54),
                    fontSize: fontSize(14),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w500,
                    height: 1.29,
                  ),
                )),
            Text(
              text2,
              style: TextStyle(
                color: const Color(0xFFADADAD),
                fontSize: fontSize(14),
                fontFamily: usedFonts().GTWalsheim,
                fontWeight: FontWeight.w500,
                height: 1.29,
              ),
            ),
          ]),
        ),
        const Spacer(),
        Icon(Icons.bookmark_rounded,
            size: heightSize(15),
            color: isSelected == true ? headerText : Colors.grey)
      ]),
    ),
  );
}

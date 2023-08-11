import 'package:doctor_app/screens/Article%20Screen/components/articlesNews.dart';
import 'package:doctor_app/screens/Article%20Screen/components/selectArticles.dart';
import 'package:doctor_app/screens/Article%20Screen/screens/articles_details.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/fonts.dart';
import '../../../utils/sizes.dart';

class ArticlesPages extends StatelessWidget {
  const ArticlesPages({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      resizeToAvoidBottomInset: false,
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
                'Article',
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
          SizedBox(height: heightSize(16.5)),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              const SelectCategoriesWidget(
                  width: 98, text: "Minor Surgery", selectedValue: true),
              SizedBox(width: widthSize(8)),
              const SelectCategoriesWidget(
                  width: 98, text: "Blood Test", selectedValue: false),
              SizedBox(width: widthSize(8)),
              const SelectCategoriesWidget(
                  width: 98, text: "Xray", selectedValue: false),
              SizedBox(width: widthSize(8)),
              const SelectCategoriesWidget(
                  width: 98, text: "Pap Smear", selectedValue: false),
              SizedBox(width: widthSize(8)),
              const SelectCategoriesWidget(
                  width: 98, text: "Covid", selectedValue: false)
            ]),
          ),
          SizedBox(height: heightSize(24)),
          articlesNews(
              context,
              "Minor surgery is a low-risk, outpatient procedure that is commonly used for removing...",
              "Jun 10, 2021 . 5min read",
              "assets/article1.png",
              false),
          SizedBox(height: heightSize(15)),
          articlesNews(
              context,
              "Minor surgery is a safe and quick medical procedure that can be done in an outpatient setting.",
              "Jun 10, 2021 . 5min read",
              "assets/article2.png",
              false),
          SizedBox(height: heightSize(15)),
          articlesNews(
              context,
              "Minor surgery is safe and quick outpatient procedure.",
              "Jun 10, 2021 . 5min read",
              "assets/article3.png",
              false),
          SizedBox(height: heightSize(15)),
          articlesNews(
              context,
              "Minor surgery is a quick and safe outpatient procedure.",
              "Jun 10, 2021 . 5min read",
              "assets/article4.png",
              false),
          SizedBox(height: heightSize(15)),
          articlesNews(
              context,
              "Minor surgery is a simple and safe procedure for treating small medical conditions.",
              "Jun 10, 2021 . 5min read",
              "assets/article5.png",
              true)
        ]),
      ),
    );
  }
}

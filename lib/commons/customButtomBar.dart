import 'package:doctor_app/screens/Sign%20up%20Screen/controller/sign_up_controller.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:doctor_app/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/sizes.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  final SignUpController controller = SignUpController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      SizedBox(
        height: heightSize(97),
      ),
      Positioned(
        top: heightSize(30),
        left: 0,
        right: 0,
        child: SizedBox(
          height: heightSize(111),
          child: CustomPaint(
            size: Size(size.width, heightSize(50)),
            painter: BottomNavCurvePainter(backgroundColor: background),
          ),
        ),
      ),
      Positioned(
        top: heightSize(25),
        left: widthSize(0),
        right: widthSize(0),
        child: Padding(
          padding: EdgeInsets.only(
              top: heightSize(16),
              left: widthSize(30),
              right: widthSize(30),
              bottom: heightSize(51)),
          child: SizedBox(
            height: heightSize(46),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: heightSize(46),
                  width: widthSize(100),
                  child: Row(
                    children: [
                      getIcons(Icons.home, 1, "Home", 'homescreen'),
                      const Spacer(),
                      getIcons(Icons.monitor_heart_outlined, 2, "My Health",
                          "forgetpage")
                    ],
                  ),
                ),
                SizedBox(
                  height: heightSize(46),
                  width: widthSize(100),
                  child: Row(
                    children: [
                      getIcons(Icons.store, 3, "Store", "forgetpage"),
                      const Spacer(),
                      getIcons(Icons.person, 4, "Profile", "forgetpage")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
        top: heightSize(10),
        right: widthSize(150),
        left: widthSize(150),
        child: GestureDetector(
          onTap: () {},
          child: SizedBox(
            height: heightSize(78),
            width: widthSize(80),
            child: Column(
              children: [
                SizedBox(
                  height: heightSize(55),
                  width: widthSize(55),
                  child: Image.asset(
                    "assets/appointmenticon.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(height: heightSize(5)),
                Text(
                  "Appointment",
                  style: TextStyle(
                    color: Color(0xFF656070),
                    fontSize: fontSize(13),
                    fontFamily: usedFonts().GTWalsheim,
                    fontWeight: FontWeight.w500,
                    // height: 1.38,
                    // letterSpacing: 0.39,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  Widget getIcons(IconData icon, int index, String pageName, String route) {
    return GestureDetector(
      onTap: () {
        setState(() {
          controller.currentIndex = index;
        });
        Get.toNamed('/$route');
      },
      child: Column(children: [
        Icon(icon,
            size: heightSize(20),
            color: index == controller.currentIndex ? headerText : Colors.grey),
        SizedBox(height: heightSize(4)),
        Text(
          pageName,
          style: TextStyle(
              fontSize: fontSize(11),
              fontWeight: FontWeight.w400,
              color:
                  index == controller.currentIndex ? headerText : Colors.grey),
        )
      ]),
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter(
      {this.backgroundColor = Colors.white,
      this.insetRadius = 38,
      this.shadowColor = Colors.grey,
      this.elevation = 100});

  Color backgroundColor;
  Color shadowColor;
  double elevation;
  double insetRadius;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path();

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;

    path.lineTo(insetCurveBeginnningX, 0);
    path.arcToPoint(Offset(insetCurveEndX, 0),
        radius: Radius.circular(41), clockwise: true);

    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height + 56);
    path.lineTo(
        0,
        size.height +
            56); //+56 here extends the navbar below app bar to include extra space on some screens (iphone 11)
    canvas.drawShadow(path, shadowColor, elevation, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

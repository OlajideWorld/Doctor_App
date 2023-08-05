import 'package:doctor_app/screens/Sign%20up%20Screen/controller/sign_up_controller.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../models/listLabels.dart';
import '../../../utils/fonts.dart';
import '../../../utils/sizes.dart';

class SelectMedicalCards extends StatefulWidget {
  const SelectMedicalCards({super.key});

  @override
  State<SelectMedicalCards> createState() => _SelectMedicalCardsState();
}

class _SelectMedicalCardsState extends State<SelectMedicalCards> {
  final SignUpController controller = SignUpController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: heightSize(84),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Medical Card",
                style: TextStyle(
                    color: headerText,
                    fontFamily: usedFonts().GTWalsheim,
                    fontSize: fontSize(20),
                    fontWeight: FontWeight.w600)),
            Container(
              height: heightSize(50),
              width: width,
              padding: EdgeInsets.only(bottom: heightSize(10)),
              decoration: BoxDecoration(
                color: background,
                border: Border.all(color: const Color(0xFFDEDEDE)),
                borderRadius: BorderRadius.circular(widthSize(10)),
                // boxShadow: [
                //   BoxShadow(
                //     blurRadius: widthSize(10),
                //     color: const Color.fromRGBO(61, 64, 128, 0.2),
                //   )
                // ]
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton<String>(
                            isDense: true,
                            // hint: const Text('Select Class'),
                            value: controller.medicalCards.value,
                            onChanged: (String? newValue) {
                              setState(() {
                                controller.medicalCards.value = newValue!;
                              });

                              print(controller.medicalCards.value);
                            },
                            items: SelectedItems().medicalCards.map((Map map) {
                              return DropdownMenuItem<String>(
                                  value: map['name'].toString(),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        map['image'],
                                        height: heightSize(40),
                                        width: widthSize(40),
                                      ),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            map['name'],
                                            style: TextStyle(
                                                fontSize: fontSize(20),
                                                fontFamily:
                                                    usedFonts().workSans,
                                                fontWeight: FontWeight.w400),
                                          ))
                                    ],
                                  ));
                            }).toList(),
                          )),
                    ))
                  ]),
            )
          ]),
    );
  }
}

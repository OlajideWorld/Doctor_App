// ignore_for_file: file_names

import 'package:doctor_app/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';
import '../utils/sizes.dart';

class InputTextField extends StatefulWidget {
  final String text;
  final bool obscureText;
  final int differentiate;
  final Color innerColor;
  final Color textColor;
  final bool password;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String?)? onChanged;
  final TextInputType? keyboardType;
  final bool textInputAction;
  final String? hintText;
  final int? maxlines;

  const InputTextField({
    Key? key,
    required this.obscureText,
    this.textInputAction = false,
    this.controller,
    this.password = false,
    this.validator,
    this.hintText,
    this.keyboardType,
    this.maxlines,
    this.onChanged,
    required this.text,
    required this.innerColor,
    required this.textColor,
    required this.differentiate,
  }) : super(key: key);

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightSize(98),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: fontSize(20),
                fontFamily: usedFonts().GTWalsheim,
                color: widget.textColor),
          ),
          SizedBox(height: heightSize(10)),
          Container(
            height: heightSize(50),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: TextFormField(
              style: TextStyle(
                  fontFamily: usedFonts().GTWalsheim,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.6000000238418579),
                  fontSize: fontSize(20)),
              controller: widget.controller,
              onChanged: widget.onChanged,
              validator: widget.validator,
              keyboardType: widget.keyboardType,
              maxLines: widget.obscureText == false ? widget.maxlines : 1,
              textInputAction: !widget.textInputAction
                  ? TextInputAction.next
                  : TextInputAction.done,
              obscureText: widget.obscureText ? !_passwordVisible : false,
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.innerColor,
                hintText: widget.hintText,
                hintStyle: TextStyle(
                    fontSize: fontSize(20),
                    fontWeight: FontWeight.w400,
                    fontFamily: usedFonts().GTWalsheim,
                    color: Colors.black.withOpacity(0.6000000238418579)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFDEDEDE)),
                    borderRadius: BorderRadius.circular(16)),
                suffixIcon: widget.password
                    ? IconButton(
                        icon: _passwordVisible
                            ? Icon(
                                Icons.visibility_outlined,
                                color: textColor,
                                size: heightSize(23),
                              )
                            : Icon(
                                Icons.visibility_off_outlined,
                                color: textColor,
                                size: heightSize(23),
                              ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      )
                    : null,
                contentPadding:
                    EdgeInsets.only(left: widthSize(17), top: heightSize(19)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Color(0xFFDEDEDE)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DateOfBirth(String text) {
  return SizedBox(
    height: heightSize(100),
    width: widthSize(160),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize(16),
          fontFamily: usedFonts().GTWalsheim,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: heightSize(10)),
      SizedBox(
        height: heightSize(50),
        child: TextFormField(
          style: TextStyle(
              fontFamily: usedFonts().GTWalsheim,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.6000000238418579),
              fontSize: fontSize(20)),
          decoration: InputDecoration(
            hintText: "Input age",
            hintStyle: TextStyle(
                fontSize: fontSize(20),
                fontWeight: FontWeight.w400,
                fontFamily: usedFonts().GTWalsheim,
                color: Colors.black.withOpacity(0.6000000238418579)),
            suffixIcon: Icon(
              Icons.calendar_month,
              color: headerText,
            ),
            contentPadding:
                EdgeInsets.only(bottom: heightSize(19), left: widthSize(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xFFDEDEDE)),
                borderRadius: BorderRadius.circular(16)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Color(0xFFDEDEDE)),
            ),
          ),
        ),
      ),
    ]),
  );
}

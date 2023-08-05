import 'dart:io';

import 'package:doctor_app/screens/Sign%20up%20Screen/controller/sign_up_controller.dart';
import 'package:doctor_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../utils/sizes.dart';
import '../../../commons/getxMessage.dart';

class PickingImage extends StatefulWidget {
  const PickingImage({super.key});

  @override
  State<PickingImage> createState() => _PickingImageState();
}

class _PickingImageState extends State<PickingImage> {
  final SignUpController controller = SignUpController.instance;

  Future pickImage(ImageSource source) async {
    try {
      final picture = await ImagePicker().pickImage(source: source);
      if (picture == null) return;
      File? newpicture = File(picture.path);
      setState(() {
        controller.image = newpicture;
        Get.back();
      });
      return controller.image;
    } on PlatformException catch (e) {
      return getErrorSnackBar("Failed to pick an Image, $e");
    }
  }

  showSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text(
                  "Camera",
                  style: TextStyle(color: headerText),
                ),
                onTap: () => pickImage(ImageSource.camera),
              ),
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text(
                  "Gallery",
                  style: TextStyle(color: headerText),
                ),
                onTap: () => pickImage(ImageSource.gallery),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightSize(109),
      width: widthSize(123),
      child: GestureDetector(
        onTap: () => showSheet(context),
        child: Stack(
          children: [
            Positioned(
              right: widthSize(10),
              top: heightSize(0),
              bottom: heightSize(0),
              left: widthSize(0),
              child: Container(
                height: heightSize(80),
                decoration: const BoxDecoration(
                    color: Color(0xFFE6E6E6), shape: BoxShape.circle),
                child: controller.image != null
                    ? ClipOval(
                        child: Image.file(
                        controller.image!,
                        fit: BoxFit.fitWidth,
                      ))
                    : SizedBox(
                        height: heightSize(32),
                        width: widthSize(32),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/profileimage.png",
                          ),
                        ),
                      ),
              ),
            ),
            Positioned(
              bottom: heightSize(0),
              left: widthSize(70),
              top: heightSize(60),
              right: widthSize(0),
              child: Container(
                decoration: const BoxDecoration(
                    color: background, shape: BoxShape.circle),
                height: heightSize(44),
                width: widthSize(44),
                child: Image.asset("assets/profileimage2.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

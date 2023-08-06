import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController instance = Get.find();
  File? image;
  RxString medicalCards = "Allians".obs;
  var currentIndex = 1;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
}

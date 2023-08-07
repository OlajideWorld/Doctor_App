import 'package:doctor_app/screens/Sign%20up%20Screen/controller/sign_up_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SignUpBindings extends Bindings {
  RxString number = "".obs;
  

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<SignUpController>(SignUpController());
  }
}

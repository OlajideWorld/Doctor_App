import 'package:doctor_app/screens/Sign%20in%20Screen/controller/sign_in_controller.dart';
import 'package:get/get.dart';

class SignInBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<SignInController>(SignInController());
  }
}

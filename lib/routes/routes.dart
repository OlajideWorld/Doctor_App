import 'package:doctor_app/screens/Sign%20up%20Screen/screens/sign_up_screen.dart';
import 'package:doctor_app/screens/Sign%20up%20Screen/screens/userdetails.dart';
import 'package:doctor_app/screens/homescreen/screens/homescreen.dart';
import 'package:doctor_app/screens/onBoard%20Screen/pages/onboardscreen.dart';
import 'package:get/get.dart';

import '../screens/Sign up Screen/bindings/sign_up_bindings.dart';

class Routes {
  static const splashScreen = "/splashscreen";
  static const homeScreen = '/homescreen';
  static const onBoardScreen = '/onboard';
  static const signinscreen = '/loginscreen';
  static const userdetails = "/";
  static const loginPage = "/loginpage";
  static const loadingScreen = "/loading";
  static const forgetPage = "/forgetpage";
  static const selectionPage = "/selectionpage";
  static const profilePage = "/profiepage";
  static const settingsPage = "/settingspage";
  static const forgotPassword = "/forgotpassword";
}

class Pages {
  static const onBoardScreen = Routes.onBoardScreen;
  static final routes = [
    GetPage(name: Routes.onBoardScreen, page: () => OnBoardScreens()),
    GetPage(
        name: Routes.userdetails,
        page: () => const InputUserDetailsScreen(),
        binding: SignUpBindings()),
    GetPage(
        name: Routes.homeScreen,
        page: () => HomeScreen(),
        binding: SignUpBindings())
  ];
}

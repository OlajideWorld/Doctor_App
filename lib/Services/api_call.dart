import 'package:doctor_app/Services/api_services.dart';

class ApiCalls {
  sendOTP(Map<String, String> data) async {
    final req = await ApiServices().postNumber(data, "api/sendOTP");
    return req;
  }

  verifyOTP(Map<String, String> data) async {
    final req = await ApiServices().postNumber(data, "api/verifyOTP");
    return req;
  }

  // login(Map<String, String> data) async {
  //   final req = await ApiServices().postRequest(data, "api/login");
  //   return req;
  // }

  // forgetpassword(Map<String, String> data) async {
  //   final req =
  //       await ApiServices().postRequest(data, "auth/forgot-password/jwt");
  //   return req;
  // }

  // changePassword(Map<String, String> data) async {
  //   final req =
  //       await ApiServices().getRequest(data, "auth/change-password/:jwt");
  //   return req;
  // }

  // verifyMe(Map<String, String> data) async {
  //   final req = await ApiServices().getRequest(data, "auth/verify-me/:jwt");
  //   return req;
  // }
}

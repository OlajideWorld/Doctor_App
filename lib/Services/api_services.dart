import 'dart:convert';
import 'dart:developer';

import 'package:doctor_app/Services/Shared%20Preferences/sharedPreferences.dart';
import 'package:doctor_app/Services/Shared%20Preferences/shared_keys.dart';
import 'package:doctor_app/models/verityOtp_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../commons/getxMessage.dart';

class ApiServices {
  static var client = http.Client();
  String baseurl = "https://doctors.piranhawp.com/";

  Future<Map> postNumber(Map<String, String> data, String url) async {
    String reqUrl = "$baseurl$url";
    debugPrint(reqUrl);

    debugPrint(data.toString());
    Map jsondata = {};
    try {
      http.Response response = await http.post(Uri.parse(reqUrl),
          headers: <String, String>{'Content-Type': 'application/json'},
          body: jsonEncode(data));

      if (response.statusCode == 200) {
        debugPrint(response.body);
        jsondata = jsonDecode(response.body);

        getSuccessSnackBar(response.body);
      }
    } catch (e) {
      getErrorSnackBar(e.toString());
    }
    log(jsondata.toString());
    return jsondata;
  }

  Future<void> verifyOtp(Map<String, String> data, String url) async {
    String reqUrl = "$baseurl$url";
    debugPrint(reqUrl);

    debugPrint(data.toString());

    try {
      http.Response response = await http.post(Uri.parse(reqUrl),
          headers: <String, String>{'Content-Type': 'application/json'},
          body: jsonEncode(data));

      if (response.statusCode == 200) {
        debugPrint(response.body);
        final verifyOtpResponse = verifyOtpResponseFromJson(response.body);

        debugPrint(verifyOtpResponse.data.toString());
        await SharedClass()
            .setString(SharedKeys.tokenKey, verifyOtpResponse.data.token);

        getSuccessSnackBar(verifyOtpResponse.data.token.toString());
      }
    } catch (e) {
      getErrorSnackBar(e.toString());
    }
  }

  // Future<Map> postRequest(Map<String, String> data, String url) async {
  //   String reqUrl = "$baseurl$url";
  //   debugPrint(reqUrl);

  //   debugPrint(data.toString());
  //   Map jsondata = {};
  //   try {
  //     http.Response response = await http.post(Uri.parse(reqUrl),
  //         headers: <String, String>{'Content-Type': 'application/json'},
  //         body: jsonEncode(data));

  //     debugPrint(response.body);

  //     debugPrint(response.body);
  //     final datas = jsonDecode(response.body);
  //     jsondata = datas;
  //     getSuccessSnackBar("Success \tUser verified");
  //   } catch (e) {
  //     Get.back();
  //     getErrorSnackBar(e.toString());
  //   }
  //   log(jsondata.toString());
  //   return jsondata;
  // }

  // Future<Map> postRequestWithToken(Map data, String url) async {
  //   String reqUrl = "$baseurl$url";
  //   debugPrint(reqUrl);

  //   String token = "";
  //   Map jsondata = {};
  //   try {
  //     http.Response response = await http.post(Uri.parse(reqUrl),
  //         headers: <String, String>{
  //           'Content-Type': 'application/json',
  //           "Authorization": "Bearer$token"
  //         },
  //         body: jsonEncode(data));

  //     final datas = jsonDecode(response.body);
  //     jsondata = datas;
  //     getSuccessSnackBar("Success");
  //   } catch (e) {
  //     Get.back();
  //     getErrorSnackBar(e.toString());
  //   }
  //   log(jsondata.toString());
  //   return jsondata;
  // }

  // Future<Map> getRequest(Map data, String url) async {
  //   Map jsondata = {};
  //   String reqUrl = "$baseurl$url";
  //   log(reqUrl);

  //   try {
  //     http.Response response = await http.get(
  //       Uri.parse(reqUrl),
  //       headers: <String, String>{"Content-Type": "application/json"},
  //     );

  //     final data = jsonDecode(response.body);
  //     jsondata = data;

  //     return jsondata;
  //   } catch (e) {
  //     Get.back();
  //     getErrorSnackBar(jsonDecode(e.toString()));
  //   }
  //   log(jsondata.toString());
  //   return jsondata;
  // }

  // Future<Map> getRequestwithToken(Map data, String url) async {
  //   Map jsondata = {};
  //   String reqUrl = "$baseurl$url";
  //   log(reqUrl);

  //   String token = "";
  //   try {
  //     http.Response response = await http.get(
  //       Uri.parse(reqUrl),
  //       headers: <String, String>{
  //         "Content-Type": "application/json",
  //         "Authorization": "Bearer$token"
  //       },
  //     );
  //     final data = jsonDecode(response.body);
  //     jsondata = data;

  //     return jsondata;
  //   } catch (e) {
  //     Get.back();
  //     getErrorSnackBar(jsonDecode(e.toString()));
  //   }
  //   log(jsondata.toString());
  //   return jsondata;
  // }
}

// To parse this JSON data, do
//
//     final verifyOtpResponse = verifyOtpResponseFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

VerifyOtpResponse verifyOtpResponseFromJson(String str) =>
    VerifyOtpResponse.fromJson(json.decode(str));

// String verifyOtpResponseToJson(VerifyOtpResponse data) =>
//     json.encode(data.toJson());

class VerifyOtpResponse {
  bool success;
  Data data;
  String message;

  VerifyOtpResponse({
    required this.success,
    required this.data,
    required this.message,
  });

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      VerifyOtpResponse(
        success: json["success"],
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data.toJson(),
        "message": message,
      };
}

class Data {
  String token;

  Data({
    required this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}

// ignore_for_file: file_names

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedClass {
  Future<void> setString(String tokenKey, String token) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString(tokenKey, token).then((value) {
      log("Stored Succesfully");
      debugPrint("Stored Succesfully");
    });
  }

  Future<String?> getString(String tokenKey) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    final token = _prefs.getString(tokenKey);
    return token;
  }

  Future<void> setBool(String tokenKey, bool value) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setBool(tokenKey, value);
    log("Stored Succesfully");
    debugPrint("Stored Succesfully");
  }

  Future<bool?> getBool(String tokenKey) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    final value = _prefs.getBool(tokenKey);
    return value;
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../constants/share_pref_keys.dart';
import '../routes/app_pages.dart';
import '../services/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  final SharedPreferencesService _shrePrefService = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (_shrePrefService.getString(SharedPrefKeys.USERID_KEY) != null) {
      return const RouteSettings(name: Routes.BOTTOMNAVIGATIONBAR);
    }
    return null;
  }
}

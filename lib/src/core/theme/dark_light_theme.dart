// import 'package:flutter/material.dart';

// class AppColors {
//   // Define color names
//   static const Color primary = Color(0xFF6200EA); // Purple
//   static const Color secondary = Color(0xFF03DAC6); // Teal
//   static const Color background = Color(0xFFFFFFFF); // White
//   static const Color text = Color(0xFF000000); // Black
//   static const Color accent = Color(0xFFFF5722); // Deep Orange
//   static const Color success = Color(0xFF4CAF50); // Green
//   static const Color warning = Color(0xFFFFC107); // Yellow

//   // Dark mode variants of the same colors
//   static const Color darkPrimary = Color(0xFFBB86FC); // Light Purple
//   static const Color darkSecondary = Color(0xFF018786); // Dark Teal
//   static const Color darkBackground = Color(0xFF121212); // Dark Grey
//   static const Color darkText = Color(0xFFFFFFFF); // White
//   static const Color darkAccent = Color(0xFFFF7043); // Lighter Orange
//   static const Color darkSuccess = Color(0xFF66BB6A); // Lighter Green
//   static const Color darkWarning = Color(0xFFFFD54F); // Lighter Yellow
// }


// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'app_colors.dart';
// import 'package:flutter/material.dart';

// class ThemeController extends GetxController {
//   final _box = GetStorage();
//   final _isDarkModeKey = "isDarkMode";

//   RxBool isDarkMode = false.obs;

//   @override
//   void onInit() {
//     super.onInit();
//     isDarkMode.value = _box.read(_isDarkModeKey) ?? false;
//   }

//   void toggleTheme() {
//     isDarkMode.value = !isDarkMode.value;
//     _box.write(_isDarkModeKey, isDarkMode.value);
//     Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
//   }

//   // Get colors dynamically based on theme mode
//   Color get primary => isDarkMode.value ? AppColors.darkPrimary : AppColors.primary;
//   Color get secondary => isDarkMode.value ? AppColors.darkSecondary : AppColors.secondary;
//   Color get background => isDarkMode.value ? AppColors.darkBackground : AppColors.background;
//   Color get text => isDarkMode.value ? AppColors.darkText : AppColors.text;
//   Color get accent => isDarkMode.value ? AppColors.darkAccent : AppColors.accent;
//   Color get success => isDarkMode.value ? AppColors.darkSuccess : AppColors.success;
//   Color get warning => isDarkMode.value ? AppColors.darkWarning : AppColors.warning;
// }


// import 'package:flutter/material.dart';
// import 'theme_controller.dart';
// import 'package:get/get.dart';

// extension ThemeColors on BuildContext {
//   ThemeController get _theme => Get.find<ThemeController>();

//   Color get primaryColor => _theme.primary;
//   Color get secondaryColor => _theme.secondary;
//   Color get backgroundColor => _theme.background;
//   Color get textColor => _theme.text;
//   Color get accentColor => _theme.accent;
//   Color get successColor => _theme.success;
//   Color get warningColor => _theme.warning;
// }

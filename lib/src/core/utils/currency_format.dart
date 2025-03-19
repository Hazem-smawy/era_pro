import 'package:tailor/src/features/setting/presentation/getX/setting_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

String currencyFormat({required String number}) {
  SettingController settingController = Get.find();

  return NumberFormat.currency(
    symbol: '',
    decimalDigits: settingController.numbersAfterPercent,
  ).format(double.parse(number));
}

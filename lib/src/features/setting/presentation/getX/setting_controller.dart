import 'package:tailor/src/core/constants/share_pref_keys.dart';
import 'package:tailor/src/core/routes/app_pages.dart';
import 'package:tailor/src/core/services/shared_preferences.dart';
import 'package:tailor/src/core/utils/dialogs.dart';
import 'package:tailor/src/features/accounts/domain/entities/account_entity.dart';
import 'package:tailor/src/features/accounts/presentation/getX/accounts_controller.dart';
import 'package:tailor/src/features/main_info/presentation/getX/main_info_controller.dart';
import 'package:tailor/src/features/setting/domain/entities/entities.dart';
import 'package:tailor/src/features/setting/domain/usecases/fetch_settings_usecase.dart';
import 'package:tailor/src/features/setting/domain/usecases/get_settings_usecase.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  FetchSettingsUsecase fetchSettingsUsecase;
  GetSettingsUsecase getSettingsUsecase;
  SettingController({
    required this.fetchSettingsUsecase,
    required this.getSettingsUsecase,
  });
  var settings = Rx<SettingEntity?>(null);

  var myAccount = Rx<AccountEntity?>(null);

  SharedPreferencesService sharedPreferencesService = Get.find();
  @override
  void onInit() {
    super.onInit();
    fetchSettings();
    getSettings();
  }

  Future<void> fetchSettings() async {
    final res = await fetchSettingsUsecase.call();
    res.fold((_) {}, (r) => settings.value = r);
  }

  Future<void> getSettings() async {
    final res = await getSettingsUsecase.call();
    res.fold((_) {}, (r) => settings.value = r);
  }

  Future<void> setPaymentDefaultMethod(bool isNotCash) async {
    await sharedPreferencesService.setBool('default_payment', isNotCash);
  }

  bool get isNotCash {
    return sharedPreferencesService.getBool('default_payment') ?? true;
  }

  Future<void> setDefaultPercentNumber(int number) async {
    await sharedPreferencesService.setString(
      'number_of_percent',
      number.toString(),
    );
  }

  int get numbersAfterPercent {
    return int.parse(
      sharedPreferencesService.getString('number_of_percent') ?? '1',
    );
  }

  Future clearAllData() async {
    CustomDialog.showErorrDialog(
      title: 'تسجيل خوج',
      description: 'هل انت متأكد سيتم حذف جميع البيانات',
      color: Colors.red,
      icon: FontAwesomeIcons.trashCan,
      action: () {
        sharedPreferencesService.clearKey(SharedPrefKeys.USERID_KEY);
        sharedPreferencesService.clearKey(SharedPrefKeys.TOKEN_KEY);

        Get.offAllNamed(Routes.AUTH);
      },
    );
  }
}

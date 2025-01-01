import '../../../../core/constants/share_pref_keys.dart';
import '../../../../core/services/shared_preferences.dart';
import '../../../main_info/domain/usecases/main_info_usecase.dart';
import 'package:get/get.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/usecases.dart';

class UserController extends GetxController {
  SharedPreferencesService sharedPreferencesService;
  GetUserUseCase getUserUseCase;
  GetUserSettingsUsecase getUserSettingsUsecase;
  @override
  void onInit() async {
    super.onInit();
    await getUser();
    await getUserSetting();
  }

  UserController(
      {required this.getUserUseCase,
      required this.getUserSettingsUsecase,
      required this.sharedPreferencesService});

  var user = Rx<UserEntity?>(null);

  Future<void> getUser() async {
    final res = await getUserUseCase();
    res.fold((f) {}, (r) {
      user.value = r;
    });
  }

  Future<void> getUserSetting() async {
    final usersettingCustomergroupKey = sharedPreferencesService.getString(
      SharedPrefKeys.USERSETTING_CUSTOMERGROUP_KEY,
    );
    if (usersettingCustomergroupKey == null) {
      final res = await getUserSettingsUsecase();
      res.fold((f) {}, (r) {
        print('the user setting fetched correctly');
      });
    }
  }
}

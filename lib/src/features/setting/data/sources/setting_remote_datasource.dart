import 'package:era_pro/src/features/setting/data/models/setting_model.dart';

import '../../../../core/api/api.dart';
import '../../../../core/api/methods.dart';
import '../../../../core/constants/share_pref_keys.dart';
import '../../../../core/services/shared_preferences.dart';

abstract class SettingRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<SettingModel> getSettings();
}

class SettingRemoteDatasourceImp implements SettingRemoteDataSource {
  final ApiConnection apiConnection;
  final HttpMethod httpMethod;
  final SharedPreferencesService sharedPreferencesService;

  SettingRemoteDatasourceImp({
    required this.apiConnection,
    required this.httpMethod,
    required this.sharedPreferencesService,
  });

  @override
  Future<SettingModel> getSettings() async {
    return httpMethod.handleRequest(
      apiConnection.settingsUrl,
      (data) => SettingModel.fromJson(data),
      SharedPrefKeys.DATETIME_SETTINGS_KEY,
    );
  }
}

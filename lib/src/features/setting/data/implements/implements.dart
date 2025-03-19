import 'package:dartz/dartz.dart';

import 'package:tailor/src/core/error/failures.dart';
import 'package:tailor/src/features/setting/data/models/setting_model.dart';
import 'package:tailor/src/features/setting/data/sources/setting_local_datasource.dart';
import 'package:tailor/src/features/setting/domain/entities/entities.dart';

import '../../../../core/constants/share_pref_keys.dart';
import '../../../../core/services/shared_preferences.dart';
import '../../../../core/utils/repository_helper.dart';
import '../sources/setting_remote_datasource.dart';
import '../../domain/repositories/repositories.dart';

class SettingRepositoryImp implements SettingRepository {
  final SettingRemoteDataSource remoteDataSource;
  final SettingLocalDatasource localDatasource;
  final SharedPreferencesService sharedPreferencesService;

  SettingRepositoryImp({
    required this.localDatasource,
    required this.remoteDataSource,
    required this.sharedPreferencesService,
  });

  @override
  Future<Either<Failure, SettingModel>> fetchSetting() async {
    return await fetchSingleDataFromRemote(
      sharedPreferencesService: sharedPreferencesService,
      sharedPrefKey: SharedPrefKeys.SETTINGS_KEY,
      fetchRemoteData: remoteDataSource.getSettings,
      saveLocalData: localDatasource.saveSetting,
      dateTimeShredPreKey: SharedPrefKeys.DATETIME_SETTINGS_KEY,
    );
  }

  @override
  Future<Either<Failure, SettingEntity>> getSettings() {
    return fetchSingleDataFromLocalStorage(
      sharedPreferencesService: sharedPreferencesService,
      fetchLocalData: localDatasource.getSetting,
      sharedPrefKey: SharedPrefKeys.USERID_KEY,
    );
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}

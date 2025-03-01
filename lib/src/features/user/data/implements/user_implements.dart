// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dartz/dartz.dart';
import '../../../../core/constants/share_pref_keys.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/services/shared_preferences.dart';
import '../models/user_model.dart';
import '../sources/user_local_data_source.dart';
import '../sources/user_remote_data_source.dart';
import '../../domain/repositories/user_repository.dart';

import '../../../../core/utils/repository_helper.dart';
import '../../../main_info/data/models/main_info_model.dart';

class UserRepositoryImp extends UserRepository {
  UserRemoteDataSource userRemoteDataSource;
  UserLocalDataSource userLocalDataSource;
  final SharedPreferencesService sharedPreferencesService;

  UserRepositoryImp({
    required this.userRemoteDataSource,
    required this.userLocalDataSource,
    required this.sharedPreferencesService,
  });

  // @override
  // Future<Either<Failure, UserModel>> getUser() async {
  //   try {
  //     final userExists = sharedPreferencesService.getBool('user') ?? false;

  //     if (userExists) {
  //       final userIdString = sharedPreferencesService.getString('userId');

  //       if (userIdString == null) {
  //         return const Left(LocalStorageFailures(
  //             message: "User ID not found in shared preferences"));
  //       }

  //       final userId = int.tryParse(userIdString);

  //       if (userId == null) {
  //         return const Left(LocalStorageFailures(
  //             message: "Invalid User ID in shared preferences"));
  //       }

  //       final user = await userLocalDataSource.getUser(userId);

  //       if (user != null) {
  //         return Right(user);
  //       } else {
  //         return const Left(
  //             LocalStorageFailures(message: "User not found in local storage"));
  //       }
  //     } else {
  //       final user = await userRemoteDataSource.getUser();

  //       await userLocalDataSource.saveUser(user);
  //       await sharedPreferencesService.setBool('user', true);
  //       await sharedPreferencesService.setString('userId', user.id.toString());

  //       return Right(user);
  //     }
  //   } on LocalStorageException {
  //     return const Left(
  //         LocalStorageFailures(message: "Error saving user data"));
  //   } catch (e) {
  //     return Left(ServerFailures(message: "Error retrieving user data: $e"));
  //   }
  // }

  @override
  Future<Either<Failure, UserSettingModel>> getUserSettings() {
    return fetchSingleDataFromLocalStorage(
      sharedPreferencesService: sharedPreferencesService,
      fetchLocalData: userLocalDataSource.getUserSettings,
      sharedPrefKey: SharedPrefKeys.USERSETTING_KEY,
    );
  }

  @override
  Future<Either<Failure, UserModel>> getUser() {
    return fetchSingleDataFromLocalStorage(
      sharedPreferencesService: sharedPreferencesService,
      fetchLocalData: userLocalDataSource.getUser,
      sharedPrefKey: SharedPrefKeys.USERID_KEY,
      isUserInfo: true,
    );
  }

  @override
  Future<Either<Failure, bool>> fetchUserInfo() async {
    try {
      await fetchSingleDataFromRemote(
        sharedPreferencesService: sharedPreferencesService,
        fetchRemoteData: userRemoteDataSource.getUser,
        saveLocalData: userLocalDataSource.saveUser,
        sharedPrefKey: SharedPrefKeys.USERINFO_KEY,
        dateTimeShredPreKey: SharedPrefKeys.DATETIME_USERINFO_KEY,
        isUserInfo: true,
      );
      await fetchSingleDataFromRemote(
        sharedPreferencesService: sharedPreferencesService,
        fetchRemoteData: userRemoteDataSource.getUserSettings,
        saveLocalData: userLocalDataSource.saveUserSettings,
        sharedPrefKey: SharedPrefKeys.USERSETTING_KEY,
        dateTimeShredPreKey: SharedPrefKeys.DATETIME_USERSETTING_KEY,
      );

      return const Right(true);
    } catch (e) {
      return Left(ServerFailures(message: e.toString()));
    }
  }
}

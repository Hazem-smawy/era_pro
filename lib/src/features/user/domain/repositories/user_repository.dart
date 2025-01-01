import 'package:dartz/dartz.dart';
import '../../../../core/error/error.dart';
import '../entities/user_entity.dart';

import '../entities/user_setting_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser();

  Future<Either<Failure, UserSettingEntity>> getUserSettings();
  Future<Either<Failure, bool>> fetchUserInfo();
}

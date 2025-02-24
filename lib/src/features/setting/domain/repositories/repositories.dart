import 'package:dartz/dartz.dart';
import 'package:era_pro/src/core/error/failures.dart';
import 'package:era_pro/src/features/setting/domain/entities/entities.dart';

abstract class SettingRepository {
  Future<Either<Failure, SettingEntity>> fetchSetting();
  Future<Either<Failure, SettingEntity>> getSettings();
}

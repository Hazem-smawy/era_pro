import 'package:dartz/dartz.dart';
import 'package:tailor/src/core/error/failures.dart';
import 'package:tailor/src/features/setting/domain/entities/entities.dart';

abstract class SettingRepository {
  Future<Either<Failure, SettingEntity>> fetchSetting();
  Future<Either<Failure, SettingEntity>> getSettings();
}

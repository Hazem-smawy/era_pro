// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:era_pro/src/features/setting/domain/entities/entities.dart';
import 'package:era_pro/src/features/setting/domain/repositories/repositories.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';

class FetchSettingsUsecase extends NoParamUseCase<SettingEntity> {
  SettingRepository settingRepository;
  FetchSettingsUsecase({
    required this.settingRepository,
  });
  @override
  Future<Either<Failure, SettingEntity>> call() {
    return settingRepository.fetchSetting();
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:tailor/src/features/setting/domain/entities/entities.dart';
import 'package:tailor/src/features/setting/domain/repositories/repositories.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';

class GetSettingsUsecase extends NoParamUseCase<SettingEntity> {
  SettingRepository settingRepository;
  GetSettingsUsecase({
    required this.settingRepository,
  });
  @override
  Future<Either<Failure, SettingEntity>> call() {
    return settingRepository.getSettings();
  }
}

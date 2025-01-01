// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/user_setting_entity.dart';
import '../repositories/user_repository.dart';

class GetUserSettingsUsecase extends NoParamUseCase<UserSettingEntity> {
  UserRepository userRepository;
  GetUserSettingsUsecase({
    required this.userRepository,
  });
  @override
  Future<Either<Failure, UserSettingEntity>> call() {
    return userRepository.getUserSettings();
  }
}

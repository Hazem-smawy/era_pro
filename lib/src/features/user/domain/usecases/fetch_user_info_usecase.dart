// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../repositories/user_repository.dart';

class FetchUserInfoUsecase extends NoParamUseCase<bool> {
  UserRepository userRepository;
  FetchUserInfoUsecase({
    required this.userRepository,
  });
  @override
  Future<Either<Failure, bool>> call() {
    return userRepository.fetchUserInfo();
  }
}

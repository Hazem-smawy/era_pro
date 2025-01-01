// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/user_entity.dart';

import '../repositories/user_repository.dart';

class GetUserUseCase extends NoParamUseCase<UserEntity> {
  final UserRepository userRepository;

  GetUserUseCase({
    required this.userRepository,
  });

  @override
  Future<Either<Failure, UserEntity>> call() {
    return userRepository.getUser();
  }
}

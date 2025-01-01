// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/user_store_entity.dart';
import '../repositories/store_repositories.dart';

class GetUserStoreInfoUsecase extends NoParamUseCase<UserStoreEntity> {
  StoreRepository storeRepository;
  GetUserStoreInfoUsecase({
    required this.storeRepository,
  });
  @override
  Future<Either<Failure, UserStoreEntity>> call() {
    return storeRepository.getUserStoreInfo();
  }
}

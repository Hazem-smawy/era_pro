import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/store_operation_entity.dart';
import '../repositories/store_repositories.dart';

class GetAllStoreOperationUsecase
    extends NoParamUseCase<List<StoreOperationEntity>> {
  StoreRepository storeRepository;

  GetAllStoreOperationUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<StoreOperationEntity>>> call() {
    return storeRepository.getStoreOperations();
  }
}

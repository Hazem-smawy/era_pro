import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../accounts/domain/usecases/delete_account_operation_usecase.dart';
import '../repositories/store_repositories.dart';

class DeleteStoreOperationUsecase
    extends ParamsUseCase<void, Params<OperationType>> {
  StoreRepository storeRepository;

  DeleteStoreOperationUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, int>> call(Params params) {
    return storeRepository.deleteStoreOperations(params.data);
  }
}

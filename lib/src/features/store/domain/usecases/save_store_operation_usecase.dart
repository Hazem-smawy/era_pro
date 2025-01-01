// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/store_operation_entity.dart';
import '../repositories/store_repositories.dart';

class SaveStoreOperationUsecase
    extends ParamsUseCase<bool, Params<List<StoreOperationEntity>>> {
  final StoreRepository storeRepository;

  SaveStoreOperationUsecase({
    required this.storeRepository,
  });

  @override
  Future<Either<Failure, bool>> call(
      Params<List<StoreOperationEntity>> params) async {
    return await storeRepository.saveStoreOperations(params.data);
  }
}

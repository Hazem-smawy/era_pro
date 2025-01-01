import 'package:dartz/dartz.dart';
import '../repositories/store_repositories.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/store_entity.dart';

class GetAllItemUnitsUsecase extends NoParamUseCase<List<ItemUnitsEntity>> {
  StoreRepository storeRepository;

  GetAllItemUnitsUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<ItemUnitsEntity>>> call() {
    return storeRepository.getItemUnits();
  }
}

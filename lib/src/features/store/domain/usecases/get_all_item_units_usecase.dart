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

class GetAllItemUnitsByIdUsecase
    extends ParamsUseCase<List<ItemUnitsEntity>, Params<int>> {
  StoreRepository storeRepository;

  GetAllItemUnitsByIdUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<ItemUnitsEntity>>> call(Params params) {
    return storeRepository.getItemUnitsById(params.data);
  }
}

class AddUpdateItemUnitUsecase
    extends ParamsUseCase<bool, Params<ItemUnitsEntity>> {
  final StoreRepository storeRepository;

  AddUpdateItemUnitUsecase({
    required this.storeRepository,
  });

  @override
  Future<Either<Failure, bool>> call(params) async {
    return await storeRepository.addItemUnit(params.data);
  }
}

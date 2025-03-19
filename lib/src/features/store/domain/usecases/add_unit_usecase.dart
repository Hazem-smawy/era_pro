import 'package:dartz/dartz.dart';
import 'package:tailor/src/core/usecases/usecases.dart';
import 'package:tailor/src/features/store/domain/entities/store_entity.dart';

import '../../../../core/error/failures.dart';
import '../repositories/store_repositories.dart';

class AddUnitUsecase extends ParamsUseCase<bool, Params<UnitEnitity>> {
  final StoreRepository storeRepository;

  AddUnitUsecase({
    required this.storeRepository,
  });

  @override
  Future<Either<Failure, bool>> call(params) async {
    return await storeRepository.addNewUnit(params.data);
  }
}

class AddItemGroupUsecase extends ParamsUseCase<bool, Params<ItemGroupEntity>> {
  final StoreRepository storeRepository;

  AddItemGroupUsecase({
    required this.storeRepository,
  });

  @override
  Future<Either<Failure, bool>> call(params) async {
    return await storeRepository.addNewItemGroup(params.data);
  }
}

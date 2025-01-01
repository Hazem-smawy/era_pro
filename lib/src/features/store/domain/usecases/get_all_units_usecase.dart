import 'package:dartz/dartz.dart';
import '../entities/unit_enitity.dart';
import '../repositories/store_repositories.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';

class GetAllUnitsUsecase extends NoParamUseCase<List<UnitEnitity>> {
  StoreRepository storeRepository;

  GetAllUnitsUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<UnitEnitity>>> call() {
    return storeRepository.getUnits();
  }
}

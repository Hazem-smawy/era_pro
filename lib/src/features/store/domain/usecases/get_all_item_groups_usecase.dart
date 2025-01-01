import 'package:dartz/dartz.dart';
import '../entities/item_group_entity.dart';
import '../repositories/store_repositories.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';

class GetAllItemGroupsUsecase extends NoParamUseCase<List<ItemGroupEntity>> {
  StoreRepository storeRepository;

  GetAllItemGroupsUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<ItemGroupEntity>>> call() {
    return storeRepository.getItemGroups();
  }
}

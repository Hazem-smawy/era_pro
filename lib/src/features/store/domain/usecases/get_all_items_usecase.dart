import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/item_entity.dart';
import '../repositories/store_repositories.dart';

class GetAllItemsUsecase extends NoParamUseCase<List<ItemEntity>> {
  StoreRepository storeRepository;

  GetAllItemsUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<ItemEntity>>> call() {
    return storeRepository.getItems();
  }
}

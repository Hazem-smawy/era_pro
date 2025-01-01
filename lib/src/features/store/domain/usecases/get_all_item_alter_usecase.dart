import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/item_alter_entity.dart';
import '../repositories/store_repositories.dart';

class GetAllItemAlterUsecase extends NoParamUseCase<List<ItemAlterEntity>> {
  StoreRepository storeRepository;

  GetAllItemAlterUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<ItemAlterEntity>>> call() {
    return storeRepository.getItemAlter();
  }
}

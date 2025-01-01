import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/item_details_entity.dart';
import '../repositories/store_repositories.dart';

class GetAllItemWithDetailsUsecase
    extends NoParamUseCase<List<StoreItemDetailsEntity>> {
  StoreRepository storeRepository;

  GetAllItemWithDetailsUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<StoreItemDetailsEntity>>> call() {
    return storeRepository.getAllItemsWithDetails();
  }
}

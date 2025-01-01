import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../repositories/store_repositories.dart';

class FetchAllStoreFromRemoteUsecase extends NoParamUseCase<bool> {
  StoreRepository storeRepository;

  FetchAllStoreFromRemoteUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, bool>> call() {
    return storeRepository.fetchAllStoreComponents();
  }
}

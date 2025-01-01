import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/barcode_entity.dart';
import '../repositories/store_repositories.dart';

class GetAllItemBarcodeUsecase extends NoParamUseCase<List<BarcodeEntity>> {
  StoreRepository storeRepository;

  GetAllItemBarcodeUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<BarcodeEntity>>> call() {
    return storeRepository.getAllItemBarcodes();
  }
}

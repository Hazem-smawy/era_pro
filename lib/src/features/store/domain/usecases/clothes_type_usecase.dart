import 'package:dartz/dartz.dart';
import 'package:tailor/src/features/store/data/models/clothes_type_model.dart';
import 'package:tailor/src/features/store/data/models/measurement_model.dart';

import '../repositories/store_repositories.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';

class GetAllClothesTypeUsecase extends NoParamUseCase<List<ClothesTypeModel>> {
  StoreRepository storeRepository;

  GetAllClothesTypeUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<ClothesTypeModel>>> call() {
    return storeRepository.getAllClothesType();
  }
}

class AddClothesTypeUsecase
    extends ParamsUseCase<bool, Params<ClothesTypeModel>> {
  final StoreRepository storeRepository;

  AddClothesTypeUsecase({
    required this.storeRepository,
  });

  @override
  Future<Either<Failure, bool>> call(params) async {
    return await storeRepository.addNewClothesType(params.data);
  }
}

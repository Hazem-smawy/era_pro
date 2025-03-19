import 'package:dartz/dartz.dart';
import 'package:tailor/src/features/store/data/models/model_category_model.dart';

import '../repositories/store_repositories.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';

class GetAllModelsCategoryUsecase
    extends NoParamUseCase<List<ModelCategoryModel>> {
  StoreRepository storeRepository;

  GetAllModelsCategoryUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<ModelCategoryModel>>> call() {
    return storeRepository.getAllModelsCategory();
  }
}

class AddModelCategoryUsecase
    extends ParamsUseCase<bool, Params<ModelCategoryModel>> {
  final StoreRepository storeRepository;

  AddModelCategoryUsecase({
    required this.storeRepository,
  });

  @override
  Future<Either<Failure, bool>> call(params) async {
    return await storeRepository.addNewModelCategory(params.data);
  }
}

import 'package:dartz/dartz.dart';
import 'package:tailor/src/features/store/data/models/choice_option_model.dart';
import 'package:tailor/src/features/store/data/models/clothes_type_model.dart';
import 'package:tailor/src/features/store/data/models/measurement_model.dart';

import '../repositories/store_repositories.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';

class GetAllChoiceOptionUsecase
    extends NoParamUseCase<List<ChoiceOptionModel>> {
  StoreRepository storeRepository;

  GetAllChoiceOptionUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<ChoiceOptionModel>>> call() {
    return storeRepository.getAllChoiceOption();
  }
}

class AddChoiceOptionUsecase
    extends ParamsUseCase<bool, Params<ChoiceOptionModel>> {
  final StoreRepository storeRepository;

  AddChoiceOptionUsecase({
    required this.storeRepository,
  });

  @override
  Future<Either<Failure, bool>> call(params) async {
    return await storeRepository.addNewChoiceOption(params.data);
  }
}

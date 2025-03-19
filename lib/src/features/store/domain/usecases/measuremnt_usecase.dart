import 'package:dartz/dartz.dart';
import 'package:tailor/src/features/store/data/models/measurement_model.dart';

import '../repositories/store_repositories.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';

class GetAllMeasurmentsUsecase extends NoParamUseCase<List<MeasurementModel>> {
  StoreRepository storeRepository;

  GetAllMeasurmentsUsecase({required this.storeRepository});
  @override
  Future<Either<Failure, List<MeasurementModel>>> call() {
    return storeRepository.getAllMeasuremnts();
  }
}

class AddMeasurmentUsecase
    extends ParamsUseCase<bool, Params<MeasurementModel>> {
  final StoreRepository storeRepository;

  AddMeasurmentUsecase({
    required this.storeRepository,
  });

  @override
  Future<Either<Failure, bool>> call(params) async {
    return await storeRepository.addNewMeasurment(params.data);
  }
}

import 'package:dartz/dartz.dart';
import 'package:tailor/src/features/main_info/domain/entities/main_info_entity.dart';
import 'package:tailor/src/features/main_info/domain/repositories/main_info_repository.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';

class AddCurrenctyUsecase extends ParamsUseCase<bool, CurencyEntity> {
  MainInfoRepository mainInfoRepository;
  AddCurrenctyUsecase({required this.mainInfoRepository});
  @override
  Future<Either<Failure, bool>> call(CurencyEntity params) {
    return mainInfoRepository.addCurrancy(params);
  }
}

import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/curency_entity.dart';
import '../repositories/main_info_repository.dart';

class GetAllCurenciesUseCase extends NoParamUseCase<List<CurencyEntity>> {
  MainInfoRepository mainInfoRepository;

  GetAllCurenciesUseCase({required this.mainInfoRepository});
  @override
  Future<Either<Failure, List<CurencyEntity>>> call() {
    return mainInfoRepository.getAllCurencies();
  }
}

import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/system_doc_entity.dart';
import '../repositories/main_info_repository.dart';

class GetAllSystemDocsUsecase extends NoParamUseCase<List<SystemDocEntity>> {
  MainInfoRepository mainInfoRepository;

  GetAllSystemDocsUsecase({required this.mainInfoRepository});
  @override
  Future<Either<Failure, List<SystemDocEntity>>> call() {
    return mainInfoRepository.getSystemDocs();
  }
}

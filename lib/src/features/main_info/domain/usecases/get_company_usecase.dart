// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/company_entity.dart';
import '../repositories/main_info_repository.dart';

class GetCompanyUsecase extends NoParamUseCase<CompanyEntity> {
  MainInfoRepository mainInfoRepository;
  GetCompanyUsecase({
    required this.mainInfoRepository,
  });
  @override
  Future<Either<Failure, CompanyEntity>> call() {
    return mainInfoRepository.getCompnayInfo();
  }
}

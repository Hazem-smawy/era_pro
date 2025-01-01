// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/branch_entity.dart';
import '../repositories/main_info_repository.dart';

class GetBranchUsecase extends NoParamUseCase<BranchEntity> {
  MainInfoRepository mainInfoRepository;
  GetBranchUsecase({
    required this.mainInfoRepository,
  });
  @override
  Future<Either<Failure, BranchEntity>> call() {
    return mainInfoRepository.getBranchInfo();
  }
}

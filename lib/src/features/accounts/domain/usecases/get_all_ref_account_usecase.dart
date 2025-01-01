import 'package:dartz/dartz.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/ref_account_entity.dart';

import '../../../../core/error/error.dart';
import '../repositories/repositories.dart';

class GetAllRefAccountUsecase extends NoParamUseCase<List<RefAccountEntity>> {
  AccountsRepository accountsRepository;

  GetAllRefAccountUsecase({required this.accountsRepository});
  @override
  Future<Either<Failure, List<RefAccountEntity>>> call() {
    return accountsRepository.getAllRefAccounts();
  }
}

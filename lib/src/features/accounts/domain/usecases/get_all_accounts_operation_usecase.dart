import 'package:dartz/dartz.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/accounts_operations_entity.dart';

import '../../../../core/error/error.dart';
import '../repositories/repositories.dart';

class GetAllAccountsOperationUsecase
    extends NoParamUseCase<List<AccountsOperationsEntity>> {
  AccountsRepository accountsRepository;

  GetAllAccountsOperationUsecase({required this.accountsRepository});
  @override
  Future<Either<Failure, List<AccountsOperationsEntity>>> call() {
    return accountsRepository.getAllAccountsOperation();
  }
}

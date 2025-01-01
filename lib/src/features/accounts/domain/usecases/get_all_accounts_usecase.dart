import 'package:dartz/dartz.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/account_entity.dart';

import '../../../../core/error/error.dart';
import '../repositories/repositories.dart';

class GetAllAccountsUseCase extends NoParamUseCase<List<AccountEntity>> {
  AccountsRepository accountsRepository;

  GetAllAccountsUseCase({required this.accountsRepository});
  @override
  Future<Either<Failure, List<AccountEntity>>> call() {
    return accountsRepository.getAllAccounts();
  }
}

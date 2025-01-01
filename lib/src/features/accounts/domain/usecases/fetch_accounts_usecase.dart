import 'package:dartz/dartz.dart';
import '../../../../core/usecases/usecases.dart';

import '../../../../core/error/error.dart';
import '../repositories/repositories.dart';

class FetchAccountsUsecase extends NoParamUseCase<bool> {
  AccountsRepository accountsRepository;

  FetchAccountsUsecase({required this.accountsRepository});
  @override
  Future<Either<Failure, bool>> call() {
    return accountsRepository.fetchAccounts();
  }
}

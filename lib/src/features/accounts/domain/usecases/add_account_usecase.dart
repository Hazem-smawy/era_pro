import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/account_entity.dart';
import '../repositories/repositories.dart';

class AddAccountUsecase extends ParamsUseCase<int, AccountEntity> {
  AccountsRepository accountsRepository;
  AddAccountUsecase({required this.accountsRepository});
  @override
  Future<Either<Failure, int>> call(AccountEntity params) {
    return accountsRepository.addAccount(params);
  }
}

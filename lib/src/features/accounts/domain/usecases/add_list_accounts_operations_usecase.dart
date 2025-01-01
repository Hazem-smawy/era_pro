import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/accounts_operations_entity.dart';
import '../repositories/repositories.dart';

class AddListAccountsOperationsUsecase
    extends ParamsUseCase<bool, Params<List<AccountsOperationsEntity>>> {
  AccountsRepository accountsRepository;
  AddListAccountsOperationsUsecase({required this.accountsRepository});
  @override
  Future<Either<Failure, bool>> call(
      Params<List<AccountsOperationsEntity>> params) async {
    return await accountsRepository.addListAccountOperation(params.data);
  }
}

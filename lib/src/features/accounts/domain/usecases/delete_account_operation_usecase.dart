// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../repositories/repositories.dart';

class DeleteAccountOperationUsecase
    extends ParamsUseCase<void, Params<OperationType>> {
  AccountsRepository accountsRepository;

  DeleteAccountOperationUsecase({required this.accountsRepository});
  @override
  Future<Either<Failure, int>> call(Params params) {
    return accountsRepository.deleteAccountOperations(params.data);
  }
}

class OperationType {
  int id;
  int type;
  OperationType({
    required this.id,
    required this.type,
  });
}

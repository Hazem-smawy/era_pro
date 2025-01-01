// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../repositories/bill_repository.dart';

class GetLastIdUsecase extends ParamsUseCase<int, int> {
  BillsRepository billsRepository;
  GetLastIdUsecase({
    required this.billsRepository,
  });

  @override
  Future<Either<Failure, int>> call(int params) async {
    return billsRepository.getLastId(params);
  }
}

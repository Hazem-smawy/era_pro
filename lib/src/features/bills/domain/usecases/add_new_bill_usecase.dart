// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/bill_entity.dart';
import '../repositories/bill_repository.dart';

class AddNewBillUsecase extends ParamsUseCase<int?, BillEntity> {
  BillsRepository billsRepository;
  AddNewBillUsecase({
    required this.billsRepository,
  });

  @override
  Future<Either<Failure, int?>> call(BillEntity params) async {
    return billsRepository.addNewBill(params);
  }
}

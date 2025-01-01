// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/bill_details_entity.dart';
import '../repositories/bill_repository.dart';

class AddBillDetailsUsecase
    extends ParamsUseCase<bool, List<BillDetailsEntity>> {
  BillsRepository billsRepository;
  AddBillDetailsUsecase({
    required this.billsRepository,
  });

  @override
  Future<Either<Failure, bool>> call(List<BillDetailsEntity> params) async {
    return billsRepository.addListofBillDetails(params);
  }
}

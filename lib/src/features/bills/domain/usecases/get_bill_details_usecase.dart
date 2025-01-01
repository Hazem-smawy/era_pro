// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/bill_details_entity.dart';
import '../repositories/bill_repository.dart';

class GetBillDetailsUsecase
    extends ParamsUseCase<List<BillDetailsEntity>, Params<int>> {
  BillsRepository billsRepository;
  GetBillDetailsUsecase({
    required this.billsRepository,
  });

  @override
  Future<Either<Failure, List<BillDetailsEntity>>> call(
      Params<int> params) async {
    return billsRepository.getAllDetailsForBill(params.data);
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../repositories/bill_repository.dart';

class GetRecentBillsUsecase extends NoParamUseCase<List<BillWithDetailsUI>> {
  BillsRepository billsRepository;
  GetRecentBillsUsecase({
    required this.billsRepository,
  });

  @override
  Future<Either<Failure, List<BillWithDetailsUI>>> call() async {
    return billsRepository.getRecentBillsWithDetails();
  }
}

import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../repositories/bill_repository.dart';

class DeleteBillDetailsUsecase extends ParamsUseCase<void, Params<int>> {
  BillsRepository billsRepository;

  DeleteBillDetailsUsecase({required this.billsRepository});
  @override
  Future<Either<Failure, int>> call(Params params) {
    return billsRepository.deleteBillDetails(params.data);
  }
}

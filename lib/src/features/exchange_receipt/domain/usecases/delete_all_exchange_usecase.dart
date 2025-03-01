import 'package:dartz/dartz.dart';
import '../../../../core/usecases/usecases.dart';

import '../../../../core/error/failures.dart';
import '../repositories/repositories.dart';

class DeleteAllExchangeUsecase extends NoParamUseCase<bool> {
  ExchangeReceiptRepository receiptRepository;
  DeleteAllExchangeUsecase({
    required this.receiptRepository,
  });

  @override
  Future<Either<Failure, bool>> call() async {
    return await receiptRepository.deleteAllExchange();
  }
}

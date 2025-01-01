import 'package:dartz/dartz.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/exchange_entity.dart';

import '../../../../core/error/failures.dart';
import '../repositories/repositories.dart';

class GetAllExchangeUsecase extends NoParamUseCase<List<ExchangeEntity>> {
  ExchangeReceiptRepository receiptRepository;
  GetAllExchangeUsecase({
    required this.receiptRepository,
  });

  @override
  Future<Either<Failure, List<ExchangeEntity>>> call() async {
    return await receiptRepository.getAllExchanges();
  }
}

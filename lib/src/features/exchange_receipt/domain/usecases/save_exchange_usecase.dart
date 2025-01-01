// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/exchange_entity.dart';

import '../repositories/repositories.dart';

class SaveExchangeUsecase extends ParamsUseCase<int, Params<ExchangeEntity>> {
  ExchangeReceiptRepository receiptRepository;
  SaveExchangeUsecase({
    required this.receiptRepository,
  });

  @override
  Future<Either<Failure, int>> call(Params<ExchangeEntity> params) {
    return receiptRepository.saveExhangeReceipt(params.data);
  }
}

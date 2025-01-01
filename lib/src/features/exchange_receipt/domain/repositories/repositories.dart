import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/exchange_entity.dart';

abstract class ExchangeReceiptRepository {
  Future<Either<Failure, int>> saveExhangeReceipt(ExchangeEntity ex);
  Future<Either<Failure, List<ExchangeEntity>>> getAllExchanges();
  Future<Either<Failure, ExchangeEntity?>> getExchangeById(int id);
  Future<Either<Failure, int>> getLastId(int id);
  Future<Either<Failure, bool>> deleteAllExchange();
}

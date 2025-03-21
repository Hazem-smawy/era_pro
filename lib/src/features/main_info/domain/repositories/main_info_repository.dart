import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/main_info_entity.dart';

abstract class MainInfoRepository {
  Future<Either<Failure, BranchEntity>> getBranchInfo();
  Future<Either<Failure, CompanyEntity>> getCompnayInfo();
  Future<Either<Failure, List<CurencyEntity>>> getAllCurencies();

  Future<Either<Failure, List<PaymentEntity>>> getPaymentMethods();
  Future<Either<Failure, List<SystemDocEntity>>> getSystemDocs();
  Future<Either<Failure, bool>> fetchAllMainInfo();
  Future<Either<Failure, bool>> addCurrancy(CurencyEntity account);
}

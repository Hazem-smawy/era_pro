import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/payment_entity.dart';
import '../repositories/main_info_repository.dart';

class GetAllPaymentsUsecase extends NoParamUseCase<List<PaymentEntity>> {
  MainInfoRepository mainInfoRepository;

  GetAllPaymentsUsecase({required this.mainInfoRepository});
  @override
  Future<Either<Failure, List<PaymentEntity>>> call() {
    return mainInfoRepository.getPaymentMethods();
  }
}

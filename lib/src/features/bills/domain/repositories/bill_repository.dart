import 'package:dartz/dartz.dart';
import '../../../../core/error/error.dart';
import '../../../accounts/domain/entities/account_entity.dart';
import '../entities/bill_details_entity.dart';
import '../entities/bill_entity.dart';
import '../entities/bill_ui_entity.dart';
import '../../../main_info/domain/entities/main_info_entity.dart';

abstract class BillsRepository {
  // Future<User> getUser(String userId);
  Future<Either<Failure, int?>> addNewBill(BillEntity bill);
  Future<Either<Failure, bool>> addListofBillDetails(
      List<BillDetailsEntity> billDetails);
  Future<Either<Failure, int>> getLastId(int id);
  Future<Either<Failure, List<BillEntity>>> getAllBills();
  Future<Either<Failure, List<BillWithDetailsUI>>> getRecentBillsWithDetails();
  Future<Either<Failure, List<BillDetailsEntity>>> getAllDetailsForBill(int id);
  Future<Either<Failure, List<BillDetailsUI>>> getBillDetailsUI(int id);
  Future<Either<Failure, int>> deleteBillDetails(int id);
}

class BillWithDetailsUI {
  final BillEntity bill;
  final AccountEntity customer;
  final CurencyEntity curencyEntity;

  BillWithDetailsUI(
      {required this.bill,
      required this.customer,
      required this.curencyEntity});
}

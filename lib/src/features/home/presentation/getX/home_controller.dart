// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../exchange_receipt/domain/entities/exchange_entity.dart';
import '../../../exchange_receipt/domain/usecases/get_all_exchange_usecase.dart';
import 'package:get/get.dart';

import '../../../bills/domain/repositories/bill_repository.dart';
import '../../../bills/domain/usecases/get_recent_bills.dart';

class HomeController extends GetxController {
  final totalBill = 0.0.obs;
  final totalExchange = 0.0.obs;
  final recentBillStatus = RxStatus.loading().obs;
  GetRecentBillsUsecase getRecentBillsUsecase;
  GetAllExchangeUsecase getAllExchangeUsecase;

  var allBills = <BillWithDetailsUI>[].obs;
  var allExchange = <ExchangeEntity>[].obs;
  HomeController({
    required this.getRecentBillsUsecase,
    required this.getAllExchangeUsecase,
  });

  @override
  onInit() {
    super.onInit();
    fetchAll();
  }

  calcTotals() {
    totalBill.value = 0;
    totalExchange.value = 0;

    totalBill.value = allBills.fold(
        0,
        (previous, ele) =>
            (ele.bill.billFinalCost * (ele.bill.billType == 8 ? 1 : -1)) +
            previous);
    totalExchange.value = allExchange.fold(0,
        (perv, ele) => (ele.totalAmount * (ele.sandType == 2 ? 1 : -1)) + perv);
  }

  Future<void> fetchAll() async {
    await fetchRecentBills();
    await fetchAllExchange();

    allBills.isEmpty && allExchange.isEmpty
        ? recentBillStatus.value = RxStatus.empty()
        : recentBillStatus.value = RxStatus.success();
    calcTotals();
  }

  Future<void> fetchRecentBills() async {
    final res = await getRecentBillsUsecase.call();

    res.fold((f) {}, (r) {
      allBills.value = r;
    });
  }

  Future<void> fetchAllExchange() async {
    final res = await getAllExchangeUsecase.call();

    res.fold((f) {}, (r) {
      allExchange.value = r;
    });
  }
}

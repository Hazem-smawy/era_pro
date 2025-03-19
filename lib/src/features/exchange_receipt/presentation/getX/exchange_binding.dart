import 'package:tailor/src/features/exchange_receipt/domain/usecases/delete_all_exchange_usecase.dart';
import 'package:tailor/src/features/exchange_receipt/domain/usecases/get_all_exchange_usecase.dart';
import 'package:tailor/src/features/exchange_receipt/domain/usecases/get_last_category_usecase.dart';
import 'package:tailor/src/features/exchange_receipt/domain/usecases/save_exchange_usecase.dart';
import 'package:tailor/src/features/exchange_receipt/presentation/getX/exchange_receipt_controller.dart';
import 'package:get/get.dart';

class ExchangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ExchangeReceiptController(
        getLastIdUsecase: Get.find(),
        saveExchangeUsecase: Get.find(),
        getAllExchangeUsecase: Get.find(),
        deleteAllExchangeUsecase: Get.find(),
      ),
    );
    //Usecases
    Get.lazyPut(
      () => GetLastCategoryUsecase(receiptRepository: Get.find()),
    );
    Get.lazyPut(
      () => DeleteAllExchangeUsecase(receiptRepository: Get.find()),
    );
    Get.lazyPut(
      () => GetAllExchangeUsecase(receiptRepository: Get.find()),
    );
    Get.lazyPut(
      () => SaveExchangeUsecase(receiptRepository: Get.find()),
    );
  }
}

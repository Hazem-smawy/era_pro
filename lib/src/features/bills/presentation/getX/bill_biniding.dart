import 'package:era_pro/src/features/bills/domain/usecases/add_bill_details_usecase.dart';
import 'package:era_pro/src/features/bills/domain/usecases/add_new_bill_usecase.dart';
import 'package:era_pro/src/features/bills/domain/usecases/get_all_bills_usecase.dart';
import 'package:era_pro/src/features/bills/domain/usecases/get_bill_details_usecase.dart';
import 'package:era_pro/src/features/bills/presentation/getX/bill_controller.dart';
import 'package:era_pro/src/features/bills/presentation/getX/item_controller.dart';
import 'package:get/get.dart';

import '../../domain/usecases/delete_bill_details_usecase.dart';
import '../../domain/usecases/get_bill_details_ui_usecase.dart';
import '../../domain/usecases/get_last_id_usecase.dart';

class BillBiniding extends Bindings {
  @override
  void dependencies() {
    //controller
    Get.lazyPut(
      () => BillController(
        getLastIdUsecase: Get.find(),
        addNewBillUsecase: Get.find(),
        addBillDetailsUsecase: Get.find(),
        getAllBillsUsecase: Get.find(),
        getBillDetailsUsecase: Get.find(),
        getBillDetailsUiUsecase: Get.find(),
        deleteBillDetailsUsecase: Get.find(),
        getRecentBillsUsecase: Get.find(),
      ),
    );
    Get.lazyPut(
      () => ItemController(
        getItemImageUsecase: Get.find(),
      ),
    );
    //Usecases
    Get.lazyPut(
      () => GetLastIdUsecase(billsRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => DeleteBillDetailsUsecase(billsRepository: Get.find()),
    );
    Get.lazyPut(
      () => GetBillDetailsUIUsecase(billsRepository: Get.find()),
    );
    Get.lazyPut(
      () => GetBillDetailsUsecase(billsRepository: Get.find()),
    );
    Get.lazyPut(
      () => GetAllBillsUsecase(billsRepository: Get.find()),
    );
    Get.lazyPut(
      () => AddBillDetailsUsecase(billsRepository: Get.find()),
    );
    Get.lazyPut(
      () => AddNewBillUsecase(billsRepository: Get.find()),
    );
  }
}

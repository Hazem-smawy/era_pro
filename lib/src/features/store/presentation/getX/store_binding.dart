import 'package:era_pro/src/features/main_info/domain/usecases/main_info_usecase.dart';
import 'package:era_pro/src/features/store/domain/usecases/delete_store_operation_usecase.dart';
import 'package:era_pro/src/features/store/domain/usecases/get_all_item_details_usecase.dart';
import 'package:era_pro/src/features/store/domain/usecases/get_all_store_operation_usecase.dart';
import 'package:era_pro/src/features/store/domain/usecases/get_item_image_usecase.dart';
import 'package:era_pro/src/features/store/domain/usecases/store_usecases.dart';
import 'package:era_pro/src/features/store/presentation/getX/store_controller.dart';
import 'package:get/get.dart';

class StoreBinding extends Bindings {
  @override
  void dependencies() {
    //?controller
    Get.lazyPut(
      () => StoreController(
        deleteStoreOperationUsecase: Get.find(),
        getAllItemWithDetailsUsecase: Get.find(),
        getAllStoreOperationUsecase: Get.find(),
        getUserStoreInfoUsecase: Get.find(),
        getAllItemGroupsUsecase: Get.find(),
        getAllItemAlterUsecase: Get.find(),
        getAllItemBarcodeUsecase: Get.find(),
        getAllItemUnitsUsecase: Get.find(),
        getAllUnitsUsecase: Get.find(),
        getAllItemsUsecase: Get.find(),
        saveStoreOperationUsecase: Get.find(),
        getItemImageUsecase: Get.find(),
      ),
      fenix: true,
    );

    //?usecase
    Get.lazyPut(
      () => GetItemImageUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => DeleteStoreOperationUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => SaveStoreOperationUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllItemWithDetailsUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllStoreOperationUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetUserStoreInfoUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllItemGroupsUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllItemUnitsUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllItemAlterUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllItemBarcodeUsecase(
        storeRepository: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetAllUnitsUsecase(
        storeRepository: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetAllItemsUsecase(
        storeRepository: Get.find(),
      ),
    );
  }
}

import 'package:tailor/src/features/main_info/domain/usecases/main_info_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/add_unit_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/add_update_item_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/choice_option_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/clothes_type_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/delete_store_operation_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/get_all_item_details_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/get_all_store_operation_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/get_item_image_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/measuremnt_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/models_category_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/models_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/store_usecases.dart';
import 'package:tailor/src/features/store/presentation/getX/ac_store_controller.dart';
import 'package:tailor/src/features/store/presentation/getX/item_units_controller.dart';
import 'package:tailor/src/features/store/presentation/getX/models_controller.dart';
import 'package:tailor/src/features/store/presentation/getX/store_controller.dart';
import 'package:get/get.dart';
import 'package:tailor/src/features/store/presentation/getX/store_item_controller.dart';

class StoreBinding extends Bindings {
  @override
  void dependencies() {
    //?item
    Get.lazyPut(() => StoreItemController(Get.find(), Get.find()));
    Get.lazyPut(
      () => ItemUnitsController(
        Get.find(),
        Get.find(),
        Get.find(),
      ),
    );

    Get.lazyPut(
      () => AddUpdateItemUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllItemUnitsByIdUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => AddUpdateItemUnitUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => AcStoreController(
        addModelCategoryUsecase: Get.find(),
        getAllModelsCategoryUsecase: Get.find(),
        addUnitUsecase: Get.find(),
        getAllUnitsUsecase: Get.find(),
        addItemGroupUsecase: Get.find(),
        getAllItemGroupsUsecase: Get.find(),
        getAllMeasurmentsUsecase: Get.find(),
        getAllClothesTypeUsecase: Get.find(),
        addClothesTypeUsecase: Get.find(),
        addMeasurmentUsecase: Get.find(),
        addChoiceOptionUsecase: Get.find(),
        getAllChoiceOptionUsecase: Get.find(),
      ),
    );
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

    Get.lazyPut(() => ThModelController(
        addThModelUsecase: Get.find(),
        updateThModelUsecsse: Get.find(),
        getAllModelsUsecase: Get.find()));
    Get.lazyPut(
      () => AddThModelsUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => UpdateThModelsUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllThModelsUsecase(
        storeRepository: Get.find(),
      ),
    );
    //?usecase

    // new
    Get.lazyPut(
      () => AddUnitUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => AddItemGroupUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetItemImageUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => AddModelCategoryUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllModelsCategoryUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => AddMeasurmentUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => AddClothesTypeUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllMeasurmentsUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllClothesTypeUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => GetAllChoiceOptionUsecase(
        storeRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => AddChoiceOptionUsecase(
        storeRepository: Get.find(),
      ),
    );
    //old
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

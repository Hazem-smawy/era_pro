// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import '../../../accounts/domain/usecases/delete_account_operation_usecase.dart';
import '../../domain/entities/item_details_entity.dart';
import '../../domain/usecases/delete_store_operation_usecase.dart';
import '../../domain/usecases/get_item_image_usecase.dart';
import 'package:get/get.dart';
import 'dart:typed_data';

import '../../../../core/error/error.dart';
import '../../../../core/utils/usecase_helper.dart';
import '../../../main_info/domain/usecases/main_info_usecase.dart';
import '../../domain/usecases/get_all_item_details_usecase.dart';
import '../../domain/usecases/get_all_store_operation_usecase.dart';

import '../../../../core/types/status_types.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/store_entity.dart';
import '../../domain/usecases/store_usecases.dart';

typedef Usecase<T> = Future<Either<Failure, T>> Function();

class StoreController extends GetxController {
  // var storeStatus = RxStatus.empty().obs;
  final storeStatus = RxStatus.empty().obs;

  GetAllItemsUsecase getAllItemsUsecase;
  GetAllItemAlterUsecase getAllItemAlterUsecase;
  GetAllUnitsUsecase getAllUnitsUsecase;
  GetAllItemBarcodeUsecase getAllItemBarcodeUsecase;
  GetAllItemUnitsUsecase getAllItemUnitsUsecase;
  GetAllItemGroupsUsecase getAllItemGroupsUsecase;
  GetUserStoreInfoUsecase getUserStoreInfoUsecase;
  GetAllStoreOperationUsecase getAllStoreOperationUsecase;
  GetAllItemWithDetailsUsecase getAllItemWithDetailsUsecase;
  SaveStoreOperationUsecase saveStoreOperationUsecase;
  DeleteStoreOperationUsecase deleteStoreOperationUsecase;
  GetItemImageUsecase getItemImageUsecase;
  StoreController({
    required this.getAllItemsUsecase,
    required this.getAllItemAlterUsecase,
    required this.getAllUnitsUsecase,
    required this.getAllItemBarcodeUsecase,
    required this.getAllItemUnitsUsecase,
    required this.getAllItemGroupsUsecase,
    required this.getUserStoreInfoUsecase,
    required this.getAllStoreOperationUsecase,
    required this.getAllItemWithDetailsUsecase,
    required this.saveStoreOperationUsecase,
    required this.deleteStoreOperationUsecase,
    required this.getItemImageUsecase,
  });

  var allItemBarcode = Rx<List<BarcodeEntity>>([]);
  var allItemAlter = Rx<List<ItemAlterEntity>>([]);
  var allItems = Rx<List<ItemEntity>>([]);
  var allItemsUnits = Rx<List<ItemUnitsEntity>>([]);
  var allStoreOperations = Rx<List<StoreOperationEntity>>([]);

  var allItemGroups = Rx<List<ItemGroupEntity>>([]);
  var allItemsWithDetails = Rx<List<StoreItemDetailsEntity>>([]);
  var units = Rx<List<UnitEnitity>>([]);
  var userStoreInfo = Rx<UserStoreEntity?>(null);
  final errorMessage = ''.obs;
  var selectedGroupId = 0.obs;
  var itemsInCategory = Rx<List<StoreItemDetailsEntity>>([]);
  var isFilterByQuantity = false.obs;

  //actions

  var selectedPrices = <int, Rx<double>>{}.obs;
  var selectedPriceIndex = <int, RxInt>{}.obs;

  StoreStatus get currentStatus {
    if (storeStatus.value.isEmpty) return StoreStatus.empty;
    if (storeStatus.value.isLoading) return StoreStatus.loading;
    if (storeStatus.value.isSuccess) return StoreStatus.success;
    if (storeStatus.value.isError) return StoreStatus.error;
    return StoreStatus.empty; // Default to empty
  }

  Future<void> getAllStoreInfo() async {
    storeStatus.value = RxStatus.loading();
    try {
      await getAllUnits();

      await getAllItemGroupsInfo();

      await getAllItemsUnit();

      await getAllItemAlter();

      await getAllItemBarcode();

      await getUserStoreInfo();

      await getStoreOperations();

      await getAllItemsWithDetails();
      await getAllItems();

      storeStatus.value = RxStatus.success();
    } catch (e) {
      storeStatus.value = RxStatus.error(e.toString());
    }
  }

  Future<void> getAllItemsInfo() async {
    storeStatus.value = RxStatus.loading();
    try {
      await getAllUnits();

      await getAllItemGroupsInfo();

      await getAllItemsUnit();

      await getAllItemAlter();

      await getAllItemBarcode();

      await getUserStoreInfo();

      await getStoreOperations();

      await getAllItems();

      storeStatus.value = RxStatus.success();
    } catch (e) {
      storeStatus.value = RxStatus.error(e.toString());
    }
  }

  void updatePriceIndex(int unitHash, int newIndex) {
    selectedPriceIndex[unitHash]?.value = newIndex;
  }

  // Get the selected price for the given unit hash
  double getSelectedPrice(int unitHash, List<double> prices) {
    int index = selectedPriceIndex[unitHash]?.value ?? 0;
    return prices[index];
  }

  Future<List<ItemGroupEntity>> getAllItemGroupsInfo() async {
    await handleUsecase(
      usecase: getAllItemGroupsUsecase.call,
      target: allItemGroups,
      errorMessageTarget: errorMessage,
    );

    return allItemGroups.value;
  }

  Future<List<StoreItemDetailsEntity>> getAllItemsWithDetails() async {
    await handleUsecase(
      usecase: getAllItemWithDetailsUsecase.call,
      target: allItemsWithDetails,
      errorMessageTarget: errorMessage,
    );
    itemsInCategory.value = allItemsWithDetails.value;
    return itemsInCategory.value;
  }

  Future<List<StoreOperationEntity>> getStoreOperations() async {
    await handleUsecase(
      usecase: getAllStoreOperationUsecase.call,
      target: allStoreOperations,
      errorMessageTarget: errorMessage,
    );

    return allStoreOperations.value;
  }

  Future<void> saveStoreOperations(List<StoreOperationEntity> storeOperations,
      int? billId, OperationType op) async {
    if (billId != null) {
      await deleteStoreOperationUsecase.call(Params(op));
    }
    final params = Params<List<StoreOperationEntity>>(storeOperations);

    await saveStoreOperationUsecase.call(params);
  }

  Future<List<BarcodeEntity>> getAllItemBarcode() async {
    await handleUsecase(
      usecase: getAllItemBarcodeUsecase.call,
      target: allItemBarcode,
      errorMessageTarget: errorMessage,
    );

    return allItemBarcode.value;
  }

  Future<List<ItemAlterEntity>> getAllItemAlter() async {
    await handleUsecase(
      usecase: getAllItemAlterUsecase.call,
      target: allItemAlter,
      errorMessageTarget: errorMessage,
    );

    return allItemAlter.value;
  }

  Future<List<UnitEnitity>> getAllUnits() async {
    await handleUsecase(
      usecase: getAllUnitsUsecase.call,
      target: units,
      errorMessageTarget: errorMessage,
    );
    return units.value;
  }

  Future<UserStoreEntity?> getUserStoreInfo() async {
    await handleUsecase(
      usecase: getUserStoreInfoUsecase.call,
      target: userStoreInfo,
      errorMessageTarget: errorMessage,
    );

    return userStoreInfo.value;
  }

  Future<List<ItemEntity>> getAllItems() async {
    await handleUsecase(
      usecase: getAllItemsUsecase.call,
      target: allItems,
      errorMessageTarget: errorMessage,
    );

    // if (allItems.value.isEmpty) {
    //   throw EmptyCashException(message: errorMessage.value);
    // }

    return allItems.value;
  }

  Future<Uint8List?> getItemImage(int id) async {
    final res = await getItemImageUsecase.call(Params(id));

    return res.fold(
      (failure) => null, // Handle failure and return null
      (imageData) => imageData, // Handle success and return the image data
    );
  }

  Future<List<ItemUnitsEntity>> getAllItemsUnit() async {
    await handleUsecase(
      usecase: getAllItemUnitsUsecase.call,
      target: allItemsUnits,
      errorMessageTarget: errorMessage,
    );

    return allItemsUnits.value;
  }

  Future<void> changeCategory(int? groupId) async {
    if (groupId != null) {
      selectedGroupId.value = groupId;
      if (isFilterByQuantity.value) {
        itemsInCategory.value = allItemsWithDetails.value
            .where(
              (item) =>
                  item.item.itemGroupId == groupId &&
                  item.totalQuantityInStore > 0,
            )
            .toList();
      } else {
        itemsInCategory.value = allItemsWithDetails.value
            .where(
              (item) => item.item.itemGroupId == groupId,
            )
            .toList();
      }
    } else {
      selectedGroupId.value = 0;
      if (isFilterByQuantity.value) {
        itemsInCategory.value = allItemsWithDetails.value
            .where((e) => e.totalQuantityInStore > 0)
            .toList();
      } else {
        itemsInCategory.value = allItemsWithDetails.value;
      }
    }
  }

  Future<void> searchByName(String name) async {
    if (name.trim().isNotEmpty) {
      selectedGroupId.value = 0;
      itemsInCategory.value = allItemsWithDetails.value
          .where(
            (item) => item.item.name.contains(name),
          )
          .toList();
    } else {
      itemsInCategory.value = allItemsWithDetails.value;
      selectedGroupId.value = 0;
    }
  }

  filterByQuantity() {
    if (isFilterByQuantity.value) {
      if (selectedGroupId.value != 0) {
        itemsInCategory.value = allItemsWithDetails.value
            .where(
              (item) =>
                  item.totalQuantityInStore > 0 &&
                  item.item.itemGroupId == selectedGroupId.value,
            )
            .toList();
      } else {
        itemsInCategory.value = allItemsWithDetails.value
            .where(
              (item) => item.totalQuantityInStore > 0,
            )
            .toList();
      }
    } else {
      if (selectedGroupId.value == 0) {
        itemsInCategory.value = allItemsWithDetails.value;
      } else {
        itemsInCategory.value = allItemsWithDetails.value
            .where(
              (item) => item.item.itemGroupId == selectedGroupId.value,
            )
            .toList();
      }
    }
  }
}

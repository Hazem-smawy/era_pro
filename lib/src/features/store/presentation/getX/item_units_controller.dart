import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailor/src/features/store/domain/entities/store_entity.dart';
import 'package:tailor/src/features/store/presentation/getX/ac_store_controller.dart';
import 'package:tailor/src/features/store/presentation/getX/store_controller.dart';
import '../../../../core/types/status_types.dart';
import '../../domain/usecases/get_all_item_units_usecase.dart';
import '../../../../core/utils/dialogs.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/usecase_helper.dart';

class ItemUnitsController extends GetxController {
  final GetAllItemUnitsUsecase getAllItemUnitsUsecase;
  final AddUpdateItemUnitUsecase addUpdateItemUnitUsecase;
  GetAllItemUnitsByIdUsecase getAllItemUnitsByIdUsecase;
  var selectedUnit = Rx<UnitEnitity?>(null);

  ItemUnitsController(
    this.getAllItemUnitsUsecase,
    this.addUpdateItemUnitUsecase,
    this.getAllItemUnitsByIdUsecase,
  );

  var itemUnits = Rx<List<ItemUnitsEntity>>([]);
  var itemUnitsForItem = Rx<List<ItemUnitsEntity>>([]);
  var isLoading = false.obs;

  final addNewItemUnitKey = GlobalKey<FormState>();

  TextEditingController unitFactorController = TextEditingController();
  TextEditingController wholeSalePriceController = TextEditingController();
  TextEditingController retailPriceController = TextEditingController();
  TextEditingController spacialPriceController = TextEditingController();
  TextEditingController intialCostController = TextEditingController();
  TextEditingController itemDiscountController = TextEditingController();
  TextEditingController unitBarcodeController = TextEditingController();

  final Rx<NewStatus> unitStatus = NewStatus.initial.obs;
  final errorMessage = ''.obs;
  AcStoreController acStoreController = Get.find();
  StoreController storeController = Get.find();

  Future<List<ItemUnitsEntity>> getAllItemUnits() async {
    await handleUsecase(
      usecase: getAllItemUnitsUsecase.call,
      target: itemUnits,
    );
    return itemUnits.value;
  }

  Future<void> getAllUnitItemForItem(int id) async {
    unitStatus.value = NewStatus.loading;
    await handleUsecase(
        usecase: () => getAllItemUnitsByIdUsecase(Params(id)),
        target: itemUnitsForItem,
        errorMessageTarget: errorMessage);

    print(errorMessage.value);
    updateStatus(
      status: unitStatus,
      response: itemUnitsForItem,
      hasData: (data) => data?.isNotEmpty ?? false,
    );
  }

  Future<void> addOrUpdateItemUnit(
      int? id, int itemId, UnitEnitity? mainUint) async {
    if (selectedUnit.value == null) {
      CustomDialog.customSnackBar(
        'الرجاء إدخال القيم بشكل صحيح',
        SnackPosition.TOP,
        true,
      );
      return;
    }
    if ((mainUint != null &&
            int.parse(unitFactorController.text.isEmpty
                    ? '0'
                    : unitFactorController.text) <=
                1) &&
        selectedUnit.value?.id != mainUint.id) {
      CustomDialog.customSnackBar(
        'الرجاء إدخال المعادلة بشكل صحيح',
        SnackPosition.TOP,
        true,
      );

      return;
    }

    // if(mainUint !=)

    CustomDialog.loadingProgress();
    final res = await addUpdateItemUnitUsecase.call(
      Params(
        ItemUnitsEntity(
          id: id,
          itemId: itemId,
          itemUnitId: selectedUnit.value?.id ?? 0,
          unitFactor: unitFactorController.text.isEmpty
              ? 1
              : int.tryParse(unitFactorController.text) ?? 0,
          wholeSaleprice: double.tryParse(wholeSalePriceController.text) ?? 0.0,
          retailPrice: double.tryParse(retailPriceController.text) ?? 0.0,
          spacialPrice: double.tryParse(spacialPriceController.text) ?? 0.0,
          intialCost: double.tryParse(intialCostController.text) ?? 0.0,
          itemDiscount: double.tryParse(itemDiscountController.text) ?? 0.0,
          unitBarcode: unitBarcodeController.text,
          newData: id == null,
        ),
      ),
    );

    res.fold(
      (failure) {
        print(failure.message);
        Get.back();
      },
      (_) async {
        await getAllUnitItemForItem(itemId);
        await storeController.getAllStoreInfo();
        await clearControllers();
        Get.back();

        Get.back();
        CustomDialog.customSnackBar(
          "تم حفظ الوحدة بنجاح!",
          SnackPosition.TOP,
          false,
        );
      },
    );
  }

  bool isNumber(String? input) {
    return num.tryParse(input ?? '') != null;
  }

  Future<void> clearControllers() async {
    unitFactorController.clear();
    wholeSalePriceController.clear();
    retailPriceController.clear();
    spacialPriceController.clear();
    intialCostController.clear();
    itemDiscountController.clear();
    unitBarcodeController.clear();
    selectedUnit.value = null;
  }

  Future<void> initializeControllers(ItemUnitsEntity itemUnit) async {
    unitFactorController.text = itemUnit.unitFactor.toString();
    wholeSalePriceController.text = itemUnit.wholeSaleprice.toString();
    retailPriceController.text = itemUnit.retailPrice.toString();
    spacialPriceController.text = itemUnit.spacialPrice.toString();
    intialCostController.text = itemUnit.intialCost.toString();
    itemDiscountController.text = itemUnit.itemDiscount.toString();
    unitBarcodeController.text = itemUnit.unitBarcode;
    selectedUnit.value = acStoreController.units.value.firstWhereOrNull(
      (e) => e.id == itemUnit.itemUnitId,
    );
  }
}

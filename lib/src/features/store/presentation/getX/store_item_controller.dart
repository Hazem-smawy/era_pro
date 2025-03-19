import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tailor/src/core/utils/dialogs.dart';
import 'package:tailor/src/features/main_info/domain/usecases/main_info_usecase.dart';
import 'package:tailor/src/features/store/domain/entities/store_entity.dart';
import 'package:tailor/src/features/store/presentation/getX/store_controller.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/usecase_helper.dart';
import '../../domain/entities/item_entity.dart';
import '../../domain/usecases/add_update_item_usecase.dart';

class StoreItemController extends GetxController {
  final AddUpdateItemUsecase addUpdateItemUsecase;
  final GetAllItemsUsecase getAllItemsUsecase;
  StoreItemController(this.addUpdateItemUsecase, this.getAllItemsUsecase);
  var items = Rx<List<ItemEntity>>([]);
  final addNewItemKey = GlobalKey<FormState>();

  var isLoading = false.obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController anotherNameItemController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController itemLimitController = TextEditingController();
  TextEditingController notifyBeforeController = TextEditingController();
  TextEditingController taxRateController = TextEditingController();
  TextEditingController itemCompanyController = TextEditingController();
  TextEditingController originalCountryController = TextEditingController();
  TextEditingController itemDescriptionController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  final hasTax = false.obs;
  final isExpire = false.obs;
  final RxString imagePath = ''.obs;
  File? imageFile;
  Uint8List? imageBytes;
  final selectedGroup = Rx<ItemGroupEntity?>(null);
  StoreController storeController = Get.find();

  final selectedTabView = 1.obs;
  int? selectedItemId;
  Future<void> pickItemImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      imageBytes = await imageFile!.readAsBytes();
      imagePath.value = pickedFile.path;
    }
  }

  Future<List<ItemEntity>> getAllItems() async {
    await handleUsecase(
      usecase: getAllItemsUsecase.call,
      target: items,
    );

    return items.value;
  }

  bool isNumber(String input) {
    return num.tryParse(input) != null;
  }

  Future<void> addOrUpdateItem(int? id, Function action) async {
    // if (Get.isSnackbarOpen) {
    //   Get.closeCurrentSnackbar();
    // }
    // if (Get.isDialogOpen ?? false) {
    //   Get.back();
    // }
    if (selectedGroup.value == null) {
      CustomDialog.customSnackBar(
        'قم بأختيار المجموعة',
        SnackPosition.TOP,
        true,
      );
      return;
    }

    if (hasTax.value) {
      if (!isNumber(taxRateController.text)) {
        CustomDialog.customSnackBar(
          'قم ادخال قيمة الضريبة بشكل صحيح',
          SnackPosition.TOP,
          true,
        );
        return;
      }
    }
    if (addNewItemKey.currentState?.validate() ?? false) {
      try {
        CustomDialog.loadingProgress();
        final res = await addUpdateItemUsecase.call(
          Params(
            ItemEntity(
              id: id,
              itemGroupId:
                  selectedGroup.value!.id!, // Replace with actual value
              itemCode: 1,
              name: nameController.text,
              enName: anotherNameItemController.text,
              type: 1,
              itemLimit: int.tryParse(itemLimitController.text) ?? 0,
              itemImage: imageBytes,
              isExpire: isExpire.value,
              notifyBefore: isExpire.value
                  ? int.tryParse(notifyBeforeController.text) ?? 0
                  : 0,
              freeQuantityAllow: true,
              hasTax: hasTax.value,
              taxRate: hasTax.value ? int.parse(taxRateController.text) : 0,
              itemCompany: itemCompanyController.text,
              orignalCountry: originalCountryController.text,
              itemDescription: itemDescriptionController.text,
              note: noteController.text,
              hasAlternated: false,
              newData: false,
            ),
          ),
        );
        res.fold(
          (failure) {
            print(failure.message);
            Get.back();
          },
          (r) async {
            selectedItemId = id ?? r;
            selectedTabView.value = 1;
            storeController.getAllStoreInfo();
            storeController.getAllItemsWithDetails();
            Get.back();

            CustomDialog.customSnackBar(
              "Item saved!",
              SnackPosition.TOP,
              false,
            );
            // clearControllers();
            action();
          },
        );
      } catch (e) {
        print(e.toString());
      }
    }
  }

  void clearControllers() {
    nameController.clear();
    anotherNameItemController.clear();
    typeController.clear();
    itemLimitController.clear();
    notifyBeforeController.clear();
    taxRateController.clear();
    itemCompanyController.clear();
    originalCountryController.clear();
    itemDescriptionController.clear();
    noteController.clear();
  }

  Future<void> initializeItemData(ItemEntity item) async {
    selectedItemId = item.id;
    nameController.text = item.name;
    anotherNameItemController.text = item.enName ?? '';
    typeController.text = item.type.toString();
    itemLimitController.text = item.itemLimit.toString();
    notifyBeforeController.text = item.notifyBefore.toString();
    taxRateController.text = item.taxRate.toString();
    itemCompanyController.text = item.itemCompany ?? '';
    originalCountryController.text = item.orignalCountry ?? '';
    itemDescriptionController.text = item.itemDescription ?? '';
    noteController.text = item.note ?? '';

    hasTax.value = item.hasTax;
    isExpire.value = item.isExpire;
    selectedGroup.value = storeController.allItemGroups.value
        .firstWhereOrNull((g) => g.id == item.itemGroupId);

    // if (item.itemImage != null) {
    //   imageBytes = item.itemImage;
    //   imagePath.value = "Existing Image";
    // }
    if (item.id != null) {
      imageBytes = await storeController.getItemImage(item.id!);
    }
  }
}

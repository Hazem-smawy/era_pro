// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailor/src/core/types/status_types.dart';
import 'package:tailor/src/core/usecases/usecases.dart';
import 'package:tailor/src/core/utils/dialogs.dart';
import 'package:tailor/src/features/main_info/domain/usecases/main_info_usecase.dart';
import 'package:tailor/src/features/store/data/models/measurement_model.dart';
import 'package:tailor/src/features/store/data/models/model_category_model.dart';
import 'package:tailor/src/features/store/domain/usecases/add_unit_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/choice_option_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/clothes_type_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/measuremnt_usecase.dart';
import 'package:tailor/src/features/store/domain/usecases/models_category_usecase.dart';
import '../../../../core/utils/usecase_helper.dart';
import '../../data/models/choice_option_model.dart';
import '../../data/models/clothes_type_model.dart';
import '../../domain/entities/store_entity.dart';

class AcStoreController extends GetxController {
  // Usecases
  final AddUnitUsecase addUnitUsecase;
  final GetAllUnitsUsecase getAllUnitsUsecase;
  final AddItemGroupUsecase addItemGroupUsecase;
  final GetAllItemGroupsUsecase getAllItemGroupsUsecase;
  final GetAllModelsCategoryUsecase getAllModelsCategoryUsecase;
  final AddModelCategoryUsecase addModelCategoryUsecase;
  final GetAllMeasurmentsUsecase getAllMeasurmentsUsecase;
  final AddMeasurmentUsecase addMeasurmentUsecase;
  final GetAllClothesTypeUsecase getAllClothesTypeUsecase;
  final AddClothesTypeUsecase addClothesTypeUsecase;
  final GetAllChoiceOptionUsecase getAllChoiceOptionUsecase;
  final AddChoiceOptionUsecase addChoiceOptionUsecase;

  AcStoreController({
    required this.addUnitUsecase,
    required this.getAllUnitsUsecase,
    required this.addItemGroupUsecase,
    required this.getAllItemGroupsUsecase,
    required this.getAllModelsCategoryUsecase,
    required this.addModelCategoryUsecase,
    required this.getAllMeasurmentsUsecase,
    required this.addMeasurmentUsecase,
    required this.getAllClothesTypeUsecase,
    required this.addClothesTypeUsecase,
    required this.getAllChoiceOptionUsecase,
    required this.addChoiceOptionUsecase,
  });

  // Variables
  final errorMessage = ''.obs;
  final Rx<NewStatus> unitStatus = NewStatus.initial.obs;
  final units = Rx<List<UnitEnitity>>([]);
  final Rx<NewStatus> groupStatus = NewStatus.initial.obs;
  final groups = Rx<List<ItemGroupEntity>>([]);
  final Rx<NewStatus> measurmentStatus = NewStatus.initial.obs;
  final measurments = Rx<List<MeasurementModel>>([]);
  final Rx<NewStatus> clothesTypeStatus = NewStatus.initial.obs;
  final clothesType = Rx<List<ClothesTypeModel>>([]);
  final Rx<NewStatus> choiceOptionStatus = NewStatus.initial.obs;
  final choiceOption = Rx<List<ChoiceOptionModel>>([]);
  final Rx<NewStatus> modelCategoryStatus = NewStatus.initial.obs;
  final modelsCategories = Rx<List<ModelCategoryModel>>([]);
  final selectedModelCategory = Rx<ModelCategoryModel?>(null);

  // Controller
  final nameCtronller = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    fetchAllUnits();
    fetchAllGroups();
    fetchAllModelCategories();
    fetchAllClothesType();
    fetchAllMeasurments();
    fetchAllChoiceOption();
  }

  Future<void> fetchAllUnits() async {
    unitStatus.value = NewStatus.loading;
    await handleUsecase(
      usecase: getAllUnitsUsecase.call,
      target: units,
      errorMessageTarget: errorMessage,
    );
    if (errorMessage.isNotEmpty) {
      print(errorMessage.value);
    }
    unitStatus.value =
        units.value.isEmpty ? NewStatus.initial : NewStatus.success;
  }

  Future<void> fetchAllModelCategories() async {
    modelCategoryStatus.value = NewStatus.loading;
    await handleUsecase(
      usecase: getAllModelsCategoryUsecase.call,
      target: modelsCategories,
      errorMessageTarget: errorMessage,
    );
    updateStatus(
      status: modelCategoryStatus,
      response: modelsCategories,
      hasData: (data) => data?.isNotEmpty ?? false,
    );
  }

  Future<void> fetchAllChoiceOption() async {
    choiceOptionStatus.value = NewStatus.loading;
    await handleUsecase(
      usecase: getAllChoiceOptionUsecase.call,
      target: choiceOption,
      errorMessageTarget: errorMessage,
    );
    updateStatus(
      status: choiceOptionStatus,
      response: choiceOption,
      hasData: (data) => data?.isNotEmpty ?? false,
    );
  }

  Future<void> fetchAllMeasurments() async {
    measurmentStatus.value = NewStatus.loading;
    await handleUsecase(
      usecase: getAllMeasurmentsUsecase.call,
      target: measurments,
      errorMessageTarget: errorMessage,
    );
    updateStatus(
      status: measurmentStatus,
      response: measurments,
      hasData: (data) => data?.isNotEmpty ?? false,
    );
  }

  Future<void> fetchAllClothesType() async {
    clothesTypeStatus.value = NewStatus.loading;
    await handleUsecase(
      usecase: getAllClothesTypeUsecase.call,
      target: clothesType,
      errorMessageTarget: errorMessage,
    );
    updateStatus(
      status: clothesTypeStatus,
      response: clothesType,
      hasData: (data) => data?.isNotEmpty ?? false,
    );
  }

  Future<void> fetchAllGroups() async {
    groupStatus.value = NewStatus.loading;
    await handleUsecase(
      usecase: getAllItemGroupsUsecase.call,
      target: groups,
      errorMessageTarget: errorMessage,
    );
    groupStatus.value =
        groups.value.isEmpty ? NewStatus.initial : NewStatus.success;
  }

  Future<void> addNewUnit(int? id) async {
    CustomDialog.loadingProgress();
    final res = await addUnitUsecase.call(
      Params(
        UnitEnitity(
          id: id,
          name: nameCtronller.text,
          note: '',
          newData: false,
        ),
      ),
    );
    res.fold(
      (f) {
        print(f.message);
        Get.back();
      },
      (_) async {
        await fetchAllUnits();
        Get.back();
        Get.back();
        CustomDialog.customSnackBar("ok", SnackPosition.TOP, false);
        nameCtronller.clear();
      },
    );
  }

  Future<void> addNewGroup(int? id) async {
    CustomDialog.loadingProgress();
    final res = await addItemGroupUsecase.call(
      Params(
        ItemGroupEntity(
          id: id,
          type: 0,
          parent: 0,
          name: nameCtronller.text,
          note: '',
          newData: false,
        ),
      ),
    );
    res.fold(
      (f) {
        print(f.message);
        Get.back();
      },
      (_) async {
        await fetchAllGroups();
        Get.back();
        Get.back();
        CustomDialog.customSnackBar("ok", SnackPosition.TOP, false);
        nameCtronller.clear();
      },
    );
  }

  Future<void> addNewModelCategory(int? id) async {
    CustomDialog.loadingProgress();
    final res = await addModelCategoryUsecase.call(
      Params(
        ModelCategoryModel(
          id: id,
          mcName: nameCtronller.text,
          status: true,
          createdAt: DateTime.now(),
          createdBy: 0,
        ),
      ),
    );
    res.fold(
      (f) {
        print(f.message);
        Get.back();
      },
      (_) async {
        await fetchAllModelCategories();
        Get.back();
        Get.back();
        CustomDialog.customSnackBar("ok", SnackPosition.TOP, false);
        nameCtronller.clear();
      },
    );
  }

  Future<void> addNewMeasurments(int? id) async {
    CustomDialog.loadingProgress();
    final res = await addMeasurmentUsecase.call(
      Params(
        MeasurementModel(
          id: id,
          sizeName: nameCtronller.text,
          status: true,
          createdAt: DateTime.now(),
          createdBy: 0,
        ),
      ),
    );
    res.fold(
      (f) {
        print(f.message);
        Get.back();
      },
      (_) async {
        await fetchAllMeasurments();
        Get.back();
        Get.back();
        CustomDialog.customSnackBar("ok", SnackPosition.TOP, false);
        nameCtronller.clear();
      },
    );
  }

  Future<void> addNewClothesType(int? id) async {
    CustomDialog.loadingProgress();
    final res = await addClothesTypeUsecase.call(
      Params(
        ClothesTypeModel(
          typeName: nameCtronller.text,
          status: true,
          createdAt: DateTime.now(),
          createdBy: 0,
        ),
      ),
    );
    res.fold(
      (f) {
        print(f.message);
        Get.back();
      },
      (_) async {
        await fetchAllClothesType();
        Get.back();
        Get.back();
        CustomDialog.customSnackBar("ok", SnackPosition.TOP, false);
        nameCtronller.clear();
      },
    );
  }

  Future<void> addNewChoiceOption(int? id) async {
    CustomDialog.loadingProgress();
    final res = await addChoiceOptionUsecase.call(
      Params(
        ChoiceOptionModel(
          id: id,
          optionName: nameCtronller.text,
          status: true,
          createdAt: DateTime.now(),
          createdBy: 0,
        ),
      ),
    );
    res.fold(
      (f) {
        print(f.message);
        Get.back();
      },
      (_) async {
        await fetchAllChoiceOption();
        Get.back();
        Get.back();
        CustomDialog.customSnackBar("ok", SnackPosition.TOP, false);
        nameCtronller.clear();
      },
    );
  }
}

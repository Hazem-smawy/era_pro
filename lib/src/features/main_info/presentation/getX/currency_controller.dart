// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tailor/src/core/utils/dialogs.dart';
// import 'package:tailor/src/features/main_info/domain/usecases/get_all_curencies.dart';
// import '../../domain/entities/curency_entity.dart';
// import '../../domain/usecases/add_currency_usecase.dart';

// class CurrencyController extends GetxController {
//   final GetAllCurenciesUseCase getAllCurenciesUsecase;
//   final AddCurrenctyUsecase addCurrencyUsecase;

//   CurrencyController(this.getAllCurenciesUsecase, this.addCurrencyUsecase);

//   var currencies = <CurencyEntity>[].obs;
//   var isLoading = false.obs;

//   TextEditingController nameController = TextEditingController();
//   TextEditingController symbolController = TextEditingController();
//   TextEditingController valueController = TextEditingController();

//   @override
//   void onInit() {
//     fetchAllCurrencies();
//     super.onInit();
//   }

//   Future<void> fetchAllCurrencies() async {
//     isLoading.value = true;
//     final result = await getAllCurenciesUsecase.call();
//     result.fold(
//       (failure) {
//         print(failure.message);
//       },
//       (data) {
//         currencies.value = data;
//       },
//     );
//     isLoading.value = false;
//   }

//   Future<void> addOrUpdateCurrency(int? id) async {
//     CustomDialog.loadingProgress();
//     final res = await addCurrencyUsecase.call(
//       CurencyEntity(
//         id: id,
//         name: nameController.text,
//         symbol: symbolController.text,
//         value: double.tryParse(valueController.text) ?? 0.0,
//         subName: '',
//         equivelant: 1.0,
//         localCurrency: false,
//         storeCurrency: false,
//         maxValue: 100.0,
//         minValue: 1.0,
//         note: '',
//         newData: false,
//       ),
//     );
//     res.fold(
//       (failure) {
//         print(failure.message);
//         Get.back();
//       },
//       (_) async {
//         await fetchAllCurrencies();
//         Get.back();
//         Get.back();
//         CustomDialog.customSnackBar(
//             "Currency saved!", SnackPosition.TOP, false);
//         nameController.clear();
//         symbolController.clear();
//         valueController.clear();
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailor/src/core/utils/dialogs.dart';
import 'package:tailor/src/features/main_info/domain/usecases/get_all_curencies.dart';
import '../../domain/entities/curency_entity.dart';
import '../../domain/usecases/add_currency_usecase.dart';

class CurrencyController extends GetxController {
  final GetAllCurenciesUseCase getAllCurenciesUsecase;
  final AddCurrenctyUsecase addCurrencyUsecase;

  CurrencyController(this.getAllCurenciesUsecase, this.addCurrencyUsecase);

  var currencies = <CurencyEntity>[].obs;
  var isLoading = false.obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController symbolController = TextEditingController();
  TextEditingController valueController = TextEditingController();

  var isLocalCurrency = false.obs;
  var isStoreCurrency = false.obs;

  @override
  void onInit() {
    fetchAllCurrencies();
    super.onInit();
  }

  Future<void> fetchAllCurrencies() async {
    isLoading.value = true;
    final result = await getAllCurenciesUsecase.call();
    result.fold(
      (failure) {
        print(failure.message);
      },
      (data) {
        currencies.value = data;
      },
    );
    isLoading.value = false;
  }

  Future<void> addOrUpdateCurrency(int? id) async {
    CustomDialog.loadingProgress();
    final res = await addCurrencyUsecase.call(
      CurencyEntity(
        id: id,
        name: nameController.text,
        symbol: symbolController.text,
        value: double.tryParse(valueController.text) ?? 0.0,
        subName: '',
        equivelant: 1.0,
        localCurrency: isLocalCurrency.value,
        storeCurrency: isStoreCurrency.value,
        maxValue: 100.0,
        minValue: 1.0,
        note: '',
        newData: false,
      ),
    );
    res.fold(
      (failure) {
        print(failure.message);
        Get.back();
      },
      (_) async {
        await fetchAllCurrencies();
        Get.back();
        Get.back();
        CustomDialog.customSnackBar(
            "Currency saved!", SnackPosition.TOP, false);
        nameController.clear();
        symbolController.clear();
        valueController.clear();
        isLocalCurrency.value = false;
        isStoreCurrency.value = false;
      },
    );
  }
}

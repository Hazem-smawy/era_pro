// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/dialogs.dart';
import '../../../accounts/presentation/getX/accounts_controller.dart';
import '../../domain/usecases/delete_all_exchange_usecase.dart';
import '../../domain/usecases/get_all_exchange_usecase.dart';
import '../../domain/usecases/get_last_category_usecase.dart';
import '../../domain/usecases/save_exchange_usecase.dart';
import '../../../main_info/presentation/getX/main_info_controller.dart';
import '../../../user/presentation/getX/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../domain/entities/exchange_entity.dart';

import '../../../../core/constants/colors.dart';
import '../../../main_info/domain/entities/main_info_entity.dart';
import '../../domain/entities/check_operation_entity.dart';
import '../../domain/entities/sand_details_entity.dart';

class ExchangeReceiptController extends GetxController {
  //usecase
  GetLastCategoryUsecase getLastIdUsecase;
  SaveExchangeUsecase saveExchangeUsecase;
  GetAllExchangeUsecase getAllExchangeUsecase;
  DeleteAllExchangeUsecase deleteAllExchangeUsecase;

  ExchangeReceiptController({
    required this.getLastIdUsecase,
    required this.saveExchangeUsecase,
    required this.getAllExchangeUsecase,
    required this.deleteAllExchangeUsecase,
  });
  //controllers
  MainInfoController mainInfoController = Get.find();
  UserController userController = Get.find();
  AccountsController accountsController = Get.find();

  // text editing controllers
  // CurrencyTextFieldController moneyTextEditingController =
  // CurrencyTextFieldController(
  //     currencySymbol: '', decimalSymbol: '.', thousandSymbol: ',');
  TextEditingController moneyTextEditingController = TextEditingController();
  TextEditingController detailsTextEditingController = TextEditingController();
  TextEditingController numberOfSandTextEditingController =
      TextEditingController();

  var status = RxStatus.empty().obs;
  // var newExchange = {}.obs;
  var newExchange = <String, dynamic>{}.obs;

  // Method to update a value

  var allExChange = <ExchangeEntity>[].obs;
  var filteredExchangeList = <ExchangeEntity>[].obs;
  var lastId = 0.obs;

  Rx<DateTime?> dueDate = DateTime.now().obs;
  int? accNumber;
  final formKey = GlobalKey<FormState>();
  Future<void> initPaymentsMethod(
      ExchangeEntity? exchange, int? customerId) async {
    if (exchange == null) {
      await getLastId(2);
    }

    await mainInfoController.getAllPaymentsMethod();
    await mainInfoController.getAllAccounts();
    await mainInfoController.getAllCurenciesInfo();

    mainInfoController.selectedPaymentsMethod.value =
        mainInfoController.allPaymentsMethod.value.firstWhere(
      (element) => element.id == 1,
    );
    mainInfoController.changePaymentMethod(
      mainInfoController.selectedPaymentsMethod.value,
    );
    mainInfoController.selecteCurency.value = mainInfoController.localCurency;
    if (exchange != null) {
      updateExchange(exchange);
    } else {
      reset();
      if (customerId != null) {
        accNumber = customerId;
        updateValue(
          'name',
          accountsController.customers.value
              .firstWhere((e) => e.accNumber == customerId)
              .accName,
        );
      }
    }
  }

  // Future<void> initExchangesAndDefaultsPayments() async {
  //   // await getLastId(2);
  //   // await mainInfoController.getAllPaymentsMethod();
  //   // await accountsController.getAccountInfo();
  //   // await mainInfoController.getAllCurenciesInfo();

  //   // mainInfoController.selectedPaymentsMethod.value =
  //   //     mainInfoController.allPaymentsMethod.value.firstWhere(
  //   //   (element) => element.id == 1,
  //   // );
  //   // mainInfoController.changePaymentMethod(
  //   //   mainInfoController.selectedPaymentsMethod.value,
  //   // );
  //   // mainInfoController.selecteCurency.value = mainInfoController.localCurency;
  //   // await getAllExChange();
  // }

  Future<void> deleteAllExchange() async {
    await deleteAllExchangeUsecase.call();
    status.value = RxStatus.empty();
  }

  void updateValue(String key, dynamic value) {
    newExchange.update(
      key,
      (_) => value, // Update the existing key
      ifAbsent: () => value, // Add the key if it doesn't exist
    );
  }

  void filterExchange(String value) {
    if (value.isNotEmpty) {
      status.value = RxStatus.loading();
      final query = value;

      filteredExchangeList.value = allExChange.where((exchange) {
        String name =
            getCustomerName(exchange.sandDetails?.first.accNumber) ?? '';
        final id = exchange.id;
        final billNumber = exchange.sandNumber;
        return name.contains(query) ||
            id.toString().contains(query) ||
            billNumber.toString().contains(query);
      }).toList();
    } else {
      filteredExchangeList.value = allExChange;
    }
    status.value =
        filteredExchangeList.isEmpty ? RxStatus.empty() : RxStatus.success();
  }

  Future<void> getLastId(int id) async {
    var res = await getLastIdUsecase(Params(id));
    res.fold((f) {}, (r) {
      lastId.value = r + 1;
    });
  }

  String? getCustomerName(int? id) {
    if (id == null) return null;
    return accountsController.allAccounts.value
        .firstWhereOrNull((e) => e.accNumber == id)
        ?.accName;
  }

  CurencyEntity? getCurencyName(int id) {
    return mainInfoController.allCurencies.value
        .firstWhereOrNull((e) => e.id == id);
  }

  Future<void> getAllExChange() async {
    status.value = RxStatus.loading();
    final res = await getAllExchangeUsecase();
    res.fold((f) => status.value = RxStatus.empty(), (r) {
      allExChange.value = r;

      allExChange.sort((a, b) => b.id!.compareTo(a.id!));
      filteredExchangeList.value = allExChange;
      status.value = r.isNotEmpty ? RxStatus.success() : RxStatus.empty();
    });
  }

  void reset() {
    moneyTextEditingController.clear();
    numberOfSandTextEditingController.clear();
    detailsTextEditingController.clear();
    newExchange['type'] = 2;
    newExchange['name'] = null;
    newExchange['date'] = null;
  }

  void updateExchange(ExchangeEntity ex) {
    lastId.value = ex.sandNumber;
    dueDate.value = ex.sandDate;
    moneyTextEditingController.text =
        (ex.sandDetails!.first.amount * 1).toString();
    numberOfSandTextEditingController.text =
        ex.checkOperations?.first.operationNumber ?? '';
    detailsTextEditingController.text = ex.sandNote;
    newExchange['type'] = ex.sandType;
    newExchange['name'] = ex.reciepentName;
    newExchange['date'] = ex.sandDate;

    mainInfoController.selecteCurency.value = mainInfoController
        .allCurencies.value
        .firstWhere((e) => e.id == ex.sandDetails!.first.currencyId);
    accNumber = ex.sandDetails?.first.accNumber;
  }

  Future<void> addNewExchange(ExchangeEntity? ex) async {
    print(newExchange['type']);
    print(mainInfoController.selecteCurency.value?.name);

    final String title = ex == null ? 'إضافة' : 'تعديل';
    if (newExchange['type'] == null) {
      return;
    }
    if (newExchange['name'] == null) {
      CustomDialog.customSnackBar(
        'ادخل اسم العميل',
        SnackPosition.TOP,
        true,
      );
      return;
    }

    if (formKey.currentState!.validate()) {
      CustomDialog.loadingProgress();
      await mainInfoController.getBranchInfo();

      int? branchId = mainInfoController.branch.value?.id;

      final fundNumber =
          mainInfoController.selectedPaymentsMethodDetails.value?.accNumber;
      if (fundNumber == null) {
        return;
      }
      final amount = double.parse(moneyTextEditingController.text);
      final totalAmount =
          amount * mainInfoController.selecteCurency.value!.value;

      final snadDetail = SandDetailEntity(
        id: ex?.sandDetails?.first.id,
        sandId: ex?.id ?? 0,
        accNumber: accNumber!,
        amount: amount,
        currencyId: mainInfoController.selecteCurency.value?.id ?? 0,
        currencyValue: mainInfoController.selecteCurency.value?.value ?? 0,
      );
      final checkOperation = [
        CheckOperationEntity(
          id: ex?.checkOperations?.first.id,
          sandId: ex?.id ?? 0,
          operationNumber: numberOfSandTextEditingController.text,
          operationDate: DateTime.now(),
          paymentMethed:
              mainInfoController.selectedPaymentsMethod.value?.id ?? 0,
          operationState: true,
        ),
      ];

      var exchange = ExchangeEntity(
        id: ex?.id,
        sandType: newExchange['type'],
        isCash: true,
        branchId: branchId!,
        sandNumber: lastId.value,
        sandDate: dueDate.value ?? (newExchange['date'] ?? DateTime.now()),
        fundNumber: fundNumber,
        currencyId: mainInfoController.localCurency?.id ?? 0,
        currencyValue: mainInfoController.localCurency?.value ?? 1,
        reciepentName: newExchange['name'] ?? '',
        totalAmount: totalAmount,
        sandNote: detailsTextEditingController.text,
        refNumber: '',
        sandDetails: [snadDetail],
        checkOperations: checkOperation,
      );

      final res = await saveExchangeUsecase(Params(exchange));
      res.fold(
        (f) {},
        (exchangeId) async {
          await accountsController.addExchangeOperation(
            type: newExchange['type'],
            customerAccount: accNumber!,
            sellerAccount: fundNumber,
            amount: amount,
            totalAmount: totalAmount,
            isOld: false,
            currency: mainInfoController.selecteCurency.value!,
            localCurency: mainInfoController.localCurency!,
            snadNumber: exchangeId,
            description: detailsTextEditingController.text,
          );
        },
      );

      // operatatin
      await getAllExChange();
      Get.back();
      Get.back();

      CustomDialog.customSnackBar(
        'تم $title السند بنجاح',
        SnackPosition.TOP,
        false,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    moneyTextEditingController.dispose();
    detailsTextEditingController.dispose();
    numberOfSandTextEditingController.dispose();
  }
}

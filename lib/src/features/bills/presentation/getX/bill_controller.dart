import 'dart:async';

import 'package:tailor/src/features/bills/presentation/widgets/bill_widget/pyment_method_widget.dart';
import 'package:tailor/src/features/setting/presentation/getX/setting_controller.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/types/status_types.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/perecent_caculator.dart';
import '../../../accounts/domain/usecases/delete_account_operation_usecase.dart';
import '../../domain/repositories/bill_repository.dart';
import '../../domain/usecases/delete_bill_details_usecase.dart';
import '../../domain/usecases/get_bill_details_ui_usecase.dart';
import '../../domain/usecases/get_bill_details_usecase.dart';
import '../../domain/usecases/get_recent_bills.dart';
import '../../../main_info/domain/entities/main_info_entity.dart';
import '../../../store/domain/entities/store_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/routes/app_pages.dart';
import '../../domain/usecases/get_all_bills_usecase.dart';
import 'item_controller.dart';
import '../../../store/presentation/getX/store_controller.dart';

import '../../../../core/utils/dialogs.dart';
import '../../../accounts/presentation/getX/accounts_controller.dart';
import '../../../main_info/presentation/getX/main_info_controller.dart';
import '../../../user/presentation/getX/user_controller.dart';
import '../../domain/entities/bill_details_entity.dart';
import '../../domain/entities/bill_entity.dart';
import '../../domain/entities/bill_ui_entity.dart';
import '../../domain/usecases/add_bill_details_usecase.dart';
import '../../domain/usecases/add_new_bill_usecase.dart';
import '../../domain/usecases/get_last_id_usecase.dart';

class BillController extends GetxController {
  // Usecases
  final AddNewBillUsecase addNewBillUsecase;
  final GetLastIdUsecase getLastIdUsecase;
  final AddBillDetailsUsecase addBillDetailsUsecase;
  final GetAllBillsUsecase getAllBillsUsecase;
  final GetBillDetailsUsecase getBillDetailsUsecase;
  final GetBillDetailsUIUsecase getBillDetailsUiUsecase;
  final DeleteBillDetailsUsecase deleteBillDetailsUsecase;
  final GetRecentBillsUsecase getRecentBillsUsecase;

  BillController({
    required this.addNewBillUsecase,
    required this.getLastIdUsecase,
    required this.addBillDetailsUsecase,
    required this.getAllBillsUsecase,
    required this.getBillDetailsUsecase,
    required this.getBillDetailsUiUsecase,
    required this.deleteBillDetailsUsecase,
    required this.getRecentBillsUsecase,
  });

  // Controllers
  final MainInfoController mainInfoController = Get.find();
  final SettingController settingController = Get.find();
  final UserController user = Get.find();
  final AccountsController accountsController = Get.find();
  final StoreController storeController = Get.find();
  final ItemController itemController = Get.find();

  // Bill text controllers
  final TextEditingController billDiscountPercent = TextEditingController();
  final TextEditingController billDiscountRate = TextEditingController();
  final TextEditingController billTaxPercent = TextEditingController();
  final TextEditingController billTaxRate = TextEditingController();
  final TextEditingController billNoteTextEditingController =
      TextEditingController();

  final completeFormKey = GlobalKey<FormState>();

  // Observables
  final errorMessage = ''.obs;
  final newBill = Rx<BillUI>(BillUI());
  final allBills = <BillWithDetailsUI>[].obs;
  final filteredBills = <BillWithDetailsUI>[].obs;
  final billDetails = <BillDetailsUI>[].obs;
  final billStatus = RxStatus.empty().obs;
  final billTypeForTitle = 0.obs;

  // Future<void> getAllInfo() async {
  //   try {
  //     billStatus.value = RxStatus.loading();
  //     await mainInfoController.getAllCurenciesInfo();
  //     await accountsController.getAllAccounts();
  //     await getAllBills();
  //     billStatus.value = RxStatus.success();
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  @override
  onInit() {
    super.onInit();
    mainInfoController.paymentType.value = settingController.isNotCash;
  }

  Future<void> getAllBills() async {
    try {
      // billStatus.value = RxStatus.success();
      final result = await getRecentBillsUsecase.call();

      result.fold(
        (failure) => billStatus.value = RxStatus.error(),
        (res) async {
          await mainInfoController.getAllCurenciesInfo();
          await accountsController.getAllAccounts();
          billStatus.value = RxStatus.success();
          allBills.value = res;
          allBills.sort((a, b) => b.bill.id.compareTo(a.bill.id));
          filteredBills.value = allBills;
        },
      );
    } catch (e) {
      billStatus.value = RxStatus.error();
    }
  }

  void filterBills(String value) {
    if (value.isNotEmpty) {
      billStatus.value = RxStatus.loading();
      final query = value;

      filteredBills.value = allBills.where((bill) {
        String name = getCustomerName(bill.bill.customerNumber) ?? '';
        final id = bill.bill.id;
        final billNumber = bill.bill.billNumber;
        return name.contains(query) ||
            id.toString().contains(query) ||
            billNumber.toString().contains(query);
      }).toList();
    } else {
      filteredBills.value = allBills;
    }
    billStatus.value = filteredBills.isEmpty
        ? billStatus.value = RxStatus.empty()
        : billStatus.value = RxStatus.success();
  }

  //bill update
  Future<void> getBillDetailsInfo() async {
    await mainInfoController.getBranchInfo();
    await mainInfoController.getAllAccounts();
    await accountsController.getAccountInfo();
    await storeController.getUserStoreInfo();
    await mainInfoController.getAllPaymentsMethod();
  }

  Future<List<BillDetailsUI>> getBillDetailsUI(int id) async {
    final parmas = Params<int>(id);
    final res = await getBillDetailsUiUsecase.call(parmas);
    await res.fold((failure) {}, (e) async {
      billDetails.value = e;
    });

    return billDetails;
  }

  Future<void> updateOldBill(BillEntity bill, int type, String tag) async {
    final items = await getItemsInOldBill(bill);

    //update selling bill or back bill
    if (tag == 'e') {
      newBill.value.billId = bill.id;
      newBill.value.billNumber = bill.billNumber;
      newBill.value.customerNumber = bill.customerNumber;
      newBill.value.addedDiscount = bill.billDiscount;

      newBill.value.addedTaxPercent = bill.salesTaxRate;

      newBill.value.dueDate = bill.dueDate;
      newBill.value.billDate = bill.billDate;

      newBill.value.isOld = true;
      billTypeForTitle.value = 1;

      await initPaymentMethod(bill);
      // for new back bill
    } else if (tag == 'a') {
      newBill.value.customerNumber = bill.customerNumber;
      newBill.value.addedDiscount = bill.billDiscount;
      newBill.value.addedTaxPercent = bill.salesTaxRate;
      billTypeForTitle.value = 0;
      await initPaymentMethod(bill);
    }

    await Get.toNamed(
      Routes.SELLINGPAGE,
      arguments: {
        "updatedItems": items,
        "bill": bill,
        "type": type,
      },
    )?.then((onValue) {
      resetBillState();
    });
  }

  Future<void> initPaymentMethod(BillEntity bill) async {
    await mainInfoController.getAllAccounts();
    await mainInfoController.getAllPaymentsMethod();
    newBill.value.selectedCurencyId = bill.currencyId;

    mainInfoController.paymentType.value =
        bill.paymentMethed == 0 ? true : false;
    var payment = mainInfoController.allPaymentsMethod.value
        .firstWhereOrNull((e) => e.id == bill.paymentMethed);
    await mainInfoController.changePaymentMethod(payment);
    print(payment);
    mainInfoController.selectedPaymentsMethodDetails.value =
        mainInfoController.allAccount.value.firstWhereOrNull(
      (e) => e.id == bill.fundNumber,
    );
  }

  Future<List<ItemUI>> getItemsInOldBill(
    BillEntity bill,
  ) async {
    List<BillDetailsUI> billDetails = await getBillDetailsUI(bill.id);
    final items = await storeController.getAllItems();
    final itemsUnits = await storeController.getAllItemsUnit();
    final operations = await storeController.getStoreOperations();

    List<ItemUI> allItemsUISelected = billDetails.map((details) {
      ItemEntity item = items.firstWhere(
        (element) => element.id == details.itemId,
      );

      ItemUnitsEntity itemUnitsEntity = itemsUnits
          .firstWhere((e) => e.id == details.billDetailsEntity.itemUnitID);
      int quantity = 0;
      quantity = operations
          .where((e) =>
              e.itemId == item.id && e.unitId == itemUnitsEntity.itemUnitId)
          .fold(0, (pre, el) => pre + (el.quantity * el.unitFactor));

      UnitDetailsUI unitDetailsUI = UnitDetailsUI(
        note: details.billDetailsEntity.itemNote,
        id: itemUnitsEntity.id ?? 0,
        name: details.unitName,
        quantityRemaining: quantity,
        intialCost: itemUnitsEntity.intialCost,
        backQuantity: (details.billDetailsEntity.quantity +
            details.billDetailsEntity.freeQty),
        unitFactor: details.billDetailsEntity.unitFactor,
        updatedQuantity: details.billDetailsEntity.quantity,
        totalPrice: details.billDetailsEntity.totalSellPrice,
        discount: double.parse((details.billDetailsEntity.totalSellPrice *
                details.billDetailsEntity.discountPre /
                100)
            .toStringAsFixed(2)),
        tax: double.parse(
            (details.billDetailsEntity.totalSellPrice * item.taxRate / 100)
                .toStringAsFixed(2)),
        discountPercent: details.billDetailsEntity.discountPre,
        taxPercent: details.billDetailsEntity.taxRate,
        selectedPrice: itemUnitsEntity.intialCost,
        firstPrice: itemUnitsEntity.retailPrice,
        secondPrice: itemUnitsEntity.spacialPrice,
        thirdPrice: itemUnitsEntity.wholeSaleprice,
        freeQuantity: details.billDetailsEntity.freeQty,
        preDiscount: itemUnitsEntity.itemDiscount,
      );

      return ItemUI(
        id: item.id ?? 0,
        name: details.itemName,
        image: item.itemImage,
        clearPrice: 0,
        unitDetails: [unitDetailsUI],
        selectedUnit: unitDetailsUI,
        allQuantityOfItem: (quantity +
                details.billDetailsEntity.quantity +
                details.billDetailsEntity.freeQty) *
            unitDetailsUI.unitFactor,
        indexOfUnitDetails: 0,
        groupId: 0,
        preTax: item.taxRate,
        hasTax: item.hasTax,
      );
    }).toList();
    List<ItemUI> itemWithListUnits = groupItemsByUnit(allItemsUISelected);

    return itemWithListUnits;
  }

  List<ItemUI> groupItemsByUnit(List<ItemUI> itemsWithOneUnit) {
    // Group units by item ID and calculate total price per item
    Map<int, ItemUI> groupedItems = {};

    for (var item in itemsWithOneUnit) {
      if (groupedItems.containsKey(item.id)) {
        groupedItems[item.id]!.unitDetails.addAll(item.unitDetails);
        groupedItems[item.id]!.clearPrice += item.unitDetails.fold(
          0,
          (sum, unit) => sum + unit.clearPrice,
        );
      } else {
        double clearPrice = item.unitDetails.fold(
          0,
          (sum, unit) => sum + unit.clearPrice,
        );

        groupedItems[item.id] = item.copyWith(
          clearPrice: clearPrice,
          unitDetails: List.from(item.unitDetails),
        );
      }
    }

    return groupedItems.values.toList();
  }

  // get all bill status

  BillsStatus get currentStatus {
    if (billStatus.value.isEmpty) return BillsStatus.empty;
    if (billStatus.value.isLoading) return BillsStatus.loading;
    if (billStatus.value.isSuccess) return BillsStatus.success;
    if (billStatus.value.isError) return BillsStatus.error;
    return BillsStatus.empty; // Default to empty
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

  String? getUnitName(int id) {
    return storeController.units.value
        .firstWhereOrNull((e) => e.id == id)
        ?.name;
  }

  //init new bill
  void updateBill() {
    final card = itemController.card.value!;
    newBill.value
      ..numberOfItems = card.items.length
      ..totalPrice = card.totalPrice
      ..tax = card.tax
      ..discount = card.discount;

    newBill.refresh();
  }

  //complete bill text filed

  void refreshBillTextEditingControllers() {
    final bill = newBill.value;
    if (bill.addedDiscount > 0) {
      billDiscountRate.text = bill.addedDiscount.toString();
      // billDiscountPercent.text =
      //     (bill.addedDiscount / bill.totalPrice * 100).toStringAsFixed(2);
      billDiscountPercent.text =
          rateToPercent(bill.addedDiscount, bill.totalPrice).toString();
    }

    if (bill.addedTax > 0) {
      billTaxRate.text = bill.addedTax.toString();

      billTaxPercent.text =
          rateToPercent(bill.addedTax, bill.netBill).toString();
    }
  }

  void updateTaxWhenAddedDiscountChange() {
    double? taxPercent =
        double.tryParse(billTaxPercent.text.replaceAll('%', ''));

    if (taxPercent != null && taxPercent > 0) {
      double netBill = newBill.value.totalPrice -
          newBill.value.discount -
          newBill.value.addedDiscount;

      billTaxRate.text = percentToRate(taxPercent, netBill).toString();
      newBill.value.addedTax = double.parse(billTaxRate.text);
    }
  }

  // add new bill
  Future<void> addNewBill() async {
    if (completeFormKey.currentState?.validate() ?? false) {
      try {
        await mainInfoController.getAllCurenciesInfo();
        if (newBill.value.customerNumber == 0) {
          CustomDialog.customSnackBar(
            'يرجى ادخال اسم العميل',
            SnackPosition.TOP,
            true,
          );
          return;
        }
        if (mainInfoController.storCurency == null) {
          return;
        }
        if (itemController.card.value?.items.isEmpty ?? false) {
          CustomDialog.customSnackBar(
            'لاتوجد بيانات ',
            SnackPosition.TOP,
            true,
          );
          return;
        }
        CustomDialog.loadingProgress();

        final selectedItems = itemController.card.value!.itemsWithOneUnit;
        final billDetails = createBillDetails(selectedItems);
        final newSellingBill =
            createNewSellingBill(billDetails, newBill.value.billId);

        final result = await getLastIdUsecase.call(newBill.value.type);
        result.fold(
          (failure) => errorMessage.value = failure.message,
          (lastId) async {
            newSellingBill.billNumber =
                newBill.value.isOld ? newBill.value.billNumber! : lastId + 1;

            final addBillResult = await addNewBillUsecase.call(newSellingBill);
            addBillResult.fold(
              (failure) => errorMessage.value = failure.message,
              (billId) async {
                //add account operation

                await addAccountOperations(
                  newSellingBill,
                  newBill.value.billId ?? billId ?? 0,
                  newBill.value.isOld,
                );

                if (newBill.value.billId != null) {
                  await deleteBillDetailsUsecase
                      .call(Params(newBill.value.billId));
                }
                final updatedBillDetails = billDetails
                    .map((detail) =>
                        detail.copyWith(billID: newBill.value.billId ?? billId))
                    .toList();

                final storeOperationList = createStoreOperations(
                  updatedBillDetails,
                );
                await storeController.saveStoreOperations(
                  storeOperationList,
                  newBill.value.billId,
                  OperationType(
                    id: newBill.value.billId ?? 0,
                    type: newSellingBill.billType,
                  ),
                );

                final addDetailsResult =
                    await addBillDetailsUsecase(updatedBillDetails);

                addDetailsResult.fold(
                  (failure) => errorMessage.value = failure.message,
                  (_) async {
                    final String title = itemController.billType.value == 8
                        ? billTypeForTitle.value == 0
                            ? 'فاتورة بيع'
                            : 'تعديل فاتورة بيع'
                        : billTypeForTitle.value == 0
                            ? 'فاتورة مرتجع'
                            : 'تعديل فاتورة مرتجع';

                    final isOld = newBill.value.isOld;
                    resetBillState();
                    await storeController.getAllItems();
                    await storeController.getStoreOperations();
                    await itemController.getItems();
                    await getAllBills();
                    Get.until(
                        (route) => Get.currentRoute == Routes.SELLINGPAGE);

                    CustomDialog.customSnackBar(
                      'تم $title بنجاح',
                      SnackPosition.TOP,
                      false,
                    );
                    await Future.delayed(
                      const Duration(
                        seconds: 2,
                      ),
                    );
                    if (Get.isDialogOpen != null && Get.isDialogOpen == true) {
                      Get.back();
                    }
                    if (isOld) {
                      Get.until(
                          (route) => Get.currentRoute == Routes.SELLINGPAGE);
                      Get.back();
                    }
                  },
                );
              },
            );
          },
        );
      } catch (e) {
        CustomDialog.customSnackBar(
          'حدث خطأ',
          SnackPosition.TOP,
          true,
        );
      }
    }
  }

  // create new bill
  BillEntity createNewSellingBill(
      List<BillDetailsEntity> billDetails, int? billId) {
    final hasSalesTax = billDetails.any((e) => e.taxRate > 0);
    final freeQuantityCost =
        billDetails.fold(0.0, (sum, item) => sum + item.freeQtyCost);
    final totalPrice =
        billDetails.fold(0.0, (sum, item) => sum + item.totalSellPrice);
    final averagePrice = billDetails.fold(
        0.0, (sum, item) => sum + (item.avrageCost * item.quantity));

    final branchId = mainInfoController.branch.value?.id ?? 0;
    final userId = user.user.value?.id ?? 0;
    final paymentMethodId =
        mainInfoController.selectedPaymentsMethod.value?.id ?? 0;
    final receiveAccount =
        mainInfoController.selectedPaymentsMethodDetails.value?.id;
    final storeId = storeController.userStoreInfo.value?.id ?? 0;
    final currencyId = mainInfoController.selecteCurency.value?.id ?? 0;
    final currencyValue = mainInfoController.selecteCurency.value?.value ?? 0;
    final storeCurrencyValue = mainInfoController.storCurency?.value;
    final boxAccountNumber = accountsController.allAccounts.value
        .firstWhere((e) => e.accCatagory == 1)
        .accNumber;
    double netBill = newBill.value.totalPrice -
        newBill.value.discount -
        newBill.value.tax -
        newBill.value.addedDiscount;

    return BillEntity(
      id: billId ?? -1,
      branchId: branchId,
      billNumber: 0,
      billType: newBill.value.type,
      billDate: newBill.value.billDate ?? DateTime.now(),
      refNumber: '0',
      customerNumber: newBill.value.customerNumber,
      currencyId: currencyId,
      currencyValue: currencyValue,
      fundNumber: receiveAccount ?? boxAccountNumber,
      paymentMethed: mainInfoController.paymentType.value ? 0 : paymentMethodId,
      storeId: storeId,
      storeCurValue: storeCurrencyValue ?? 0,
      billNote: billNoteTextEditingController.text,
      itemCalcMethod: 1,
      dueDate: newBill.value.dueDate ?? DateTime.now(),
      salesPerson: userId,
      hasVat: hasSalesTax,
      hasSalesTax: newBill.value.addedTax > 0,
      // salesTaxRate: (newBill.value.addedTax / netBill) * 100,
      salesTaxRate: rateToPercent(newBill.value.addedTax, netBill),
      numOfitems: billDetails.length,
      totalBill: totalPrice,
      itemsDiscount: newBill.value.discount,
      billDiscount: newBill.value.addedDiscount,
      netBill: netBill,
      totalVat: newBill.value.tax,
      billFinalCost: newBill.value.clearPrice,
      freeQtyCost: freeQuantityCost,
      totalAvragCost: averagePrice,
      paidAmount: 0,
    );
  }

  // new bill item details
  List<BillDetailsEntity> createBillDetails(List<dynamic> selectedItems) {
    return selectedItems.map((selectedItem) {
      final unitDetail = selectedItem.unitDetails.first;
      return BillDetailsEntity(
        billID: -1,
        itemId: selectedItem.id,
        itemUnitID: unitDetail.id,
        unitFactor: unitDetail.unitFactor,
        quantity: unitDetail.updatedQuantity,
        freeQty: unitDetail.freeQuantity,
        avrageCost: unitDetail.intialCost,
        sellPrice: unitDetail.selectedPrice,
        totalSellPrice: unitDetail.totalPrice,
        discountPre: unitDetail.discountPercent,
        netSellPrice: unitDetail.clearPrice - unitDetail.tax, // without tax
        expirDate: null,
        taxRate: unitDetail.taxPercent,
        itemNote: unitDetail.note,
        freeQtyCost: unitDetail.intialCost * unitDetail.freeQuantity,
      );
    }).toList();
  }

  // account operations for new bill
  Future<void> addAccountOperations(
      BillEntity newSellingBill, int billId, bool isOld) async {
    // final salesTaxValue =
    //     newSellingBill.salesTaxRate * newSellingBill.netBill / 100;
    final salesTaxValue = percentToRate(
      newSellingBill.salesTaxRate,
      newSellingBill.netBill,
    );
    // print('start');
    // print(newSellingBill.totalVat);
    // print(salesTaxValue);
    // print(newSellingBill.netBill);
    // print('end');
    final amount =
        (newSellingBill.netBill + newSellingBill.totalVat + salesTaxValue) *
            mainInfoController.storCurency!.value /
            mainInfoController.selecteCurency.value!.value;
//
    // print('amount: $amount');

    final salesCost =
        newSellingBill.totalAvragCost + newSellingBill.freeQtyCost;
    final earings = newSellingBill.totalBill -
        newSellingBill.itemsDiscount -
        newSellingBill.billDiscount;

    final totalDiscount =
        newSellingBill.billDiscount + newSellingBill.itemsDiscount;

    await accountsController.addListOfAccountOperation(
      storeCurency: mainInfoController.storCurency!,
      selectedCurency: mainInfoController.selecteCurency.value ??
          mainInfoController.storCurency!,
      debitAccount: mainInfoController.paymentType.value
          ? newBill.value.customerNumber
          : mainInfoController.selectedPaymentsMethodDetails.value?.id ??
              accountsController.allAccounts.value
                  .firstWhere(
                    (e) => e.accCatagory == 1,
                  )
                  .accNumber,
      amount: amount,
      type: newBill.value.type,
      salesCost: salesCost,
      freQTYConst: newSellingBill.freeQtyCost,
      totalDiscount: totalDiscount,
      totalAverageCost: newSellingBill.totalAvragCost,
      earnings: earings,
      totalVat: newSellingBill.totalVat,
      salesTaxValue: salesTaxValue,
      billId: billId,
      isOld: isOld,
    );
  }

  // store operation for new bill

  List<StoreOperationEntity> createStoreOperations(
      List<BillDetailsEntity> updatedBillDetails) {
    final storeId = storeController.userStoreInfo.value?.id ?? 0;
    final branchId = mainInfoController.branch.value?.id ?? 0;

    return updatedBillDetails.map((element) {
      final unitId = storeController.allItemsUnits.value
          .firstWhere((e) => e.id == element.itemUnitID)
          .itemUnitId;
      return StoreOperationEntity(
        operationId: element.billID,
        operationType: newBill.value.type,
        operationDate: DateTime.now(),
        operationIn: newBill.value.type == 8 ? false : true,
        storeId: storeId,
        itemId: element.itemId,
        unitId: unitId,
        quantity: newBill.value.type == 8
            ? -(element.quantity + element.freeQty)
            : (element.quantity + element.freeQty),
        averageCost: element.avrageCost,
        unitCost: element.netSellPrice / element.quantity,
        totalCost: element.netSellPrice + element.freeQtyCost,
        unitFactor: element.unitFactor,
        qtyConvert: newBill.value.type == 8
            ? -element.unitFactor * (element.quantity + element.freeQty)
            : element.unitFactor * (element.quantity + element.freeQty),
        expirDate: '',
        addBranch: branchId,
      );
    }).toList();
  }

  // reset when bill added success

  void resetBillState() {
    itemController.card.value?.items.clear();
    newBill.value = BillUI(
      type: newBill.value.type,
    );
    billTypeForTitle.value = 0;
    billDiscountPercent.clear();
    billDiscountRate.clear();
    billTaxPercent.clear();
    billTaxRate.clear();
    billNoteTextEditingController.clear();
    newBill.refresh();
    itemController.card.refresh();
  }

  @override
  void dispose() {
    super.dispose();
    billDiscountPercent.dispose();
    billDiscountRate.dispose();
    billTaxPercent.dispose();
    billTaxRate.dispose();
    billNoteTextEditingController.dispose();
  }
}

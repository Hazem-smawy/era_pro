/*


make an entity for this in dart {
    "userId": 2,
    "fixedBillDate": true,
    "editSalePrice": false,
    "showQr": false,
    "addNewCustomers": true,
    "showSalesManInBill": true,
    "showStoreInBill": true,
    "saleInNegative": false,
    "sumItemsInBill": false,
    "editTax": false,
    "saleBillNumInReSaleBill": false,
    "useFreeQty": true,
    "useDiscountPerItem": true,
    "useSarfSand": true,
    "useGabthSand": true,
    "useDiscountPerBill": true,
    "useSalesTax": false,
    "useBillStatement": false,
    "checkAccLimit": false,
    "useExpireDate": false,
    "useValueAddTax": true,
    "billDiscountCalc": false
}

*/
import 'package:equatable/equatable.dart';

class SettingEntity extends Equatable {
  final int userId;
  final bool fixedBillDate;
  final bool editSalePrice;
  final bool showQr;
  final bool addNewCustomers;
  final bool showSalesManInBill;
  final bool showStoreInBill;
  final bool saleInNegative;
  final bool sumItemsInBill;
  final bool editTax;
  final bool saleBillNumInReSaleBill;
  final bool useFreeQty;
  final bool useDiscountPerItem;
  final bool useSarfSand;
  final bool useGabthSand;
  final bool useDiscountPerBill;
  final bool useSalesTax;
  final bool useBillStatement;
  final bool checkAccLimit;
  final bool useExpireDate;
  final bool useValueAddTax;
  final bool billDiscountCalc;
  final int salesTaxRate;

  const SettingEntity({
    required this.userId,
    required this.fixedBillDate,
    required this.editSalePrice,
    required this.showQr,
    required this.addNewCustomers,
    required this.showSalesManInBill,
    required this.showStoreInBill,
    required this.saleInNegative,
    required this.sumItemsInBill,
    required this.editTax,
    required this.saleBillNumInReSaleBill,
    required this.useFreeQty,
    required this.useDiscountPerItem,
    required this.useSarfSand,
    required this.useGabthSand,
    required this.useDiscountPerBill,
    required this.useSalesTax,
    required this.useBillStatement,
    required this.checkAccLimit,
    required this.useExpireDate,
    required this.useValueAddTax,
    required this.billDiscountCalc,
    required this.salesTaxRate,
  });

  @override
  List<Object?> get props => [
        userId,
        fixedBillDate,
        editSalePrice,
        showQr,
        addNewCustomers,
        showSalesManInBill,
        showStoreInBill,
        saleInNegative,
        sumItemsInBill,
        editTax,
        saleBillNumInReSaleBill,
        useFreeQty,
        useDiscountPerItem,
        useSarfSand,
        useGabthSand,
        useDiscountPerBill,
        useSalesTax,
        useBillStatement,
        checkAccLimit,
        useExpireDate,
        useValueAddTax,
        billDiscountCalc,
        salesTaxRate,
      ];
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingModel _$SettingModelFromJson(Map<String, dynamic> json) => SettingModel(
      userId: (json['userId'] as num).toInt(),
      fixedBillDate: json['fixedBillDate'] as bool,
      editSalePrice: json['editSalePrice'] as bool,
      showQr: json['showQr'] as bool,
      addNewCustomers: json['addNewCustomers'] as bool,
      showSalesManInBill: json['showSalesManInBill'] as bool,
      showStoreInBill: json['showStoreInBill'] as bool,
      saleInNegative: json['saleInNegative'] as bool,
      sumItemsInBill: json['sumItemsInBill'] as bool,
      editTax: json['editTax'] as bool,
      saleBillNumInReSaleBill: json['saleBillNumInReSaleBill'] as bool,
      useFreeQty: json['useFreeQty'] as bool,
      useDiscountPerItem: json['useDiscountPerItem'] as bool,
      useSarfSand: json['useSarfSand'] as bool,
      useGabthSand: json['useGabthSand'] as bool,
      useDiscountPerBill: json['useDiscountPerBill'] as bool,
      useSalesTax: json['useSalesTax'] as bool,
      useBillStatement: json['useBillStatement'] as bool,
      checkAccLimit: json['checkAccLimit'] as bool,
      useExpireDate: json['useExpireDate'] as bool,
      useValueAddTax: json['useValueAddTax'] as bool,
      billDiscountCalc: json['billDiscountCalc'] as bool,
      salesTaxRate: (json['salesTaxRate'] as num).toInt(),
    );

Map<String, dynamic> _$SettingModelToJson(SettingModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fixedBillDate': instance.fixedBillDate,
      'editSalePrice': instance.editSalePrice,
      'showQr': instance.showQr,
      'addNewCustomers': instance.addNewCustomers,
      'showSalesManInBill': instance.showSalesManInBill,
      'showStoreInBill': instance.showStoreInBill,
      'saleInNegative': instance.saleInNegative,
      'sumItemsInBill': instance.sumItemsInBill,
      'editTax': instance.editTax,
      'saleBillNumInReSaleBill': instance.saleBillNumInReSaleBill,
      'useFreeQty': instance.useFreeQty,
      'useDiscountPerItem': instance.useDiscountPerItem,
      'useSarfSand': instance.useSarfSand,
      'useGabthSand': instance.useGabthSand,
      'useDiscountPerBill': instance.useDiscountPerBill,
      'useSalesTax': instance.useSalesTax,
      'useBillStatement': instance.useBillStatement,
      'checkAccLimit': instance.checkAccLimit,
      'useExpireDate': instance.useExpireDate,
      'useValueAddTax': instance.useValueAddTax,
      'billDiscountCalc': instance.billDiscountCalc,
      'salesTaxRate': instance.salesTaxRate,
    };

import 'package:drift/drift.dart';
import 'package:era_pro/src/core/services/db/db.dart';
import 'package:era_pro/src/features/setting/domain/entities/entities.dart';
import 'package:json_annotation/json_annotation.dart';
part 'setting_model.g.dart';

@JsonSerializable()
class SettingModel extends SettingEntity {
  const SettingModel({
    required super.userId,
    required super.fixedBillDate,
    required super.editSalePrice,
    required super.showQr,
    required super.addNewCustomers,
    required super.showSalesManInBill,
    required super.showStoreInBill,
    required super.saleInNegative,
    required super.sumItemsInBill,
    required super.editTax,
    required super.saleBillNumInReSaleBill,
    required super.useFreeQty,
    required super.useDiscountPerItem,
    required super.useSarfSand,
    required super.useGabthSand,
    required super.useDiscountPerBill,
    required super.useSalesTax,
    required super.useBillStatement,
    required super.checkAccLimit,
    required super.useExpireDate,
    required super.useValueAddTax,
    required super.billDiscountCalc,
    required super.salesTaxRate,
  });
  factory SettingModel.fromJson(Map<String, dynamic> json) =>
      _$SettingModelFromJson(json);

  Map<String, dynamic> toJson() => _$SettingModelToJson(this);

  SettingsTableCompanion toCompanion() {
    return SettingsTableCompanion(
      userId: Value(userId),
      fixedBillDate: Value(true),
      editSalePrice: Value(false),
      showQr: Value(false),
      addNewCustomers: Value(true),
      showSalesManInBill: Value(true),
      showStoreInBill: Value(true),
      saleInNegative: Value(false),
      sumItemsInBill: Value(false),
      editTax: Value(false),
      saleBillNumInReSaleBill: Value(false),
      useFreeQty: Value(true),
      useDiscountPerItem: Value(true),
      useSarfSand: Value(true),
      useGabthSand: Value(true),
      useDiscountPerBill: Value(true),
      useSalesTax: Value(false),
      useBillStatement: Value(false),
      checkAccLimit: Value(false),
      useExpireDate: Value(false),
      useValueAddTax: Value(true),
      billDiscountCalc: Value(false),
      salesTaxRate: Value(salesTaxRate),
    );
  }
}

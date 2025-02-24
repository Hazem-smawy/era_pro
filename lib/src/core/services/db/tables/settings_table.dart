import 'package:drift/drift.dart';
import 'package:era_pro/src/features/setting/data/models/setting_model.dart';

/*
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
    */
// Define the table
@UseRowClass(SettingModel)
class SettingsTable extends Table {
  IntColumn get userId => integer().autoIncrement()();
  BoolColumn get fixedBillDate =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get editSalePrice => boolean().withDefault(const Constant(true))();
  BoolColumn get showQr => boolean().withDefault(const Constant(true))();
  BoolColumn get addNewCustomers =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get showSalesManInBill =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get showStoreInBill =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get saleInNegative =>
      boolean().withDefault(const Constant(true))();
  BoolColumn get sumItemsInBill =>
      boolean().withDefault(const Constant(true))();
  BoolColumn get editTax => boolean().withDefault(const Constant(true))();
  BoolColumn get saleBillNumInReSaleBill =>
      boolean().withDefault(const Constant(true))();
  BoolColumn get useFreeQty => boolean().withDefault(const Constant(false))();
  BoolColumn get useDiscountPerItem =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get useSarfSand => boolean().withDefault(const Constant(false))();
  BoolColumn get useGabthSand => boolean().withDefault(const Constant(false))();
  BoolColumn get useDiscountPerBill =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get useSalesTax => boolean().withDefault(const Constant(true))();
  BoolColumn get useBillStatement =>
      boolean().withDefault(const Constant(true))();
  BoolColumn get checkAccLimit => boolean().withDefault(const Constant(true))();
  BoolColumn get useExpireDate => boolean().withDefault(const Constant(true))();
  BoolColumn get useValueAddTax =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get billDiscountCalc =>
      boolean().withDefault(const Constant(true))();
  IntColumn get salesTaxRate => integer()();
}

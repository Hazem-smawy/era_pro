import 'package:tailor/src/features/setting/data/models/setting_model.dart';

import '../../../../core/services/db/db.dart';

abstract class SettingLocalDatasource {
  Future<int> saveSetting(SettingModel item);

  Future<SettingModel?> getSetting(int id);
}

class SettingLocalDatasourceImp implements SettingLocalDatasource {
  @override
  Future<SettingModel?> getSetting(int userId) async {
    AppDatabase db = AppDatabase.instance();

    // Fetch settings for the specific user
    final query = db.select(db.settingsTable)
      ..where((tbl) => tbl.userId.equals(userId));

    // Execute the query and get the first result (if any)
    final setting = await query.getSingleOrNull();

    if (setting == null) return null;
    return SettingModel(
      userId: setting.userId,
      fixedBillDate: setting.fixedBillDate,
      editSalePrice: setting.editSalePrice,
      showQr: setting.showQr,
      addNewCustomers: setting.addNewCustomers,
      showSalesManInBill: setting.showSalesManInBill,
      showStoreInBill: setting.showStoreInBill,
      saleInNegative: setting.saleInNegative,
      sumItemsInBill: setting.sumItemsInBill,
      editTax: setting.editTax,
      saleBillNumInReSaleBill: setting.saleBillNumInReSaleBill,
      useFreeQty: setting.useFreeQty,
      useDiscountPerItem: setting.useDiscountPerItem,
      useSarfSand: setting.useSarfSand,
      useGabthSand: setting.useGabthSand,
      useDiscountPerBill: setting.useDiscountPerBill,
      useSalesTax: setting.useSalesTax,
      useBillStatement: setting.useBillStatement,
      checkAccLimit: setting.checkAccLimit,
      useExpireDate: setting.useExpireDate,
      useValueAddTax: setting.useValueAddTax,
      billDiscountCalc: setting.billDiscountCalc,
      salesTaxRate: setting.salesTaxRate,
    );
  }

  @override
  Future<int> saveSetting(SettingModel item) async {
    AppDatabase db = AppDatabase.instance();
    var id = await db.saveSingle(db.settingsTable, item.toCompanion());
    return id;
  }
}

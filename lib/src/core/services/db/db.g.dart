// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $SettingsTableTable extends SettingsTable
    with TableInfo<$SettingsTableTable, SettingModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _fixedBillDateMeta =
      const VerificationMeta('fixedBillDate');
  @override
  late final GeneratedColumn<bool> fixedBillDate = GeneratedColumn<bool>(
      'fixed_bill_date', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("fixed_bill_date" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _editSalePriceMeta =
      const VerificationMeta('editSalePrice');
  @override
  late final GeneratedColumn<bool> editSalePrice = GeneratedColumn<bool>(
      'edit_sale_price', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("edit_sale_price" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _showQrMeta = const VerificationMeta('showQr');
  @override
  late final GeneratedColumn<bool> showQr = GeneratedColumn<bool>(
      'show_qr', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("show_qr" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _addNewCustomersMeta =
      const VerificationMeta('addNewCustomers');
  @override
  late final GeneratedColumn<bool> addNewCustomers = GeneratedColumn<bool>(
      'add_new_customers', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("add_new_customers" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _showSalesManInBillMeta =
      const VerificationMeta('showSalesManInBill');
  @override
  late final GeneratedColumn<bool> showSalesManInBill = GeneratedColumn<bool>(
      'show_sales_man_in_bill', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("show_sales_man_in_bill" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _showStoreInBillMeta =
      const VerificationMeta('showStoreInBill');
  @override
  late final GeneratedColumn<bool> showStoreInBill = GeneratedColumn<bool>(
      'show_store_in_bill', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("show_store_in_bill" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _saleInNegativeMeta =
      const VerificationMeta('saleInNegative');
  @override
  late final GeneratedColumn<bool> saleInNegative = GeneratedColumn<bool>(
      'sale_in_negative', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("sale_in_negative" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _sumItemsInBillMeta =
      const VerificationMeta('sumItemsInBill');
  @override
  late final GeneratedColumn<bool> sumItemsInBill = GeneratedColumn<bool>(
      'sum_items_in_bill', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("sum_items_in_bill" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _editTaxMeta =
      const VerificationMeta('editTax');
  @override
  late final GeneratedColumn<bool> editTax = GeneratedColumn<bool>(
      'edit_tax', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("edit_tax" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _saleBillNumInReSaleBillMeta =
      const VerificationMeta('saleBillNumInReSaleBill');
  @override
  late final GeneratedColumn<bool> saleBillNumInReSaleBill =
      GeneratedColumn<bool>('sale_bill_num_in_re_sale_bill', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("sale_bill_num_in_re_sale_bill" IN (0, 1))'),
          defaultValue: const Constant(true));
  static const VerificationMeta _useFreeQtyMeta =
      const VerificationMeta('useFreeQty');
  @override
  late final GeneratedColumn<bool> useFreeQty = GeneratedColumn<bool>(
      'use_free_qty', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("use_free_qty" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _useDiscountPerItemMeta =
      const VerificationMeta('useDiscountPerItem');
  @override
  late final GeneratedColumn<bool> useDiscountPerItem = GeneratedColumn<bool>(
      'use_discount_per_item', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("use_discount_per_item" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _useSarfSandMeta =
      const VerificationMeta('useSarfSand');
  @override
  late final GeneratedColumn<bool> useSarfSand = GeneratedColumn<bool>(
      'use_sarf_sand', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("use_sarf_sand" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _useGabthSandMeta =
      const VerificationMeta('useGabthSand');
  @override
  late final GeneratedColumn<bool> useGabthSand = GeneratedColumn<bool>(
      'use_gabth_sand', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("use_gabth_sand" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _useDiscountPerBillMeta =
      const VerificationMeta('useDiscountPerBill');
  @override
  late final GeneratedColumn<bool> useDiscountPerBill = GeneratedColumn<bool>(
      'use_discount_per_bill', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("use_discount_per_bill" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _useSalesTaxMeta =
      const VerificationMeta('useSalesTax');
  @override
  late final GeneratedColumn<bool> useSalesTax = GeneratedColumn<bool>(
      'use_sales_tax', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("use_sales_tax" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _useBillStatementMeta =
      const VerificationMeta('useBillStatement');
  @override
  late final GeneratedColumn<bool> useBillStatement = GeneratedColumn<bool>(
      'use_bill_statement', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("use_bill_statement" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _checkAccLimitMeta =
      const VerificationMeta('checkAccLimit');
  @override
  late final GeneratedColumn<bool> checkAccLimit = GeneratedColumn<bool>(
      'check_acc_limit', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("check_acc_limit" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _useExpireDateMeta =
      const VerificationMeta('useExpireDate');
  @override
  late final GeneratedColumn<bool> useExpireDate = GeneratedColumn<bool>(
      'use_expire_date', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("use_expire_date" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _useValueAddTaxMeta =
      const VerificationMeta('useValueAddTax');
  @override
  late final GeneratedColumn<bool> useValueAddTax = GeneratedColumn<bool>(
      'use_value_add_tax', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("use_value_add_tax" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _billDiscountCalcMeta =
      const VerificationMeta('billDiscountCalc');
  @override
  late final GeneratedColumn<bool> billDiscountCalc = GeneratedColumn<bool>(
      'bill_discount_calc', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("bill_discount_calc" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _salesTaxRateMeta =
      const VerificationMeta('salesTaxRate');
  @override
  late final GeneratedColumn<int> salesTaxRate = GeneratedColumn<int>(
      'sales_tax_rate', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
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
        salesTaxRate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings_table';
  @override
  VerificationContext validateIntegrity(Insertable<SettingModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('fixed_bill_date')) {
      context.handle(
          _fixedBillDateMeta,
          fixedBillDate.isAcceptableOrUnknown(
              data['fixed_bill_date']!, _fixedBillDateMeta));
    }
    if (data.containsKey('edit_sale_price')) {
      context.handle(
          _editSalePriceMeta,
          editSalePrice.isAcceptableOrUnknown(
              data['edit_sale_price']!, _editSalePriceMeta));
    }
    if (data.containsKey('show_qr')) {
      context.handle(_showQrMeta,
          showQr.isAcceptableOrUnknown(data['show_qr']!, _showQrMeta));
    }
    if (data.containsKey('add_new_customers')) {
      context.handle(
          _addNewCustomersMeta,
          addNewCustomers.isAcceptableOrUnknown(
              data['add_new_customers']!, _addNewCustomersMeta));
    }
    if (data.containsKey('show_sales_man_in_bill')) {
      context.handle(
          _showSalesManInBillMeta,
          showSalesManInBill.isAcceptableOrUnknown(
              data['show_sales_man_in_bill']!, _showSalesManInBillMeta));
    }
    if (data.containsKey('show_store_in_bill')) {
      context.handle(
          _showStoreInBillMeta,
          showStoreInBill.isAcceptableOrUnknown(
              data['show_store_in_bill']!, _showStoreInBillMeta));
    }
    if (data.containsKey('sale_in_negative')) {
      context.handle(
          _saleInNegativeMeta,
          saleInNegative.isAcceptableOrUnknown(
              data['sale_in_negative']!, _saleInNegativeMeta));
    }
    if (data.containsKey('sum_items_in_bill')) {
      context.handle(
          _sumItemsInBillMeta,
          sumItemsInBill.isAcceptableOrUnknown(
              data['sum_items_in_bill']!, _sumItemsInBillMeta));
    }
    if (data.containsKey('edit_tax')) {
      context.handle(_editTaxMeta,
          editTax.isAcceptableOrUnknown(data['edit_tax']!, _editTaxMeta));
    }
    if (data.containsKey('sale_bill_num_in_re_sale_bill')) {
      context.handle(
          _saleBillNumInReSaleBillMeta,
          saleBillNumInReSaleBill.isAcceptableOrUnknown(
              data['sale_bill_num_in_re_sale_bill']!,
              _saleBillNumInReSaleBillMeta));
    }
    if (data.containsKey('use_free_qty')) {
      context.handle(
          _useFreeQtyMeta,
          useFreeQty.isAcceptableOrUnknown(
              data['use_free_qty']!, _useFreeQtyMeta));
    }
    if (data.containsKey('use_discount_per_item')) {
      context.handle(
          _useDiscountPerItemMeta,
          useDiscountPerItem.isAcceptableOrUnknown(
              data['use_discount_per_item']!, _useDiscountPerItemMeta));
    }
    if (data.containsKey('use_sarf_sand')) {
      context.handle(
          _useSarfSandMeta,
          useSarfSand.isAcceptableOrUnknown(
              data['use_sarf_sand']!, _useSarfSandMeta));
    }
    if (data.containsKey('use_gabth_sand')) {
      context.handle(
          _useGabthSandMeta,
          useGabthSand.isAcceptableOrUnknown(
              data['use_gabth_sand']!, _useGabthSandMeta));
    }
    if (data.containsKey('use_discount_per_bill')) {
      context.handle(
          _useDiscountPerBillMeta,
          useDiscountPerBill.isAcceptableOrUnknown(
              data['use_discount_per_bill']!, _useDiscountPerBillMeta));
    }
    if (data.containsKey('use_sales_tax')) {
      context.handle(
          _useSalesTaxMeta,
          useSalesTax.isAcceptableOrUnknown(
              data['use_sales_tax']!, _useSalesTaxMeta));
    }
    if (data.containsKey('use_bill_statement')) {
      context.handle(
          _useBillStatementMeta,
          useBillStatement.isAcceptableOrUnknown(
              data['use_bill_statement']!, _useBillStatementMeta));
    }
    if (data.containsKey('check_acc_limit')) {
      context.handle(
          _checkAccLimitMeta,
          checkAccLimit.isAcceptableOrUnknown(
              data['check_acc_limit']!, _checkAccLimitMeta));
    }
    if (data.containsKey('use_expire_date')) {
      context.handle(
          _useExpireDateMeta,
          useExpireDate.isAcceptableOrUnknown(
              data['use_expire_date']!, _useExpireDateMeta));
    }
    if (data.containsKey('use_value_add_tax')) {
      context.handle(
          _useValueAddTaxMeta,
          useValueAddTax.isAcceptableOrUnknown(
              data['use_value_add_tax']!, _useValueAddTaxMeta));
    }
    if (data.containsKey('bill_discount_calc')) {
      context.handle(
          _billDiscountCalcMeta,
          billDiscountCalc.isAcceptableOrUnknown(
              data['bill_discount_calc']!, _billDiscountCalcMeta));
    }
    if (data.containsKey('sales_tax_rate')) {
      context.handle(
          _salesTaxRateMeta,
          salesTaxRate.isAcceptableOrUnknown(
              data['sales_tax_rate']!, _salesTaxRateMeta));
    } else if (isInserting) {
      context.missing(_salesTaxRateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  SettingModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingModel(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      fixedBillDate: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}fixed_bill_date'])!,
      editSalePrice: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}edit_sale_price'])!,
      showQr: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}show_qr'])!,
      addNewCustomers: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}add_new_customers'])!,
      showSalesManInBill: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}show_sales_man_in_bill'])!,
      showStoreInBill: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}show_store_in_bill'])!,
      saleInNegative: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}sale_in_negative'])!,
      sumItemsInBill: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}sum_items_in_bill'])!,
      editTax: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}edit_tax'])!,
      saleBillNumInReSaleBill: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}sale_bill_num_in_re_sale_bill'])!,
      useFreeQty: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}use_free_qty'])!,
      useDiscountPerItem: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}use_discount_per_item'])!,
      useSarfSand: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}use_sarf_sand'])!,
      useGabthSand: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}use_gabth_sand'])!,
      useDiscountPerBill: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}use_discount_per_bill'])!,
      useSalesTax: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}use_sales_tax'])!,
      useBillStatement: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}use_bill_statement'])!,
      checkAccLimit: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}check_acc_limit'])!,
      useExpireDate: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}use_expire_date'])!,
      useValueAddTax: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}use_value_add_tax'])!,
      billDiscountCalc: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}bill_discount_calc'])!,
      salesTaxRate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sales_tax_rate'])!,
    );
  }

  @override
  $SettingsTableTable createAlias(String alias) {
    return $SettingsTableTable(attachedDatabase, alias);
  }
}

class SettingsTableCompanion extends UpdateCompanion<SettingModel> {
  final Value<int> userId;
  final Value<bool> fixedBillDate;
  final Value<bool> editSalePrice;
  final Value<bool> showQr;
  final Value<bool> addNewCustomers;
  final Value<bool> showSalesManInBill;
  final Value<bool> showStoreInBill;
  final Value<bool> saleInNegative;
  final Value<bool> sumItemsInBill;
  final Value<bool> editTax;
  final Value<bool> saleBillNumInReSaleBill;
  final Value<bool> useFreeQty;
  final Value<bool> useDiscountPerItem;
  final Value<bool> useSarfSand;
  final Value<bool> useGabthSand;
  final Value<bool> useDiscountPerBill;
  final Value<bool> useSalesTax;
  final Value<bool> useBillStatement;
  final Value<bool> checkAccLimit;
  final Value<bool> useExpireDate;
  final Value<bool> useValueAddTax;
  final Value<bool> billDiscountCalc;
  final Value<int> salesTaxRate;
  const SettingsTableCompanion({
    this.userId = const Value.absent(),
    this.fixedBillDate = const Value.absent(),
    this.editSalePrice = const Value.absent(),
    this.showQr = const Value.absent(),
    this.addNewCustomers = const Value.absent(),
    this.showSalesManInBill = const Value.absent(),
    this.showStoreInBill = const Value.absent(),
    this.saleInNegative = const Value.absent(),
    this.sumItemsInBill = const Value.absent(),
    this.editTax = const Value.absent(),
    this.saleBillNumInReSaleBill = const Value.absent(),
    this.useFreeQty = const Value.absent(),
    this.useDiscountPerItem = const Value.absent(),
    this.useSarfSand = const Value.absent(),
    this.useGabthSand = const Value.absent(),
    this.useDiscountPerBill = const Value.absent(),
    this.useSalesTax = const Value.absent(),
    this.useBillStatement = const Value.absent(),
    this.checkAccLimit = const Value.absent(),
    this.useExpireDate = const Value.absent(),
    this.useValueAddTax = const Value.absent(),
    this.billDiscountCalc = const Value.absent(),
    this.salesTaxRate = const Value.absent(),
  });
  SettingsTableCompanion.insert({
    this.userId = const Value.absent(),
    this.fixedBillDate = const Value.absent(),
    this.editSalePrice = const Value.absent(),
    this.showQr = const Value.absent(),
    this.addNewCustomers = const Value.absent(),
    this.showSalesManInBill = const Value.absent(),
    this.showStoreInBill = const Value.absent(),
    this.saleInNegative = const Value.absent(),
    this.sumItemsInBill = const Value.absent(),
    this.editTax = const Value.absent(),
    this.saleBillNumInReSaleBill = const Value.absent(),
    this.useFreeQty = const Value.absent(),
    this.useDiscountPerItem = const Value.absent(),
    this.useSarfSand = const Value.absent(),
    this.useGabthSand = const Value.absent(),
    this.useDiscountPerBill = const Value.absent(),
    this.useSalesTax = const Value.absent(),
    this.useBillStatement = const Value.absent(),
    this.checkAccLimit = const Value.absent(),
    this.useExpireDate = const Value.absent(),
    this.useValueAddTax = const Value.absent(),
    this.billDiscountCalc = const Value.absent(),
    required int salesTaxRate,
  }) : salesTaxRate = Value(salesTaxRate);
  static Insertable<SettingModel> custom({
    Expression<int>? userId,
    Expression<bool>? fixedBillDate,
    Expression<bool>? editSalePrice,
    Expression<bool>? showQr,
    Expression<bool>? addNewCustomers,
    Expression<bool>? showSalesManInBill,
    Expression<bool>? showStoreInBill,
    Expression<bool>? saleInNegative,
    Expression<bool>? sumItemsInBill,
    Expression<bool>? editTax,
    Expression<bool>? saleBillNumInReSaleBill,
    Expression<bool>? useFreeQty,
    Expression<bool>? useDiscountPerItem,
    Expression<bool>? useSarfSand,
    Expression<bool>? useGabthSand,
    Expression<bool>? useDiscountPerBill,
    Expression<bool>? useSalesTax,
    Expression<bool>? useBillStatement,
    Expression<bool>? checkAccLimit,
    Expression<bool>? useExpireDate,
    Expression<bool>? useValueAddTax,
    Expression<bool>? billDiscountCalc,
    Expression<int>? salesTaxRate,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (fixedBillDate != null) 'fixed_bill_date': fixedBillDate,
      if (editSalePrice != null) 'edit_sale_price': editSalePrice,
      if (showQr != null) 'show_qr': showQr,
      if (addNewCustomers != null) 'add_new_customers': addNewCustomers,
      if (showSalesManInBill != null)
        'show_sales_man_in_bill': showSalesManInBill,
      if (showStoreInBill != null) 'show_store_in_bill': showStoreInBill,
      if (saleInNegative != null) 'sale_in_negative': saleInNegative,
      if (sumItemsInBill != null) 'sum_items_in_bill': sumItemsInBill,
      if (editTax != null) 'edit_tax': editTax,
      if (saleBillNumInReSaleBill != null)
        'sale_bill_num_in_re_sale_bill': saleBillNumInReSaleBill,
      if (useFreeQty != null) 'use_free_qty': useFreeQty,
      if (useDiscountPerItem != null)
        'use_discount_per_item': useDiscountPerItem,
      if (useSarfSand != null) 'use_sarf_sand': useSarfSand,
      if (useGabthSand != null) 'use_gabth_sand': useGabthSand,
      if (useDiscountPerBill != null)
        'use_discount_per_bill': useDiscountPerBill,
      if (useSalesTax != null) 'use_sales_tax': useSalesTax,
      if (useBillStatement != null) 'use_bill_statement': useBillStatement,
      if (checkAccLimit != null) 'check_acc_limit': checkAccLimit,
      if (useExpireDate != null) 'use_expire_date': useExpireDate,
      if (useValueAddTax != null) 'use_value_add_tax': useValueAddTax,
      if (billDiscountCalc != null) 'bill_discount_calc': billDiscountCalc,
      if (salesTaxRate != null) 'sales_tax_rate': salesTaxRate,
    });
  }

  SettingsTableCompanion copyWith(
      {Value<int>? userId,
      Value<bool>? fixedBillDate,
      Value<bool>? editSalePrice,
      Value<bool>? showQr,
      Value<bool>? addNewCustomers,
      Value<bool>? showSalesManInBill,
      Value<bool>? showStoreInBill,
      Value<bool>? saleInNegative,
      Value<bool>? sumItemsInBill,
      Value<bool>? editTax,
      Value<bool>? saleBillNumInReSaleBill,
      Value<bool>? useFreeQty,
      Value<bool>? useDiscountPerItem,
      Value<bool>? useSarfSand,
      Value<bool>? useGabthSand,
      Value<bool>? useDiscountPerBill,
      Value<bool>? useSalesTax,
      Value<bool>? useBillStatement,
      Value<bool>? checkAccLimit,
      Value<bool>? useExpireDate,
      Value<bool>? useValueAddTax,
      Value<bool>? billDiscountCalc,
      Value<int>? salesTaxRate}) {
    return SettingsTableCompanion(
      userId: userId ?? this.userId,
      fixedBillDate: fixedBillDate ?? this.fixedBillDate,
      editSalePrice: editSalePrice ?? this.editSalePrice,
      showQr: showQr ?? this.showQr,
      addNewCustomers: addNewCustomers ?? this.addNewCustomers,
      showSalesManInBill: showSalesManInBill ?? this.showSalesManInBill,
      showStoreInBill: showStoreInBill ?? this.showStoreInBill,
      saleInNegative: saleInNegative ?? this.saleInNegative,
      sumItemsInBill: sumItemsInBill ?? this.sumItemsInBill,
      editTax: editTax ?? this.editTax,
      saleBillNumInReSaleBill:
          saleBillNumInReSaleBill ?? this.saleBillNumInReSaleBill,
      useFreeQty: useFreeQty ?? this.useFreeQty,
      useDiscountPerItem: useDiscountPerItem ?? this.useDiscountPerItem,
      useSarfSand: useSarfSand ?? this.useSarfSand,
      useGabthSand: useGabthSand ?? this.useGabthSand,
      useDiscountPerBill: useDiscountPerBill ?? this.useDiscountPerBill,
      useSalesTax: useSalesTax ?? this.useSalesTax,
      useBillStatement: useBillStatement ?? this.useBillStatement,
      checkAccLimit: checkAccLimit ?? this.checkAccLimit,
      useExpireDate: useExpireDate ?? this.useExpireDate,
      useValueAddTax: useValueAddTax ?? this.useValueAddTax,
      billDiscountCalc: billDiscountCalc ?? this.billDiscountCalc,
      salesTaxRate: salesTaxRate ?? this.salesTaxRate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (fixedBillDate.present) {
      map['fixed_bill_date'] = Variable<bool>(fixedBillDate.value);
    }
    if (editSalePrice.present) {
      map['edit_sale_price'] = Variable<bool>(editSalePrice.value);
    }
    if (showQr.present) {
      map['show_qr'] = Variable<bool>(showQr.value);
    }
    if (addNewCustomers.present) {
      map['add_new_customers'] = Variable<bool>(addNewCustomers.value);
    }
    if (showSalesManInBill.present) {
      map['show_sales_man_in_bill'] = Variable<bool>(showSalesManInBill.value);
    }
    if (showStoreInBill.present) {
      map['show_store_in_bill'] = Variable<bool>(showStoreInBill.value);
    }
    if (saleInNegative.present) {
      map['sale_in_negative'] = Variable<bool>(saleInNegative.value);
    }
    if (sumItemsInBill.present) {
      map['sum_items_in_bill'] = Variable<bool>(sumItemsInBill.value);
    }
    if (editTax.present) {
      map['edit_tax'] = Variable<bool>(editTax.value);
    }
    if (saleBillNumInReSaleBill.present) {
      map['sale_bill_num_in_re_sale_bill'] =
          Variable<bool>(saleBillNumInReSaleBill.value);
    }
    if (useFreeQty.present) {
      map['use_free_qty'] = Variable<bool>(useFreeQty.value);
    }
    if (useDiscountPerItem.present) {
      map['use_discount_per_item'] = Variable<bool>(useDiscountPerItem.value);
    }
    if (useSarfSand.present) {
      map['use_sarf_sand'] = Variable<bool>(useSarfSand.value);
    }
    if (useGabthSand.present) {
      map['use_gabth_sand'] = Variable<bool>(useGabthSand.value);
    }
    if (useDiscountPerBill.present) {
      map['use_discount_per_bill'] = Variable<bool>(useDiscountPerBill.value);
    }
    if (useSalesTax.present) {
      map['use_sales_tax'] = Variable<bool>(useSalesTax.value);
    }
    if (useBillStatement.present) {
      map['use_bill_statement'] = Variable<bool>(useBillStatement.value);
    }
    if (checkAccLimit.present) {
      map['check_acc_limit'] = Variable<bool>(checkAccLimit.value);
    }
    if (useExpireDate.present) {
      map['use_expire_date'] = Variable<bool>(useExpireDate.value);
    }
    if (useValueAddTax.present) {
      map['use_value_add_tax'] = Variable<bool>(useValueAddTax.value);
    }
    if (billDiscountCalc.present) {
      map['bill_discount_calc'] = Variable<bool>(billDiscountCalc.value);
    }
    if (salesTaxRate.present) {
      map['sales_tax_rate'] = Variable<int>(salesTaxRate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsTableCompanion(')
          ..write('userId: $userId, ')
          ..write('fixedBillDate: $fixedBillDate, ')
          ..write('editSalePrice: $editSalePrice, ')
          ..write('showQr: $showQr, ')
          ..write('addNewCustomers: $addNewCustomers, ')
          ..write('showSalesManInBill: $showSalesManInBill, ')
          ..write('showStoreInBill: $showStoreInBill, ')
          ..write('saleInNegative: $saleInNegative, ')
          ..write('sumItemsInBill: $sumItemsInBill, ')
          ..write('editTax: $editTax, ')
          ..write('saleBillNumInReSaleBill: $saleBillNumInReSaleBill, ')
          ..write('useFreeQty: $useFreeQty, ')
          ..write('useDiscountPerItem: $useDiscountPerItem, ')
          ..write('useSarfSand: $useSarfSand, ')
          ..write('useGabthSand: $useGabthSand, ')
          ..write('useDiscountPerBill: $useDiscountPerBill, ')
          ..write('useSalesTax: $useSalesTax, ')
          ..write('useBillStatement: $useBillStatement, ')
          ..write('checkAccLimit: $checkAccLimit, ')
          ..write('useExpireDate: $useExpireDate, ')
          ..write('useValueAddTax: $useValueAddTax, ')
          ..write('billDiscountCalc: $billDiscountCalc, ')
          ..write('salesTaxRate: $salesTaxRate')
          ..write(')'))
        .toString();
  }
}

class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userAcctypeMeta =
      const VerificationMeta('userAcctype');
  @override
  late final GeneratedColumn<int> userAcctype = GeneratedColumn<int>(
      'user_acctype', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _branchIdMeta =
      const VerificationMeta('branchId');
  @override
  late final GeneratedColumn<int> branchId = GeneratedColumn<int>(
      'branch_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _groupIdMeta =
      const VerificationMeta('groupId');
  @override
  late final GeneratedColumn<int> groupId = GeneratedColumn<int>(
      'group_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<Uint8List> image = GeneratedColumn<Uint8List>(
      'image', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userName, password, userAcctype, branchId, groupId, note, image];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    } else if (isInserting) {
      context.missing(_userNameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('user_acctype')) {
      context.handle(
          _userAcctypeMeta,
          userAcctype.isAcceptableOrUnknown(
              data['user_acctype']!, _userAcctypeMeta));
    } else if (isInserting) {
      context.missing(_userAcctypeMeta);
    }
    if (data.containsKey('branch_id')) {
      context.handle(_branchIdMeta,
          branchId.isAcceptableOrUnknown(data['branch_id']!, _branchIdMeta));
    } else if (isInserting) {
      context.missing(_branchIdMeta);
    }
    if (data.containsKey('group_id')) {
      context.handle(_groupIdMeta,
          groupId.isAcceptableOrUnknown(data['group_id']!, _groupIdMeta));
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      userAcctype: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_acctype'])!,
      branchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}branch_id'])!,
      groupId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}group_id'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}image'])!,
    );
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }
}

class UserTableCompanion extends UpdateCompanion<UserModel> {
  final Value<int> id;
  final Value<String> userName;
  final Value<String> password;
  final Value<int> userAcctype;
  final Value<int> branchId;
  final Value<int> groupId;
  final Value<String> note;
  final Value<Uint8List> image;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.userName = const Value.absent(),
    this.password = const Value.absent(),
    this.userAcctype = const Value.absent(),
    this.branchId = const Value.absent(),
    this.groupId = const Value.absent(),
    this.note = const Value.absent(),
    this.image = const Value.absent(),
  });
  UserTableCompanion.insert({
    this.id = const Value.absent(),
    required String userName,
    required String password,
    required int userAcctype,
    required int branchId,
    required int groupId,
    required String note,
    required Uint8List image,
  })  : userName = Value(userName),
        password = Value(password),
        userAcctype = Value(userAcctype),
        branchId = Value(branchId),
        groupId = Value(groupId),
        note = Value(note),
        image = Value(image);
  static Insertable<UserModel> custom({
    Expression<int>? id,
    Expression<String>? userName,
    Expression<String>? password,
    Expression<int>? userAcctype,
    Expression<int>? branchId,
    Expression<int>? groupId,
    Expression<String>? note,
    Expression<Uint8List>? image,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userName != null) 'user_name': userName,
      if (password != null) 'password': password,
      if (userAcctype != null) 'user_acctype': userAcctype,
      if (branchId != null) 'branch_id': branchId,
      if (groupId != null) 'group_id': groupId,
      if (note != null) 'note': note,
      if (image != null) 'image': image,
    });
  }

  UserTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? userName,
      Value<String>? password,
      Value<int>? userAcctype,
      Value<int>? branchId,
      Value<int>? groupId,
      Value<String>? note,
      Value<Uint8List>? image}) {
    return UserTableCompanion(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      password: password ?? this.password,
      userAcctype: userAcctype ?? this.userAcctype,
      branchId: branchId ?? this.branchId,
      groupId: groupId ?? this.groupId,
      note: note ?? this.note,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (userAcctype.present) {
      map['user_acctype'] = Variable<int>(userAcctype.value);
    }
    if (branchId.present) {
      map['branch_id'] = Variable<int>(branchId.value);
    }
    if (groupId.present) {
      map['group_id'] = Variable<int>(groupId.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (image.present) {
      map['image'] = Variable<Uint8List>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('userName: $userName, ')
          ..write('password: $password, ')
          ..write('userAcctype: $userAcctype, ')
          ..write('branchId: $branchId, ')
          ..write('groupId: $groupId, ')
          ..write('note: $note, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

class $CompanyTableTable extends CompanyTable
    with TableInfo<$CompanyTableTable, CompanyModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompanyTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enNameMeta = const VerificationMeta('enName');
  @override
  late final GeneratedColumn<String> enName = GeneratedColumn<String>(
      'en_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _shortNameMeta =
      const VerificationMeta('shortName');
  @override
  late final GeneratedColumn<String> shortName = GeneratedColumn<String>(
      'short_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enShortNameMeta =
      const VerificationMeta('enShortName');
  @override
  late final GeneratedColumn<String> enShortName = GeneratedColumn<String>(
      'en_short_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _websiteMeta =
      const VerificationMeta('website');
  @override
  late final GeneratedColumn<String> website = GeneratedColumn<String>(
      'website', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _logoMeta = const VerificationMeta('logo');
  @override
  late final GeneratedColumn<Uint8List> logo = GeneratedColumn<Uint8List>(
      'logo', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, enName, shortName, enShortName, address, website, note, logo];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'company_table';
  @override
  VerificationContext validateIntegrity(Insertable<CompanyModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('en_name')) {
      context.handle(_enNameMeta,
          enName.isAcceptableOrUnknown(data['en_name']!, _enNameMeta));
    } else if (isInserting) {
      context.missing(_enNameMeta);
    }
    if (data.containsKey('short_name')) {
      context.handle(_shortNameMeta,
          shortName.isAcceptableOrUnknown(data['short_name']!, _shortNameMeta));
    } else if (isInserting) {
      context.missing(_shortNameMeta);
    }
    if (data.containsKey('en_short_name')) {
      context.handle(
          _enShortNameMeta,
          enShortName.isAcceptableOrUnknown(
              data['en_short_name']!, _enShortNameMeta));
    } else if (isInserting) {
      context.missing(_enShortNameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    } else if (isInserting) {
      context.missing(_websiteMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('logo')) {
      context.handle(
          _logoMeta, logo.isAcceptableOrUnknown(data['logo']!, _logoMeta));
    } else if (isInserting) {
      context.missing(_logoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CompanyModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompanyModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      enName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}en_name'])!,
      shortName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}short_name'])!,
      enShortName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}en_short_name'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      website: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}website'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      logo: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}logo'])!,
    );
  }

  @override
  $CompanyTableTable createAlias(String alias) {
    return $CompanyTableTable(attachedDatabase, alias);
  }
}

class CompanyTableCompanion extends UpdateCompanion<CompanyModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> enName;
  final Value<String> shortName;
  final Value<String> enShortName;
  final Value<String> address;
  final Value<String> website;
  final Value<String> note;
  final Value<Uint8List> logo;
  const CompanyTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.enName = const Value.absent(),
    this.shortName = const Value.absent(),
    this.enShortName = const Value.absent(),
    this.address = const Value.absent(),
    this.website = const Value.absent(),
    this.note = const Value.absent(),
    this.logo = const Value.absent(),
  });
  CompanyTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String enName,
    required String shortName,
    required String enShortName,
    required String address,
    required String website,
    required String note,
    required Uint8List logo,
  })  : name = Value(name),
        enName = Value(enName),
        shortName = Value(shortName),
        enShortName = Value(enShortName),
        address = Value(address),
        website = Value(website),
        note = Value(note),
        logo = Value(logo);
  static Insertable<CompanyModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? enName,
    Expression<String>? shortName,
    Expression<String>? enShortName,
    Expression<String>? address,
    Expression<String>? website,
    Expression<String>? note,
    Expression<Uint8List>? logo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (enName != null) 'en_name': enName,
      if (shortName != null) 'short_name': shortName,
      if (enShortName != null) 'en_short_name': enShortName,
      if (address != null) 'address': address,
      if (website != null) 'website': website,
      if (note != null) 'note': note,
      if (logo != null) 'logo': logo,
    });
  }

  CompanyTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? enName,
      Value<String>? shortName,
      Value<String>? enShortName,
      Value<String>? address,
      Value<String>? website,
      Value<String>? note,
      Value<Uint8List>? logo}) {
    return CompanyTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      enName: enName ?? this.enName,
      shortName: shortName ?? this.shortName,
      enShortName: enShortName ?? this.enShortName,
      address: address ?? this.address,
      website: website ?? this.website,
      note: note ?? this.note,
      logo: logo ?? this.logo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (enName.present) {
      map['en_name'] = Variable<String>(enName.value);
    }
    if (shortName.present) {
      map['short_name'] = Variable<String>(shortName.value);
    }
    if (enShortName.present) {
      map['en_short_name'] = Variable<String>(enShortName.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (logo.present) {
      map['logo'] = Variable<Uint8List>(logo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompanyTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('enName: $enName, ')
          ..write('shortName: $shortName, ')
          ..write('enShortName: $enShortName, ')
          ..write('address: $address, ')
          ..write('website: $website, ')
          ..write('note: $note, ')
          ..write('logo: $logo')
          ..write(')'))
        .toString();
  }
}

class $BranchTableTable extends BranchTable
    with TableInfo<$BranchTableTable, BranchModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BranchTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _companyIdMeta =
      const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
      'company_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _arReportHeaderMeta =
      const VerificationMeta('arReportHeader');
  @override
  late final GeneratedColumn<String> arReportHeader = GeneratedColumn<String>(
      'ar_report_header', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enReportHeaderMeta =
      const VerificationMeta('enReportHeader');
  @override
  late final GeneratedColumn<String> enReportHeader = GeneratedColumn<String>(
      'en_report_header', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _logoMeta = const VerificationMeta('logo');
  @override
  late final GeneratedColumn<Uint8List> logo = GeneratedColumn<Uint8List>(
      'logo', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        companyId,
        name,
        address,
        phone,
        email,
        arReportHeader,
        enReportHeader,
        logo,
        note
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'branch_table';
  @override
  VerificationContext validateIntegrity(Insertable<BranchModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('company_id')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('ar_report_header')) {
      context.handle(
          _arReportHeaderMeta,
          arReportHeader.isAcceptableOrUnknown(
              data['ar_report_header']!, _arReportHeaderMeta));
    } else if (isInserting) {
      context.missing(_arReportHeaderMeta);
    }
    if (data.containsKey('en_report_header')) {
      context.handle(
          _enReportHeaderMeta,
          enReportHeader.isAcceptableOrUnknown(
              data['en_report_header']!, _enReportHeaderMeta));
    } else if (isInserting) {
      context.missing(_enReportHeaderMeta);
    }
    if (data.containsKey('logo')) {
      context.handle(
          _logoMeta, logo.isAcceptableOrUnknown(data['logo']!, _logoMeta));
    } else if (isInserting) {
      context.missing(_logoMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BranchModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BranchModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      companyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}company_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      arReportHeader: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}ar_report_header'])!,
      enReportHeader: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}en_report_header'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      logo: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}logo'])!,
    );
  }

  @override
  $BranchTableTable createAlias(String alias) {
    return $BranchTableTable(attachedDatabase, alias);
  }
}

class BranchTableCompanion extends UpdateCompanion<BranchModel> {
  final Value<int> id;
  final Value<int> companyId;
  final Value<String> name;
  final Value<String> address;
  final Value<String> phone;
  final Value<String> email;
  final Value<String> arReportHeader;
  final Value<String> enReportHeader;
  final Value<Uint8List> logo;
  final Value<String> note;
  const BranchTableCompanion({
    this.id = const Value.absent(),
    this.companyId = const Value.absent(),
    this.name = const Value.absent(),
    this.address = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.arReportHeader = const Value.absent(),
    this.enReportHeader = const Value.absent(),
    this.logo = const Value.absent(),
    this.note = const Value.absent(),
  });
  BranchTableCompanion.insert({
    this.id = const Value.absent(),
    required int companyId,
    required String name,
    required String address,
    required String phone,
    required String email,
    required String arReportHeader,
    required String enReportHeader,
    required Uint8List logo,
    required String note,
  })  : companyId = Value(companyId),
        name = Value(name),
        address = Value(address),
        phone = Value(phone),
        email = Value(email),
        arReportHeader = Value(arReportHeader),
        enReportHeader = Value(enReportHeader),
        logo = Value(logo),
        note = Value(note);
  static Insertable<BranchModel> custom({
    Expression<int>? id,
    Expression<int>? companyId,
    Expression<String>? name,
    Expression<String>? address,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? arReportHeader,
    Expression<String>? enReportHeader,
    Expression<Uint8List>? logo,
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (companyId != null) 'company_id': companyId,
      if (name != null) 'name': name,
      if (address != null) 'address': address,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (arReportHeader != null) 'ar_report_header': arReportHeader,
      if (enReportHeader != null) 'en_report_header': enReportHeader,
      if (logo != null) 'logo': logo,
      if (note != null) 'note': note,
    });
  }

  BranchTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? companyId,
      Value<String>? name,
      Value<String>? address,
      Value<String>? phone,
      Value<String>? email,
      Value<String>? arReportHeader,
      Value<String>? enReportHeader,
      Value<Uint8List>? logo,
      Value<String>? note}) {
    return BranchTableCompanion(
      id: id ?? this.id,
      companyId: companyId ?? this.companyId,
      name: name ?? this.name,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      arReportHeader: arReportHeader ?? this.arReportHeader,
      enReportHeader: enReportHeader ?? this.enReportHeader,
      logo: logo ?? this.logo,
      note: note ?? this.note,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<int>(companyId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (arReportHeader.present) {
      map['ar_report_header'] = Variable<String>(arReportHeader.value);
    }
    if (enReportHeader.present) {
      map['en_report_header'] = Variable<String>(enReportHeader.value);
    }
    if (logo.present) {
      map['logo'] = Variable<Uint8List>(logo.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BranchTableCompanion(')
          ..write('id: $id, ')
          ..write('companyId: $companyId, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('arReportHeader: $arReportHeader, ')
          ..write('enReportHeader: $enReportHeader, ')
          ..write('logo: $logo, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

class $CurencyTableTable extends CurencyTable
    with TableInfo<$CurencyTableTable, CurencyModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CurencyTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
      'symbol', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subNameMeta =
      const VerificationMeta('subName');
  @override
  late final GeneratedColumn<String> subName = GeneratedColumn<String>(
      'sub_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _equivelantMeta =
      const VerificationMeta('equivelant');
  @override
  late final GeneratedColumn<double> equivelant = GeneratedColumn<double>(
      'equivelant', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _localCurrencyMeta =
      const VerificationMeta('localCurrency');
  @override
  late final GeneratedColumn<bool> localCurrency = GeneratedColumn<bool>(
      'local_currency', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("local_currency" IN (0, 1))'));
  static const VerificationMeta _storeCurrencyMeta =
      const VerificationMeta('storeCurrency');
  @override
  late final GeneratedColumn<bool> storeCurrency = GeneratedColumn<bool>(
      'store_currency', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("store_currency" IN (0, 1))'));
  static const VerificationMeta _maxValueMeta =
      const VerificationMeta('maxValue');
  @override
  late final GeneratedColumn<double> maxValue = GeneratedColumn<double>(
      'max_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _minValueMeta =
      const VerificationMeta('minValue');
  @override
  late final GeneratedColumn<double> minValue = GeneratedColumn<double>(
      'min_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _newDataMeta =
      const VerificationMeta('newData');
  @override
  late final GeneratedColumn<bool> newData = GeneratedColumn<bool>(
      'new_data', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("new_data" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        symbol,
        subName,
        value,
        equivelant,
        localCurrency,
        storeCurrency,
        maxValue,
        minValue,
        note,
        newData
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'curency_table';
  @override
  VerificationContext validateIntegrity(Insertable<CurencyModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('sub_name')) {
      context.handle(_subNameMeta,
          subName.isAcceptableOrUnknown(data['sub_name']!, _subNameMeta));
    } else if (isInserting) {
      context.missing(_subNameMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('equivelant')) {
      context.handle(
          _equivelantMeta,
          equivelant.isAcceptableOrUnknown(
              data['equivelant']!, _equivelantMeta));
    } else if (isInserting) {
      context.missing(_equivelantMeta);
    }
    if (data.containsKey('local_currency')) {
      context.handle(
          _localCurrencyMeta,
          localCurrency.isAcceptableOrUnknown(
              data['local_currency']!, _localCurrencyMeta));
    } else if (isInserting) {
      context.missing(_localCurrencyMeta);
    }
    if (data.containsKey('store_currency')) {
      context.handle(
          _storeCurrencyMeta,
          storeCurrency.isAcceptableOrUnknown(
              data['store_currency']!, _storeCurrencyMeta));
    } else if (isInserting) {
      context.missing(_storeCurrencyMeta);
    }
    if (data.containsKey('max_value')) {
      context.handle(_maxValueMeta,
          maxValue.isAcceptableOrUnknown(data['max_value']!, _maxValueMeta));
    } else if (isInserting) {
      context.missing(_maxValueMeta);
    }
    if (data.containsKey('min_value')) {
      context.handle(_minValueMeta,
          minValue.isAcceptableOrUnknown(data['min_value']!, _minValueMeta));
    } else if (isInserting) {
      context.missing(_minValueMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('new_data')) {
      context.handle(_newDataMeta,
          newData.isAcceptableOrUnknown(data['new_data']!, _newDataMeta));
    } else if (isInserting) {
      context.missing(_newDataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CurencyModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CurencyModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      symbol: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}symbol'])!,
      subName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sub_name'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value'])!,
      equivelant: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}equivelant'])!,
      localCurrency: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}local_currency'])!,
      storeCurrency: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}store_currency'])!,
      maxValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}max_value'])!,
      minValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}min_value'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
    );
  }

  @override
  $CurencyTableTable createAlias(String alias) {
    return $CurencyTableTable(attachedDatabase, alias);
  }
}

class CurencyTableCompanion extends UpdateCompanion<CurencyModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> symbol;
  final Value<String> subName;
  final Value<double> value;
  final Value<double> equivelant;
  final Value<bool> localCurrency;
  final Value<bool> storeCurrency;
  final Value<double> maxValue;
  final Value<double> minValue;
  final Value<String> note;
  final Value<bool> newData;
  const CurencyTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.symbol = const Value.absent(),
    this.subName = const Value.absent(),
    this.value = const Value.absent(),
    this.equivelant = const Value.absent(),
    this.localCurrency = const Value.absent(),
    this.storeCurrency = const Value.absent(),
    this.maxValue = const Value.absent(),
    this.minValue = const Value.absent(),
    this.note = const Value.absent(),
    this.newData = const Value.absent(),
  });
  CurencyTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String symbol,
    required String subName,
    required double value,
    required double equivelant,
    required bool localCurrency,
    required bool storeCurrency,
    required double maxValue,
    required double minValue,
    required String note,
    required bool newData,
  })  : name = Value(name),
        symbol = Value(symbol),
        subName = Value(subName),
        value = Value(value),
        equivelant = Value(equivelant),
        localCurrency = Value(localCurrency),
        storeCurrency = Value(storeCurrency),
        maxValue = Value(maxValue),
        minValue = Value(minValue),
        note = Value(note),
        newData = Value(newData);
  static Insertable<CurencyModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? symbol,
    Expression<String>? subName,
    Expression<double>? value,
    Expression<double>? equivelant,
    Expression<bool>? localCurrency,
    Expression<bool>? storeCurrency,
    Expression<double>? maxValue,
    Expression<double>? minValue,
    Expression<String>? note,
    Expression<bool>? newData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (symbol != null) 'symbol': symbol,
      if (subName != null) 'sub_name': subName,
      if (value != null) 'value': value,
      if (equivelant != null) 'equivelant': equivelant,
      if (localCurrency != null) 'local_currency': localCurrency,
      if (storeCurrency != null) 'store_currency': storeCurrency,
      if (maxValue != null) 'max_value': maxValue,
      if (minValue != null) 'min_value': minValue,
      if (note != null) 'note': note,
      if (newData != null) 'new_data': newData,
    });
  }

  CurencyTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? symbol,
      Value<String>? subName,
      Value<double>? value,
      Value<double>? equivelant,
      Value<bool>? localCurrency,
      Value<bool>? storeCurrency,
      Value<double>? maxValue,
      Value<double>? minValue,
      Value<String>? note,
      Value<bool>? newData}) {
    return CurencyTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      subName: subName ?? this.subName,
      value: value ?? this.value,
      equivelant: equivelant ?? this.equivelant,
      localCurrency: localCurrency ?? this.localCurrency,
      storeCurrency: storeCurrency ?? this.storeCurrency,
      maxValue: maxValue ?? this.maxValue,
      minValue: minValue ?? this.minValue,
      note: note ?? this.note,
      newData: newData ?? this.newData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (subName.present) {
      map['sub_name'] = Variable<String>(subName.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    if (equivelant.present) {
      map['equivelant'] = Variable<double>(equivelant.value);
    }
    if (localCurrency.present) {
      map['local_currency'] = Variable<bool>(localCurrency.value);
    }
    if (storeCurrency.present) {
      map['store_currency'] = Variable<bool>(storeCurrency.value);
    }
    if (maxValue.present) {
      map['max_value'] = Variable<double>(maxValue.value);
    }
    if (minValue.present) {
      map['min_value'] = Variable<double>(minValue.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (newData.present) {
      map['new_data'] = Variable<bool>(newData.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CurencyTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol, ')
          ..write('subName: $subName, ')
          ..write('value: $value, ')
          ..write('equivelant: $equivelant, ')
          ..write('localCurrency: $localCurrency, ')
          ..write('storeCurrency: $storeCurrency, ')
          ..write('maxValue: $maxValue, ')
          ..write('minValue: $minValue, ')
          ..write('note: $note, ')
          ..write('newData: $newData')
          ..write(')'))
        .toString();
  }
}

class $UserStoreTableTable extends UserStoreTable
    with TableInfo<$UserStoreTableTable, UserStoreModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserStoreTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accountNumberMeta =
      const VerificationMeta('accountNumber');
  @override
  late final GeneratedColumn<int> accountNumber = GeneratedColumn<int>(
      'account_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _branchIdMeta =
      const VerificationMeta('branchId');
  @override
  late final GeneratedColumn<int> branchId = GeneratedColumn<int>(
      'branch_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _storeManagerMeta =
      const VerificationMeta('storeManager');
  @override
  late final GeneratedColumn<String> storeManager = GeneratedColumn<String>(
      'store_manager', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _managerPhoneMeta =
      const VerificationMeta('managerPhone');
  @override
  late final GeneratedColumn<String> managerPhone = GeneratedColumn<String>(
      'manager_phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, accountNumber, branchId, storeManager, managerPhone, note];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_store_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserStoreModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('account_number')) {
      context.handle(
          _accountNumberMeta,
          accountNumber.isAcceptableOrUnknown(
              data['account_number']!, _accountNumberMeta));
    } else if (isInserting) {
      context.missing(_accountNumberMeta);
    }
    if (data.containsKey('branch_id')) {
      context.handle(_branchIdMeta,
          branchId.isAcceptableOrUnknown(data['branch_id']!, _branchIdMeta));
    } else if (isInserting) {
      context.missing(_branchIdMeta);
    }
    if (data.containsKey('store_manager')) {
      context.handle(
          _storeManagerMeta,
          storeManager.isAcceptableOrUnknown(
              data['store_manager']!, _storeManagerMeta));
    } else if (isInserting) {
      context.missing(_storeManagerMeta);
    }
    if (data.containsKey('manager_phone')) {
      context.handle(
          _managerPhoneMeta,
          managerPhone.isAcceptableOrUnknown(
              data['manager_phone']!, _managerPhoneMeta));
    } else if (isInserting) {
      context.missing(_managerPhoneMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserStoreModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserStoreModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      accountNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}account_number'])!,
      branchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}branch_id'])!,
      storeManager: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}store_manager'])!,
      managerPhone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}manager_phone'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
    );
  }

  @override
  $UserStoreTableTable createAlias(String alias) {
    return $UserStoreTableTable(attachedDatabase, alias);
  }
}

class UserStoreTableCompanion extends UpdateCompanion<UserStoreModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> accountNumber;
  final Value<int> branchId;
  final Value<String> storeManager;
  final Value<String> managerPhone;
  final Value<String> note;
  const UserStoreTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.accountNumber = const Value.absent(),
    this.branchId = const Value.absent(),
    this.storeManager = const Value.absent(),
    this.managerPhone = const Value.absent(),
    this.note = const Value.absent(),
  });
  UserStoreTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int accountNumber,
    required int branchId,
    required String storeManager,
    required String managerPhone,
    required String note,
  })  : name = Value(name),
        accountNumber = Value(accountNumber),
        branchId = Value(branchId),
        storeManager = Value(storeManager),
        managerPhone = Value(managerPhone),
        note = Value(note);
  static Insertable<UserStoreModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? accountNumber,
    Expression<int>? branchId,
    Expression<String>? storeManager,
    Expression<String>? managerPhone,
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (accountNumber != null) 'account_number': accountNumber,
      if (branchId != null) 'branch_id': branchId,
      if (storeManager != null) 'store_manager': storeManager,
      if (managerPhone != null) 'manager_phone': managerPhone,
      if (note != null) 'note': note,
    });
  }

  UserStoreTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? accountNumber,
      Value<int>? branchId,
      Value<String>? storeManager,
      Value<String>? managerPhone,
      Value<String>? note}) {
    return UserStoreTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      accountNumber: accountNumber ?? this.accountNumber,
      branchId: branchId ?? this.branchId,
      storeManager: storeManager ?? this.storeManager,
      managerPhone: managerPhone ?? this.managerPhone,
      note: note ?? this.note,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (accountNumber.present) {
      map['account_number'] = Variable<int>(accountNumber.value);
    }
    if (branchId.present) {
      map['branch_id'] = Variable<int>(branchId.value);
    }
    if (storeManager.present) {
      map['store_manager'] = Variable<String>(storeManager.value);
    }
    if (managerPhone.present) {
      map['manager_phone'] = Variable<String>(managerPhone.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserStoreTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('accountNumber: $accountNumber, ')
          ..write('branchId: $branchId, ')
          ..write('storeManager: $storeManager, ')
          ..write('managerPhone: $managerPhone, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

class $UnitTableTable extends UnitTable
    with TableInfo<$UnitTableTable, UnitModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UnitTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _newDataMeta =
      const VerificationMeta('newData');
  @override
  late final GeneratedColumn<bool> newData = GeneratedColumn<bool>(
      'new_data', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("new_data" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, name, note, newData];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'unit_table';
  @override
  VerificationContext validateIntegrity(Insertable<UnitModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('new_data')) {
      context.handle(_newDataMeta,
          newData.isAcceptableOrUnknown(data['new_data']!, _newDataMeta));
    } else if (isInserting) {
      context.missing(_newDataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UnitModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UnitModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
    );
  }

  @override
  $UnitTableTable createAlias(String alias) {
    return $UnitTableTable(attachedDatabase, alias);
  }
}

class UnitTableCompanion extends UpdateCompanion<UnitModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> note;
  final Value<bool> newData;
  const UnitTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.note = const Value.absent(),
    this.newData = const Value.absent(),
  });
  UnitTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String note,
    required bool newData,
  })  : name = Value(name),
        note = Value(note),
        newData = Value(newData);
  static Insertable<UnitModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? note,
    Expression<bool>? newData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (note != null) 'note': note,
      if (newData != null) 'new_data': newData,
    });
  }

  UnitTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? note,
      Value<bool>? newData}) {
    return UnitTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      note: note ?? this.note,
      newData: newData ?? this.newData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (newData.present) {
      map['new_data'] = Variable<bool>(newData.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UnitTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('note: $note, ')
          ..write('newData: $newData')
          ..write(')'))
        .toString();
  }
}

class $ItemGroupTableTable extends ItemGroupTable
    with TableInfo<$ItemGroupTableTable, ItemGroupModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemGroupTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<int> code = GeneratedColumn<int>(
      'code', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int> type = GeneratedColumn<int>(
      'type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<int> parent = GeneratedColumn<int>(
      'parent', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _newDataMeta =
      const VerificationMeta('newData');
  @override
  late final GeneratedColumn<bool> newData = GeneratedColumn<bool>(
      'new_data', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("new_data" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, code, type, parent, name, note, newData];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_group_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemGroupModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('parent')) {
      context.handle(_parentMeta,
          parent.isAcceptableOrUnknown(data['parent']!, _parentMeta));
    } else if (isInserting) {
      context.missing(_parentMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('new_data')) {
      context.handle(_newDataMeta,
          newData.isAcceptableOrUnknown(data['new_data']!, _newDataMeta));
    } else if (isInserting) {
      context.missing(_newDataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemGroupModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemGroupModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}code'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!,
      parent: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}parent'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
    );
  }

  @override
  $ItemGroupTableTable createAlias(String alias) {
    return $ItemGroupTableTable(attachedDatabase, alias);
  }
}

class ItemGroupTableCompanion extends UpdateCompanion<ItemGroupModel> {
  final Value<int> id;
  final Value<int> code;
  final Value<int> type;
  final Value<int> parent;
  final Value<String> name;
  final Value<String> note;
  final Value<bool> newData;
  const ItemGroupTableCompanion({
    this.id = const Value.absent(),
    this.code = const Value.absent(),
    this.type = const Value.absent(),
    this.parent = const Value.absent(),
    this.name = const Value.absent(),
    this.note = const Value.absent(),
    this.newData = const Value.absent(),
  });
  ItemGroupTableCompanion.insert({
    this.id = const Value.absent(),
    required int code,
    required int type,
    required int parent,
    required String name,
    required String note,
    required bool newData,
  })  : code = Value(code),
        type = Value(type),
        parent = Value(parent),
        name = Value(name),
        note = Value(note),
        newData = Value(newData);
  static Insertable<ItemGroupModel> custom({
    Expression<int>? id,
    Expression<int>? code,
    Expression<int>? type,
    Expression<int>? parent,
    Expression<String>? name,
    Expression<String>? note,
    Expression<bool>? newData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (type != null) 'type': type,
      if (parent != null) 'parent': parent,
      if (name != null) 'name': name,
      if (note != null) 'note': note,
      if (newData != null) 'new_data': newData,
    });
  }

  ItemGroupTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? code,
      Value<int>? type,
      Value<int>? parent,
      Value<String>? name,
      Value<String>? note,
      Value<bool>? newData}) {
    return ItemGroupTableCompanion(
      id: id ?? this.id,
      code: code ?? this.code,
      type: type ?? this.type,
      parent: parent ?? this.parent,
      name: name ?? this.name,
      note: note ?? this.note,
      newData: newData ?? this.newData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (code.present) {
      map['code'] = Variable<int>(code.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (parent.present) {
      map['parent'] = Variable<int>(parent.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (newData.present) {
      map['new_data'] = Variable<bool>(newData.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemGroupTableCompanion(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('type: $type, ')
          ..write('parent: $parent, ')
          ..write('name: $name, ')
          ..write('note: $note, ')
          ..write('newData: $newData')
          ..write(')'))
        .toString();
  }
}

class $ItemTableTable extends ItemTable
    with TableInfo<$ItemTableTable, ItemModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemGroupIdMeta =
      const VerificationMeta('itemGroupId');
  @override
  late final GeneratedColumn<int> itemGroupId = GeneratedColumn<int>(
      'item_group_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES item_group_table (id)'));
  static const VerificationMeta _itemCodeMeta =
      const VerificationMeta('itemCode');
  @override
  late final GeneratedColumn<int> itemCode = GeneratedColumn<int>(
      'item_code', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enNameMeta = const VerificationMeta('enName');
  @override
  late final GeneratedColumn<String> enName = GeneratedColumn<String>(
      'en_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int> type = GeneratedColumn<int>(
      'type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemLimitMeta =
      const VerificationMeta('itemLimit');
  @override
  late final GeneratedColumn<int> itemLimit = GeneratedColumn<int>(
      'item_limit', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemImageMeta =
      const VerificationMeta('itemImage');
  @override
  late final GeneratedColumn<Uint8List> itemImage = GeneratedColumn<Uint8List>(
      'item_image', aliasedName, true,
      type: DriftSqlType.blob, requiredDuringInsert: false);
  static const VerificationMeta _isExpireMeta =
      const VerificationMeta('isExpire');
  @override
  late final GeneratedColumn<bool> isExpire = GeneratedColumn<bool>(
      'is_expire', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_expire" IN (0, 1))'));
  static const VerificationMeta _freeQuantityAllowMeta =
      const VerificationMeta('freeQuantityAllow');
  @override
  late final GeneratedColumn<bool> freeQuantityAllow = GeneratedColumn<bool>(
      'free_quantity_allow', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("free_quantity_allow" IN (0, 1))'));
  static const VerificationMeta _hasTaxMeta = const VerificationMeta('hasTax');
  @override
  late final GeneratedColumn<bool> hasTax = GeneratedColumn<bool>(
      'has_tax', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("has_tax" IN (0, 1))'));
  static const VerificationMeta _hasAlternatedMeta =
      const VerificationMeta('hasAlternated');
  @override
  late final GeneratedColumn<bool> hasAlternated = GeneratedColumn<bool>(
      'has_alternated', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_alternated" IN (0, 1))'));
  static const VerificationMeta _newDataMeta =
      const VerificationMeta('newData');
  @override
  late final GeneratedColumn<bool> newData = GeneratedColumn<bool>(
      'new_data', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("new_data" IN (0, 1))'));
  static const VerificationMeta _notifyBeforeMeta =
      const VerificationMeta('notifyBefore');
  @override
  late final GeneratedColumn<int> notifyBefore = GeneratedColumn<int>(
      'notify_before', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _taxRateMeta =
      const VerificationMeta('taxRate');
  @override
  late final GeneratedColumn<int> taxRate = GeneratedColumn<int>(
      'tax_rate', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemCompanyMeta =
      const VerificationMeta('itemCompany');
  @override
  late final GeneratedColumn<String> itemCompany = GeneratedColumn<String>(
      'item_company', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orignalCountryMeta =
      const VerificationMeta('orignalCountry');
  @override
  late final GeneratedColumn<String> orignalCountry = GeneratedColumn<String>(
      'orignal_country', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemDescriptionMeta =
      const VerificationMeta('itemDescription');
  @override
  late final GeneratedColumn<String> itemDescription = GeneratedColumn<String>(
      'item_description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        itemGroupId,
        itemCode,
        name,
        enName,
        type,
        itemLimit,
        itemImage,
        isExpire,
        freeQuantityAllow,
        hasTax,
        hasAlternated,
        newData,
        notifyBefore,
        taxRate,
        itemCompany,
        orignalCountry,
        itemDescription,
        note
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_group_id')) {
      context.handle(
          _itemGroupIdMeta,
          itemGroupId.isAcceptableOrUnknown(
              data['item_group_id']!, _itemGroupIdMeta));
    } else if (isInserting) {
      context.missing(_itemGroupIdMeta);
    }
    if (data.containsKey('item_code')) {
      context.handle(_itemCodeMeta,
          itemCode.isAcceptableOrUnknown(data['item_code']!, _itemCodeMeta));
    } else if (isInserting) {
      context.missing(_itemCodeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('en_name')) {
      context.handle(_enNameMeta,
          enName.isAcceptableOrUnknown(data['en_name']!, _enNameMeta));
    } else if (isInserting) {
      context.missing(_enNameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('item_limit')) {
      context.handle(_itemLimitMeta,
          itemLimit.isAcceptableOrUnknown(data['item_limit']!, _itemLimitMeta));
    } else if (isInserting) {
      context.missing(_itemLimitMeta);
    }
    if (data.containsKey('item_image')) {
      context.handle(_itemImageMeta,
          itemImage.isAcceptableOrUnknown(data['item_image']!, _itemImageMeta));
    }
    if (data.containsKey('is_expire')) {
      context.handle(_isExpireMeta,
          isExpire.isAcceptableOrUnknown(data['is_expire']!, _isExpireMeta));
    } else if (isInserting) {
      context.missing(_isExpireMeta);
    }
    if (data.containsKey('free_quantity_allow')) {
      context.handle(
          _freeQuantityAllowMeta,
          freeQuantityAllow.isAcceptableOrUnknown(
              data['free_quantity_allow']!, _freeQuantityAllowMeta));
    } else if (isInserting) {
      context.missing(_freeQuantityAllowMeta);
    }
    if (data.containsKey('has_tax')) {
      context.handle(_hasTaxMeta,
          hasTax.isAcceptableOrUnknown(data['has_tax']!, _hasTaxMeta));
    } else if (isInserting) {
      context.missing(_hasTaxMeta);
    }
    if (data.containsKey('has_alternated')) {
      context.handle(
          _hasAlternatedMeta,
          hasAlternated.isAcceptableOrUnknown(
              data['has_alternated']!, _hasAlternatedMeta));
    } else if (isInserting) {
      context.missing(_hasAlternatedMeta);
    }
    if (data.containsKey('new_data')) {
      context.handle(_newDataMeta,
          newData.isAcceptableOrUnknown(data['new_data']!, _newDataMeta));
    } else if (isInserting) {
      context.missing(_newDataMeta);
    }
    if (data.containsKey('notify_before')) {
      context.handle(
          _notifyBeforeMeta,
          notifyBefore.isAcceptableOrUnknown(
              data['notify_before']!, _notifyBeforeMeta));
    } else if (isInserting) {
      context.missing(_notifyBeforeMeta);
    }
    if (data.containsKey('tax_rate')) {
      context.handle(_taxRateMeta,
          taxRate.isAcceptableOrUnknown(data['tax_rate']!, _taxRateMeta));
    } else if (isInserting) {
      context.missing(_taxRateMeta);
    }
    if (data.containsKey('item_company')) {
      context.handle(
          _itemCompanyMeta,
          itemCompany.isAcceptableOrUnknown(
              data['item_company']!, _itemCompanyMeta));
    } else if (isInserting) {
      context.missing(_itemCompanyMeta);
    }
    if (data.containsKey('orignal_country')) {
      context.handle(
          _orignalCountryMeta,
          orignalCountry.isAcceptableOrUnknown(
              data['orignal_country']!, _orignalCountryMeta));
    } else if (isInserting) {
      context.missing(_orignalCountryMeta);
    }
    if (data.containsKey('item_description')) {
      context.handle(
          _itemDescriptionMeta,
          itemDescription.isAcceptableOrUnknown(
              data['item_description']!, _itemDescriptionMeta));
    } else if (isInserting) {
      context.missing(_itemDescriptionMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemGroupId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_group_id'])!,
      itemCode: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_code'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      enName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}en_name'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!,
      itemLimit: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_limit'])!,
      itemImage: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}item_image']),
      isExpire: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_expire'])!,
      notifyBefore: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}notify_before'])!,
      freeQuantityAllow: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}free_quantity_allow'])!,
      hasTax: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_tax'])!,
      taxRate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tax_rate'])!,
      itemCompany: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_company'])!,
      orignalCountry: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}orignal_country'])!,
      itemDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}item_description'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      hasAlternated: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_alternated'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
    );
  }

  @override
  $ItemTableTable createAlias(String alias) {
    return $ItemTableTable(attachedDatabase, alias);
  }
}

class ItemTableCompanion extends UpdateCompanion<ItemModel> {
  final Value<int> id;
  final Value<int> itemGroupId;
  final Value<int> itemCode;
  final Value<String> name;
  final Value<String> enName;
  final Value<int> type;
  final Value<int> itemLimit;
  final Value<Uint8List?> itemImage;
  final Value<bool> isExpire;
  final Value<bool> freeQuantityAllow;
  final Value<bool> hasTax;
  final Value<bool> hasAlternated;
  final Value<bool> newData;
  final Value<int> notifyBefore;
  final Value<int> taxRate;
  final Value<String> itemCompany;
  final Value<String> orignalCountry;
  final Value<String> itemDescription;
  final Value<String> note;
  const ItemTableCompanion({
    this.id = const Value.absent(),
    this.itemGroupId = const Value.absent(),
    this.itemCode = const Value.absent(),
    this.name = const Value.absent(),
    this.enName = const Value.absent(),
    this.type = const Value.absent(),
    this.itemLimit = const Value.absent(),
    this.itemImage = const Value.absent(),
    this.isExpire = const Value.absent(),
    this.freeQuantityAllow = const Value.absent(),
    this.hasTax = const Value.absent(),
    this.hasAlternated = const Value.absent(),
    this.newData = const Value.absent(),
    this.notifyBefore = const Value.absent(),
    this.taxRate = const Value.absent(),
    this.itemCompany = const Value.absent(),
    this.orignalCountry = const Value.absent(),
    this.itemDescription = const Value.absent(),
    this.note = const Value.absent(),
  });
  ItemTableCompanion.insert({
    this.id = const Value.absent(),
    required int itemGroupId,
    required int itemCode,
    required String name,
    required String enName,
    required int type,
    required int itemLimit,
    this.itemImage = const Value.absent(),
    required bool isExpire,
    required bool freeQuantityAllow,
    required bool hasTax,
    required bool hasAlternated,
    required bool newData,
    required int notifyBefore,
    required int taxRate,
    required String itemCompany,
    required String orignalCountry,
    required String itemDescription,
    required String note,
  })  : itemGroupId = Value(itemGroupId),
        itemCode = Value(itemCode),
        name = Value(name),
        enName = Value(enName),
        type = Value(type),
        itemLimit = Value(itemLimit),
        isExpire = Value(isExpire),
        freeQuantityAllow = Value(freeQuantityAllow),
        hasTax = Value(hasTax),
        hasAlternated = Value(hasAlternated),
        newData = Value(newData),
        notifyBefore = Value(notifyBefore),
        taxRate = Value(taxRate),
        itemCompany = Value(itemCompany),
        orignalCountry = Value(orignalCountry),
        itemDescription = Value(itemDescription),
        note = Value(note);
  static Insertable<ItemModel> custom({
    Expression<int>? id,
    Expression<int>? itemGroupId,
    Expression<int>? itemCode,
    Expression<String>? name,
    Expression<String>? enName,
    Expression<int>? type,
    Expression<int>? itemLimit,
    Expression<Uint8List>? itemImage,
    Expression<bool>? isExpire,
    Expression<bool>? freeQuantityAllow,
    Expression<bool>? hasTax,
    Expression<bool>? hasAlternated,
    Expression<bool>? newData,
    Expression<int>? notifyBefore,
    Expression<int>? taxRate,
    Expression<String>? itemCompany,
    Expression<String>? orignalCountry,
    Expression<String>? itemDescription,
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemGroupId != null) 'item_group_id': itemGroupId,
      if (itemCode != null) 'item_code': itemCode,
      if (name != null) 'name': name,
      if (enName != null) 'en_name': enName,
      if (type != null) 'type': type,
      if (itemLimit != null) 'item_limit': itemLimit,
      if (itemImage != null) 'item_image': itemImage,
      if (isExpire != null) 'is_expire': isExpire,
      if (freeQuantityAllow != null) 'free_quantity_allow': freeQuantityAllow,
      if (hasTax != null) 'has_tax': hasTax,
      if (hasAlternated != null) 'has_alternated': hasAlternated,
      if (newData != null) 'new_data': newData,
      if (notifyBefore != null) 'notify_before': notifyBefore,
      if (taxRate != null) 'tax_rate': taxRate,
      if (itemCompany != null) 'item_company': itemCompany,
      if (orignalCountry != null) 'orignal_country': orignalCountry,
      if (itemDescription != null) 'item_description': itemDescription,
      if (note != null) 'note': note,
    });
  }

  ItemTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? itemGroupId,
      Value<int>? itemCode,
      Value<String>? name,
      Value<String>? enName,
      Value<int>? type,
      Value<int>? itemLimit,
      Value<Uint8List?>? itemImage,
      Value<bool>? isExpire,
      Value<bool>? freeQuantityAllow,
      Value<bool>? hasTax,
      Value<bool>? hasAlternated,
      Value<bool>? newData,
      Value<int>? notifyBefore,
      Value<int>? taxRate,
      Value<String>? itemCompany,
      Value<String>? orignalCountry,
      Value<String>? itemDescription,
      Value<String>? note}) {
    return ItemTableCompanion(
      id: id ?? this.id,
      itemGroupId: itemGroupId ?? this.itemGroupId,
      itemCode: itemCode ?? this.itemCode,
      name: name ?? this.name,
      enName: enName ?? this.enName,
      type: type ?? this.type,
      itemLimit: itemLimit ?? this.itemLimit,
      itemImage: itemImage ?? this.itemImage,
      isExpire: isExpire ?? this.isExpire,
      freeQuantityAllow: freeQuantityAllow ?? this.freeQuantityAllow,
      hasTax: hasTax ?? this.hasTax,
      hasAlternated: hasAlternated ?? this.hasAlternated,
      newData: newData ?? this.newData,
      notifyBefore: notifyBefore ?? this.notifyBefore,
      taxRate: taxRate ?? this.taxRate,
      itemCompany: itemCompany ?? this.itemCompany,
      orignalCountry: orignalCountry ?? this.orignalCountry,
      itemDescription: itemDescription ?? this.itemDescription,
      note: note ?? this.note,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemGroupId.present) {
      map['item_group_id'] = Variable<int>(itemGroupId.value);
    }
    if (itemCode.present) {
      map['item_code'] = Variable<int>(itemCode.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (enName.present) {
      map['en_name'] = Variable<String>(enName.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (itemLimit.present) {
      map['item_limit'] = Variable<int>(itemLimit.value);
    }
    if (itemImage.present) {
      map['item_image'] = Variable<Uint8List>(itemImage.value);
    }
    if (isExpire.present) {
      map['is_expire'] = Variable<bool>(isExpire.value);
    }
    if (freeQuantityAllow.present) {
      map['free_quantity_allow'] = Variable<bool>(freeQuantityAllow.value);
    }
    if (hasTax.present) {
      map['has_tax'] = Variable<bool>(hasTax.value);
    }
    if (hasAlternated.present) {
      map['has_alternated'] = Variable<bool>(hasAlternated.value);
    }
    if (newData.present) {
      map['new_data'] = Variable<bool>(newData.value);
    }
    if (notifyBefore.present) {
      map['notify_before'] = Variable<int>(notifyBefore.value);
    }
    if (taxRate.present) {
      map['tax_rate'] = Variable<int>(taxRate.value);
    }
    if (itemCompany.present) {
      map['item_company'] = Variable<String>(itemCompany.value);
    }
    if (orignalCountry.present) {
      map['orignal_country'] = Variable<String>(orignalCountry.value);
    }
    if (itemDescription.present) {
      map['item_description'] = Variable<String>(itemDescription.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemTableCompanion(')
          ..write('id: $id, ')
          ..write('itemGroupId: $itemGroupId, ')
          ..write('itemCode: $itemCode, ')
          ..write('name: $name, ')
          ..write('enName: $enName, ')
          ..write('type: $type, ')
          ..write('itemLimit: $itemLimit, ')
          ..write('itemImage: $itemImage, ')
          ..write('isExpire: $isExpire, ')
          ..write('freeQuantityAllow: $freeQuantityAllow, ')
          ..write('hasTax: $hasTax, ')
          ..write('hasAlternated: $hasAlternated, ')
          ..write('newData: $newData, ')
          ..write('notifyBefore: $notifyBefore, ')
          ..write('taxRate: $taxRate, ')
          ..write('itemCompany: $itemCompany, ')
          ..write('orignalCountry: $orignalCountry, ')
          ..write('itemDescription: $itemDescription, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

class $ItemUnitTableTable extends ItemUnitTable
    with TableInfo<$ItemUnitTableTable, ItemUnitsModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemUnitTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES item_table (id)'));
  static const VerificationMeta _itemUnitIdMeta =
      const VerificationMeta('itemUnitId');
  @override
  late final GeneratedColumn<int> itemUnitId = GeneratedColumn<int>(
      'item_unit_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES unit_table (id)'));
  static const VerificationMeta _unitFactorMeta =
      const VerificationMeta('unitFactor');
  @override
  late final GeneratedColumn<int> unitFactor = GeneratedColumn<int>(
      'unit_factor', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _wholeSalepriceMeta =
      const VerificationMeta('wholeSaleprice');
  @override
  late final GeneratedColumn<double> wholeSaleprice = GeneratedColumn<double>(
      'whole_saleprice', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _retailPriceMeta =
      const VerificationMeta('retailPrice');
  @override
  late final GeneratedColumn<double> retailPrice = GeneratedColumn<double>(
      'retail_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _spacialPriceMeta =
      const VerificationMeta('spacialPrice');
  @override
  late final GeneratedColumn<double> spacialPrice = GeneratedColumn<double>(
      'spacial_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _intialCostMeta =
      const VerificationMeta('intialCost');
  @override
  late final GeneratedColumn<double> intialCost = GeneratedColumn<double>(
      'intial_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _itemDiscountMeta =
      const VerificationMeta('itemDiscount');
  @override
  late final GeneratedColumn<double> itemDiscount = GeneratedColumn<double>(
      'item_discount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _unitBarcodeMeta =
      const VerificationMeta('unitBarcode');
  @override
  late final GeneratedColumn<String> unitBarcode = GeneratedColumn<String>(
      'unit_barcode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _newDataMeta =
      const VerificationMeta('newData');
  @override
  late final GeneratedColumn<bool> newData = GeneratedColumn<bool>(
      'new_data', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("new_data" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        itemId,
        itemUnitId,
        unitFactor,
        wholeSaleprice,
        retailPrice,
        spacialPrice,
        intialCost,
        itemDiscount,
        unitBarcode,
        newData
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_unit_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemUnitsModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('item_unit_id')) {
      context.handle(
          _itemUnitIdMeta,
          itemUnitId.isAcceptableOrUnknown(
              data['item_unit_id']!, _itemUnitIdMeta));
    } else if (isInserting) {
      context.missing(_itemUnitIdMeta);
    }
    if (data.containsKey('unit_factor')) {
      context.handle(
          _unitFactorMeta,
          unitFactor.isAcceptableOrUnknown(
              data['unit_factor']!, _unitFactorMeta));
    } else if (isInserting) {
      context.missing(_unitFactorMeta);
    }
    if (data.containsKey('whole_saleprice')) {
      context.handle(
          _wholeSalepriceMeta,
          wholeSaleprice.isAcceptableOrUnknown(
              data['whole_saleprice']!, _wholeSalepriceMeta));
    } else if (isInserting) {
      context.missing(_wholeSalepriceMeta);
    }
    if (data.containsKey('retail_price')) {
      context.handle(
          _retailPriceMeta,
          retailPrice.isAcceptableOrUnknown(
              data['retail_price']!, _retailPriceMeta));
    } else if (isInserting) {
      context.missing(_retailPriceMeta);
    }
    if (data.containsKey('spacial_price')) {
      context.handle(
          _spacialPriceMeta,
          spacialPrice.isAcceptableOrUnknown(
              data['spacial_price']!, _spacialPriceMeta));
    } else if (isInserting) {
      context.missing(_spacialPriceMeta);
    }
    if (data.containsKey('intial_cost')) {
      context.handle(
          _intialCostMeta,
          intialCost.isAcceptableOrUnknown(
              data['intial_cost']!, _intialCostMeta));
    } else if (isInserting) {
      context.missing(_intialCostMeta);
    }
    if (data.containsKey('item_discount')) {
      context.handle(
          _itemDiscountMeta,
          itemDiscount.isAcceptableOrUnknown(
              data['item_discount']!, _itemDiscountMeta));
    } else if (isInserting) {
      context.missing(_itemDiscountMeta);
    }
    if (data.containsKey('unit_barcode')) {
      context.handle(
          _unitBarcodeMeta,
          unitBarcode.isAcceptableOrUnknown(
              data['unit_barcode']!, _unitBarcodeMeta));
    } else if (isInserting) {
      context.missing(_unitBarcodeMeta);
    }
    if (data.containsKey('new_data')) {
      context.handle(_newDataMeta,
          newData.isAcceptableOrUnknown(data['new_data']!, _newDataMeta));
    } else if (isInserting) {
      context.missing(_newDataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemUnitsModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemUnitsModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      itemUnitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_unit_id'])!,
      unitFactor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unit_factor'])!,
      wholeSaleprice: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}whole_saleprice'])!,
      retailPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}retail_price'])!,
      spacialPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}spacial_price'])!,
      intialCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}intial_cost'])!,
      itemDiscount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}item_discount'])!,
      unitBarcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit_barcode'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
    );
  }

  @override
  $ItemUnitTableTable createAlias(String alias) {
    return $ItemUnitTableTable(attachedDatabase, alias);
  }
}

class ItemUnitTableCompanion extends UpdateCompanion<ItemUnitsModel> {
  final Value<int> id;
  final Value<int> itemId;
  final Value<int> itemUnitId;
  final Value<int> unitFactor;
  final Value<double> wholeSaleprice;
  final Value<double> retailPrice;
  final Value<double> spacialPrice;
  final Value<double> intialCost;
  final Value<double> itemDiscount;
  final Value<String> unitBarcode;
  final Value<bool> newData;
  const ItemUnitTableCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.itemUnitId = const Value.absent(),
    this.unitFactor = const Value.absent(),
    this.wholeSaleprice = const Value.absent(),
    this.retailPrice = const Value.absent(),
    this.spacialPrice = const Value.absent(),
    this.intialCost = const Value.absent(),
    this.itemDiscount = const Value.absent(),
    this.unitBarcode = const Value.absent(),
    this.newData = const Value.absent(),
  });
  ItemUnitTableCompanion.insert({
    this.id = const Value.absent(),
    required int itemId,
    required int itemUnitId,
    required int unitFactor,
    required double wholeSaleprice,
    required double retailPrice,
    required double spacialPrice,
    required double intialCost,
    required double itemDiscount,
    required String unitBarcode,
    required bool newData,
  })  : itemId = Value(itemId),
        itemUnitId = Value(itemUnitId),
        unitFactor = Value(unitFactor),
        wholeSaleprice = Value(wholeSaleprice),
        retailPrice = Value(retailPrice),
        spacialPrice = Value(spacialPrice),
        intialCost = Value(intialCost),
        itemDiscount = Value(itemDiscount),
        unitBarcode = Value(unitBarcode),
        newData = Value(newData);
  static Insertable<ItemUnitsModel> custom({
    Expression<int>? id,
    Expression<int>? itemId,
    Expression<int>? itemUnitId,
    Expression<int>? unitFactor,
    Expression<double>? wholeSaleprice,
    Expression<double>? retailPrice,
    Expression<double>? spacialPrice,
    Expression<double>? intialCost,
    Expression<double>? itemDiscount,
    Expression<String>? unitBarcode,
    Expression<bool>? newData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (itemUnitId != null) 'item_unit_id': itemUnitId,
      if (unitFactor != null) 'unit_factor': unitFactor,
      if (wholeSaleprice != null) 'whole_saleprice': wholeSaleprice,
      if (retailPrice != null) 'retail_price': retailPrice,
      if (spacialPrice != null) 'spacial_price': spacialPrice,
      if (intialCost != null) 'intial_cost': intialCost,
      if (itemDiscount != null) 'item_discount': itemDiscount,
      if (unitBarcode != null) 'unit_barcode': unitBarcode,
      if (newData != null) 'new_data': newData,
    });
  }

  ItemUnitTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? itemId,
      Value<int>? itemUnitId,
      Value<int>? unitFactor,
      Value<double>? wholeSaleprice,
      Value<double>? retailPrice,
      Value<double>? spacialPrice,
      Value<double>? intialCost,
      Value<double>? itemDiscount,
      Value<String>? unitBarcode,
      Value<bool>? newData}) {
    return ItemUnitTableCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      itemUnitId: itemUnitId ?? this.itemUnitId,
      unitFactor: unitFactor ?? this.unitFactor,
      wholeSaleprice: wholeSaleprice ?? this.wholeSaleprice,
      retailPrice: retailPrice ?? this.retailPrice,
      spacialPrice: spacialPrice ?? this.spacialPrice,
      intialCost: intialCost ?? this.intialCost,
      itemDiscount: itemDiscount ?? this.itemDiscount,
      unitBarcode: unitBarcode ?? this.unitBarcode,
      newData: newData ?? this.newData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (itemUnitId.present) {
      map['item_unit_id'] = Variable<int>(itemUnitId.value);
    }
    if (unitFactor.present) {
      map['unit_factor'] = Variable<int>(unitFactor.value);
    }
    if (wholeSaleprice.present) {
      map['whole_saleprice'] = Variable<double>(wholeSaleprice.value);
    }
    if (retailPrice.present) {
      map['retail_price'] = Variable<double>(retailPrice.value);
    }
    if (spacialPrice.present) {
      map['spacial_price'] = Variable<double>(spacialPrice.value);
    }
    if (intialCost.present) {
      map['intial_cost'] = Variable<double>(intialCost.value);
    }
    if (itemDiscount.present) {
      map['item_discount'] = Variable<double>(itemDiscount.value);
    }
    if (unitBarcode.present) {
      map['unit_barcode'] = Variable<String>(unitBarcode.value);
    }
    if (newData.present) {
      map['new_data'] = Variable<bool>(newData.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemUnitTableCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('itemUnitId: $itemUnitId, ')
          ..write('unitFactor: $unitFactor, ')
          ..write('wholeSaleprice: $wholeSaleprice, ')
          ..write('retailPrice: $retailPrice, ')
          ..write('spacialPrice: $spacialPrice, ')
          ..write('intialCost: $intialCost, ')
          ..write('itemDiscount: $itemDiscount, ')
          ..write('unitBarcode: $unitBarcode, ')
          ..write('newData: $newData')
          ..write(')'))
        .toString();
  }
}

class $PaymentTableTable extends PaymentTable
    with TableInfo<$PaymentTableTable, PaymentModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _methodNameMeta =
      const VerificationMeta('methodName');
  @override
  late final GeneratedColumn<String> methodName = GeneratedColumn<String>(
      'method_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _methodNoteMeta =
      const VerificationMeta('methodNote');
  @override
  late final GeneratedColumn<String> methodNote = GeneratedColumn<String>(
      'method_note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _newDataMeta =
      const VerificationMeta('newData');
  @override
  late final GeneratedColumn<bool> newData = GeneratedColumn<bool>(
      'new_data', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("new_data" IN (0, 1))'));
  static const VerificationMeta _isDefaultMeta =
      const VerificationMeta('isDefault');
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
      'is_default', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_default" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, methodName, methodNote, newData, isDefault];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payment_table';
  @override
  VerificationContext validateIntegrity(Insertable<PaymentModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('method_name')) {
      context.handle(
          _methodNameMeta,
          methodName.isAcceptableOrUnknown(
              data['method_name']!, _methodNameMeta));
    } else if (isInserting) {
      context.missing(_methodNameMeta);
    }
    if (data.containsKey('method_note')) {
      context.handle(
          _methodNoteMeta,
          methodNote.isAcceptableOrUnknown(
              data['method_note']!, _methodNoteMeta));
    } else if (isInserting) {
      context.missing(_methodNoteMeta);
    }
    if (data.containsKey('new_data')) {
      context.handle(_newDataMeta,
          newData.isAcceptableOrUnknown(data['new_data']!, _newDataMeta));
    } else if (isInserting) {
      context.missing(_newDataMeta);
    }
    if (data.containsKey('is_default')) {
      context.handle(_isDefaultMeta,
          isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta));
    } else if (isInserting) {
      context.missing(_isDefaultMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PaymentModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PaymentModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      methodName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}method_name'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
      isDefault: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_default'])!,
      methodNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}method_note'])!,
    );
  }

  @override
  $PaymentTableTable createAlias(String alias) {
    return $PaymentTableTable(attachedDatabase, alias);
  }
}

class PaymentTableCompanion extends UpdateCompanion<PaymentModel> {
  final Value<int> id;
  final Value<int> userId;
  final Value<String> methodName;
  final Value<String> methodNote;
  final Value<bool> newData;
  final Value<bool> isDefault;
  const PaymentTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.methodName = const Value.absent(),
    this.methodNote = const Value.absent(),
    this.newData = const Value.absent(),
    this.isDefault = const Value.absent(),
  });
  PaymentTableCompanion.insert({
    this.id = const Value.absent(),
    required int userId,
    required String methodName,
    required String methodNote,
    required bool newData,
    required bool isDefault,
  })  : userId = Value(userId),
        methodName = Value(methodName),
        methodNote = Value(methodNote),
        newData = Value(newData),
        isDefault = Value(isDefault);
  static Insertable<PaymentModel> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<String>? methodName,
    Expression<String>? methodNote,
    Expression<bool>? newData,
    Expression<bool>? isDefault,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (methodName != null) 'method_name': methodName,
      if (methodNote != null) 'method_note': methodNote,
      if (newData != null) 'new_data': newData,
      if (isDefault != null) 'is_default': isDefault,
    });
  }

  PaymentTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? userId,
      Value<String>? methodName,
      Value<String>? methodNote,
      Value<bool>? newData,
      Value<bool>? isDefault}) {
    return PaymentTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      methodName: methodName ?? this.methodName,
      methodNote: methodNote ?? this.methodNote,
      newData: newData ?? this.newData,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (methodName.present) {
      map['method_name'] = Variable<String>(methodName.value);
    }
    if (methodNote.present) {
      map['method_note'] = Variable<String>(methodNote.value);
    }
    if (newData.present) {
      map['new_data'] = Variable<bool>(newData.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('methodName: $methodName, ')
          ..write('methodNote: $methodNote, ')
          ..write('newData: $newData, ')
          ..write('isDefault: $isDefault')
          ..write(')'))
        .toString();
  }
}

class $SystemDocTableTable extends SystemDocTable
    with TableInfo<$SystemDocTableTable, SystemDocModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SystemDocTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _docTypeMeta =
      const VerificationMeta('docType');
  @override
  late final GeneratedColumn<int> docType = GeneratedColumn<int>(
      'doc_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _docNameMeta =
      const VerificationMeta('docName');
  @override
  late final GeneratedColumn<String> docName = GeneratedColumn<String>(
      'doc_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, docType, docName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'system_doc_table';
  @override
  VerificationContext validateIntegrity(Insertable<SystemDocModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('doc_type')) {
      context.handle(_docTypeMeta,
          docType.isAcceptableOrUnknown(data['doc_type']!, _docTypeMeta));
    } else if (isInserting) {
      context.missing(_docTypeMeta);
    }
    if (data.containsKey('doc_name')) {
      context.handle(_docNameMeta,
          docName.isAcceptableOrUnknown(data['doc_name']!, _docNameMeta));
    } else if (isInserting) {
      context.missing(_docNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SystemDocModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SystemDocModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      docName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}doc_name'])!,
      docType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}doc_type'])!,
    );
  }

  @override
  $SystemDocTableTable createAlias(String alias) {
    return $SystemDocTableTable(attachedDatabase, alias);
  }
}

class SystemDocTableCompanion extends UpdateCompanion<SystemDocModel> {
  final Value<int> id;
  final Value<int> docType;
  final Value<String> docName;
  const SystemDocTableCompanion({
    this.id = const Value.absent(),
    this.docType = const Value.absent(),
    this.docName = const Value.absent(),
  });
  SystemDocTableCompanion.insert({
    this.id = const Value.absent(),
    required int docType,
    required String docName,
  })  : docType = Value(docType),
        docName = Value(docName);
  static Insertable<SystemDocModel> custom({
    Expression<int>? id,
    Expression<int>? docType,
    Expression<String>? docName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (docType != null) 'doc_type': docType,
      if (docName != null) 'doc_name': docName,
    });
  }

  SystemDocTableCompanion copyWith(
      {Value<int>? id, Value<int>? docType, Value<String>? docName}) {
    return SystemDocTableCompanion(
      id: id ?? this.id,
      docType: docType ?? this.docType,
      docName: docName ?? this.docName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (docType.present) {
      map['doc_type'] = Variable<int>(docType.value);
    }
    if (docName.present) {
      map['doc_name'] = Variable<String>(docName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SystemDocTableCompanion(')
          ..write('id: $id, ')
          ..write('docType: $docType, ')
          ..write('docName: $docName')
          ..write(')'))
        .toString();
  }
}

class $UserSettingTableTable extends UserSettingTable
    with TableInfo<$UserSettingTableTable, UserSettingModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserSettingTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _custParentMeta =
      const VerificationMeta('custParent');
  @override
  late final GeneratedColumn<int> custParent = GeneratedColumn<int>(
      'cust_parent', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _custGroupMeta =
      const VerificationMeta('custGroup');
  @override
  late final GeneratedColumn<int> custGroup = GeneratedColumn<int>(
      'cust_group', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _generateCodeMeta =
      const VerificationMeta('generateCode');
  @override
  late final GeneratedColumn<String> generateCode = GeneratedColumn<String>(
      'generate_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, custParent, custGroup, generateCode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_setting_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserSettingModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cust_parent')) {
      context.handle(
          _custParentMeta,
          custParent.isAcceptableOrUnknown(
              data['cust_parent']!, _custParentMeta));
    } else if (isInserting) {
      context.missing(_custParentMeta);
    }
    if (data.containsKey('cust_group')) {
      context.handle(_custGroupMeta,
          custGroup.isAcceptableOrUnknown(data['cust_group']!, _custGroupMeta));
    } else if (isInserting) {
      context.missing(_custGroupMeta);
    }
    if (data.containsKey('generate_code')) {
      context.handle(
          _generateCodeMeta,
          generateCode.isAcceptableOrUnknown(
              data['generate_code']!, _generateCodeMeta));
    } else if (isInserting) {
      context.missing(_generateCodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserSettingModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserSettingModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      custParent: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cust_parent'])!,
      generateCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}generate_code'])!,
      custGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cust_group'])!,
    );
  }

  @override
  $UserSettingTableTable createAlias(String alias) {
    return $UserSettingTableTable(attachedDatabase, alias);
  }
}

class UserSettingTableCompanion extends UpdateCompanion<UserSettingModel> {
  final Value<int> id;
  final Value<int> custParent;
  final Value<int> custGroup;
  final Value<String> generateCode;
  const UserSettingTableCompanion({
    this.id = const Value.absent(),
    this.custParent = const Value.absent(),
    this.custGroup = const Value.absent(),
    this.generateCode = const Value.absent(),
  });
  UserSettingTableCompanion.insert({
    this.id = const Value.absent(),
    required int custParent,
    required int custGroup,
    required String generateCode,
  })  : custParent = Value(custParent),
        custGroup = Value(custGroup),
        generateCode = Value(generateCode);
  static Insertable<UserSettingModel> custom({
    Expression<int>? id,
    Expression<int>? custParent,
    Expression<int>? custGroup,
    Expression<String>? generateCode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (custParent != null) 'cust_parent': custParent,
      if (custGroup != null) 'cust_group': custGroup,
      if (generateCode != null) 'generate_code': generateCode,
    });
  }

  UserSettingTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? custParent,
      Value<int>? custGroup,
      Value<String>? generateCode}) {
    return UserSettingTableCompanion(
      id: id ?? this.id,
      custParent: custParent ?? this.custParent,
      custGroup: custGroup ?? this.custGroup,
      generateCode: generateCode ?? this.generateCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (custParent.present) {
      map['cust_parent'] = Variable<int>(custParent.value);
    }
    if (custGroup.present) {
      map['cust_group'] = Variable<int>(custGroup.value);
    }
    if (generateCode.present) {
      map['generate_code'] = Variable<String>(generateCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserSettingTableCompanion(')
          ..write('id: $id, ')
          ..write('custParent: $custParent, ')
          ..write('custGroup: $custGroup, ')
          ..write('generateCode: $generateCode')
          ..write(')'))
        .toString();
  }
}

class $ItemAlterTableTable extends ItemAlterTable
    with TableInfo<$ItemAlterTableTable, ItemAlterModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemAlterTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES item_table (id)'));
  static const VerificationMeta _itemAlterIdMeta =
      const VerificationMeta('itemAlterId');
  @override
  late final GeneratedColumn<int> itemAlterId = GeneratedColumn<int>(
      'item_alter_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES item_table (id)'));
  static const VerificationMeta _itemOrderMeta =
      const VerificationMeta('itemOrder');
  @override
  late final GeneratedColumn<int> itemOrder = GeneratedColumn<int>(
      'item_order', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, itemId, itemAlterId, itemOrder];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_alter_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemAlterModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('item_alter_id')) {
      context.handle(
          _itemAlterIdMeta,
          itemAlterId.isAcceptableOrUnknown(
              data['item_alter_id']!, _itemAlterIdMeta));
    } else if (isInserting) {
      context.missing(_itemAlterIdMeta);
    }
    if (data.containsKey('item_order')) {
      context.handle(_itemOrderMeta,
          itemOrder.isAcceptableOrUnknown(data['item_order']!, _itemOrderMeta));
    } else if (isInserting) {
      context.missing(_itemOrderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemAlterModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemAlterModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      itemAlterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_alter_id'])!,
      itemOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_order'])!,
    );
  }

  @override
  $ItemAlterTableTable createAlias(String alias) {
    return $ItemAlterTableTable(attachedDatabase, alias);
  }
}

class ItemAlterTableCompanion extends UpdateCompanion<ItemAlterModel> {
  final Value<int> id;
  final Value<int> itemId;
  final Value<int> itemAlterId;
  final Value<int> itemOrder;
  const ItemAlterTableCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.itemAlterId = const Value.absent(),
    this.itemOrder = const Value.absent(),
  });
  ItemAlterTableCompanion.insert({
    this.id = const Value.absent(),
    required int itemId,
    required int itemAlterId,
    required int itemOrder,
  })  : itemId = Value(itemId),
        itemAlterId = Value(itemAlterId),
        itemOrder = Value(itemOrder);
  static Insertable<ItemAlterModel> custom({
    Expression<int>? id,
    Expression<int>? itemId,
    Expression<int>? itemAlterId,
    Expression<int>? itemOrder,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (itemAlterId != null) 'item_alter_id': itemAlterId,
      if (itemOrder != null) 'item_order': itemOrder,
    });
  }

  ItemAlterTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? itemId,
      Value<int>? itemAlterId,
      Value<int>? itemOrder}) {
    return ItemAlterTableCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      itemAlterId: itemAlterId ?? this.itemAlterId,
      itemOrder: itemOrder ?? this.itemOrder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (itemAlterId.present) {
      map['item_alter_id'] = Variable<int>(itemAlterId.value);
    }
    if (itemOrder.present) {
      map['item_order'] = Variable<int>(itemOrder.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemAlterTableCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('itemAlterId: $itemAlterId, ')
          ..write('itemOrder: $itemOrder')
          ..write(')'))
        .toString();
  }
}

class $BarcodeTableTable extends BarcodeTable
    with TableInfo<$BarcodeTableTable, BarcodeModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BarcodeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES item_table (id)'));
  static const VerificationMeta _itemBarcodeMeta =
      const VerificationMeta('itemBarcode');
  @override
  late final GeneratedColumn<String> itemBarcode = GeneratedColumn<String>(
      'item_barcode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, itemId, itemBarcode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'barcode_table';
  @override
  VerificationContext validateIntegrity(Insertable<BarcodeModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('item_barcode')) {
      context.handle(
          _itemBarcodeMeta,
          itemBarcode.isAcceptableOrUnknown(
              data['item_barcode']!, _itemBarcodeMeta));
    } else if (isInserting) {
      context.missing(_itemBarcodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BarcodeModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BarcodeModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      itemBarcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_barcode'])!,
    );
  }

  @override
  $BarcodeTableTable createAlias(String alias) {
    return $BarcodeTableTable(attachedDatabase, alias);
  }
}

class BarcodeTableCompanion extends UpdateCompanion<BarcodeModel> {
  final Value<int> id;
  final Value<int> itemId;
  final Value<String> itemBarcode;
  const BarcodeTableCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.itemBarcode = const Value.absent(),
  });
  BarcodeTableCompanion.insert({
    this.id = const Value.absent(),
    required int itemId,
    required String itemBarcode,
  })  : itemId = Value(itemId),
        itemBarcode = Value(itemBarcode);
  static Insertable<BarcodeModel> custom({
    Expression<int>? id,
    Expression<int>? itemId,
    Expression<String>? itemBarcode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (itemBarcode != null) 'item_barcode': itemBarcode,
    });
  }

  BarcodeTableCompanion copyWith(
      {Value<int>? id, Value<int>? itemId, Value<String>? itemBarcode}) {
    return BarcodeTableCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      itemBarcode: itemBarcode ?? this.itemBarcode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (itemBarcode.present) {
      map['item_barcode'] = Variable<String>(itemBarcode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BarcodeTableCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('itemBarcode: $itemBarcode')
          ..write(')'))
        .toString();
  }
}

class $AccountTableTable extends AccountTable
    with TableInfo<$AccountTableTable, AccountModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _accNumberMeta =
      const VerificationMeta('accNumber');
  @override
  late final GeneratedColumn<int> accNumber = GeneratedColumn<int>(
      'acc_number', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _refNumberMeta =
      const VerificationMeta('refNumber');
  @override
  late final GeneratedColumn<int> refNumber = GeneratedColumn<int>(
      'ref_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _accNameMeta =
      const VerificationMeta('accName');
  @override
  late final GeneratedColumn<String> accName = GeneratedColumn<String>(
      'acc_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accParentMeta =
      const VerificationMeta('accParent');
  @override
  late final GeneratedColumn<int> accParent = GeneratedColumn<int>(
      'acc_parent', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _accTypeMeta =
      const VerificationMeta('accType');
  @override
  late final GeneratedColumn<int> accType = GeneratedColumn<int>(
      'acc_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accCatagoryMeta =
      const VerificationMeta('accCatagory');
  @override
  late final GeneratedColumn<int> accCatagory = GeneratedColumn<int>(
      'acc_catagory', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _accCatIdMeta =
      const VerificationMeta('accCatId');
  @override
  late final GeneratedColumn<int> accCatId = GeneratedColumn<int>(
      'acc_cat_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _accPhoneMeta =
      const VerificationMeta('accPhone');
  @override
  late final GeneratedColumn<String> accPhone = GeneratedColumn<String>(
      'acc_phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accLimitMeta =
      const VerificationMeta('accLimit');
  @override
  late final GeneratedColumn<int> accLimit = GeneratedColumn<int>(
      'acc_limit', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _paymentTypeMeta =
      const VerificationMeta('paymentType');
  @override
  late final GeneratedColumn<int> paymentType = GeneratedColumn<int>(
      'payment_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _branchIdMeta =
      const VerificationMeta('branchId');
  @override
  late final GeneratedColumn<int> branchId = GeneratedColumn<int>(
      'branch_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _accStopedMeta =
      const VerificationMeta('accStoped');
  @override
  late final GeneratedColumn<bool> accStoped = GeneratedColumn<bool>(
      'acc_stoped', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("acc_stoped" IN (0, 1))'));
  static const VerificationMeta _newDataMeta =
      const VerificationMeta('newData');
  @override
  late final GeneratedColumn<bool> newData = GeneratedColumn<bool>(
      'new_data', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("new_data" IN (0, 1))'));
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<Uint8List> image = GeneratedColumn<Uint8List>(
      'image', aliasedName, true,
      type: DriftSqlType.blob, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        accNumber,
        refNumber,
        accName,
        accParent,
        accType,
        note,
        accCatagory,
        accCatId,
        accPhone,
        address,
        email,
        accLimit,
        paymentType,
        branchId,
        accStoped,
        newData,
        image
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'account_table';
  @override
  VerificationContext validateIntegrity(Insertable<AccountModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('acc_number')) {
      context.handle(_accNumberMeta,
          accNumber.isAcceptableOrUnknown(data['acc_number']!, _accNumberMeta));
    } else if (isInserting) {
      context.missing(_accNumberMeta);
    }
    if (data.containsKey('ref_number')) {
      context.handle(_refNumberMeta,
          refNumber.isAcceptableOrUnknown(data['ref_number']!, _refNumberMeta));
    }
    if (data.containsKey('acc_name')) {
      context.handle(_accNameMeta,
          accName.isAcceptableOrUnknown(data['acc_name']!, _accNameMeta));
    } else if (isInserting) {
      context.missing(_accNameMeta);
    }
    if (data.containsKey('acc_parent')) {
      context.handle(_accParentMeta,
          accParent.isAcceptableOrUnknown(data['acc_parent']!, _accParentMeta));
    } else if (isInserting) {
      context.missing(_accParentMeta);
    }
    if (data.containsKey('acc_type')) {
      context.handle(_accTypeMeta,
          accType.isAcceptableOrUnknown(data['acc_type']!, _accTypeMeta));
    } else if (isInserting) {
      context.missing(_accTypeMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('acc_catagory')) {
      context.handle(
          _accCatagoryMeta,
          accCatagory.isAcceptableOrUnknown(
              data['acc_catagory']!, _accCatagoryMeta));
    } else if (isInserting) {
      context.missing(_accCatagoryMeta);
    }
    if (data.containsKey('acc_cat_id')) {
      context.handle(_accCatIdMeta,
          accCatId.isAcceptableOrUnknown(data['acc_cat_id']!, _accCatIdMeta));
    } else if (isInserting) {
      context.missing(_accCatIdMeta);
    }
    if (data.containsKey('acc_phone')) {
      context.handle(_accPhoneMeta,
          accPhone.isAcceptableOrUnknown(data['acc_phone']!, _accPhoneMeta));
    } else if (isInserting) {
      context.missing(_accPhoneMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('acc_limit')) {
      context.handle(_accLimitMeta,
          accLimit.isAcceptableOrUnknown(data['acc_limit']!, _accLimitMeta));
    } else if (isInserting) {
      context.missing(_accLimitMeta);
    }
    if (data.containsKey('payment_type')) {
      context.handle(
          _paymentTypeMeta,
          paymentType.isAcceptableOrUnknown(
              data['payment_type']!, _paymentTypeMeta));
    } else if (isInserting) {
      context.missing(_paymentTypeMeta);
    }
    if (data.containsKey('branch_id')) {
      context.handle(_branchIdMeta,
          branchId.isAcceptableOrUnknown(data['branch_id']!, _branchIdMeta));
    } else if (isInserting) {
      context.missing(_branchIdMeta);
    }
    if (data.containsKey('acc_stoped')) {
      context.handle(_accStopedMeta,
          accStoped.isAcceptableOrUnknown(data['acc_stoped']!, _accStopedMeta));
    } else if (isInserting) {
      context.missing(_accStopedMeta);
    }
    if (data.containsKey('new_data')) {
      context.handle(_newDataMeta,
          newData.isAcceptableOrUnknown(data['new_data']!, _newDataMeta));
    } else if (isInserting) {
      context.missing(_newDataMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AccountModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AccountModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      accNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_number'])!,
      accName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}acc_name'])!,
      accParent: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_parent'])!,
      accType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_type'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      accCatagory: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_catagory'])!,
      accCatId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_cat_id'])!,
      accPhone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}acc_phone'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      accLimit: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_limit'])!,
      paymentType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}payment_type'])!,
      branchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}branch_id'])!,
      accStoped: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}acc_stoped'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}image']),
      refNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ref_number']),
    );
  }

  @override
  $AccountTableTable createAlias(String alias) {
    return $AccountTableTable(attachedDatabase, alias);
  }
}

class AccountTableCompanion extends UpdateCompanion<AccountModel> {
  final Value<int> id;
  final Value<int> accNumber;
  final Value<int?> refNumber;
  final Value<String> accName;
  final Value<int> accParent;
  final Value<int> accType;
  final Value<String> note;
  final Value<int> accCatagory;
  final Value<int> accCatId;
  final Value<String> accPhone;
  final Value<String> address;
  final Value<String> email;
  final Value<int> accLimit;
  final Value<int> paymentType;
  final Value<int> branchId;
  final Value<bool> accStoped;
  final Value<bool> newData;
  final Value<Uint8List?> image;
  const AccountTableCompanion({
    this.id = const Value.absent(),
    this.accNumber = const Value.absent(),
    this.refNumber = const Value.absent(),
    this.accName = const Value.absent(),
    this.accParent = const Value.absent(),
    this.accType = const Value.absent(),
    this.note = const Value.absent(),
    this.accCatagory = const Value.absent(),
    this.accCatId = const Value.absent(),
    this.accPhone = const Value.absent(),
    this.address = const Value.absent(),
    this.email = const Value.absent(),
    this.accLimit = const Value.absent(),
    this.paymentType = const Value.absent(),
    this.branchId = const Value.absent(),
    this.accStoped = const Value.absent(),
    this.newData = const Value.absent(),
    this.image = const Value.absent(),
  });
  AccountTableCompanion.insert({
    this.id = const Value.absent(),
    required int accNumber,
    this.refNumber = const Value.absent(),
    required String accName,
    required int accParent,
    required int accType,
    required String note,
    required int accCatagory,
    required int accCatId,
    required String accPhone,
    required String address,
    required String email,
    required int accLimit,
    required int paymentType,
    required int branchId,
    required bool accStoped,
    required bool newData,
    this.image = const Value.absent(),
  })  : accNumber = Value(accNumber),
        accName = Value(accName),
        accParent = Value(accParent),
        accType = Value(accType),
        note = Value(note),
        accCatagory = Value(accCatagory),
        accCatId = Value(accCatId),
        accPhone = Value(accPhone),
        address = Value(address),
        email = Value(email),
        accLimit = Value(accLimit),
        paymentType = Value(paymentType),
        branchId = Value(branchId),
        accStoped = Value(accStoped),
        newData = Value(newData);
  static Insertable<AccountModel> custom({
    Expression<int>? id,
    Expression<int>? accNumber,
    Expression<int>? refNumber,
    Expression<String>? accName,
    Expression<int>? accParent,
    Expression<int>? accType,
    Expression<String>? note,
    Expression<int>? accCatagory,
    Expression<int>? accCatId,
    Expression<String>? accPhone,
    Expression<String>? address,
    Expression<String>? email,
    Expression<int>? accLimit,
    Expression<int>? paymentType,
    Expression<int>? branchId,
    Expression<bool>? accStoped,
    Expression<bool>? newData,
    Expression<Uint8List>? image,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (accNumber != null) 'acc_number': accNumber,
      if (refNumber != null) 'ref_number': refNumber,
      if (accName != null) 'acc_name': accName,
      if (accParent != null) 'acc_parent': accParent,
      if (accType != null) 'acc_type': accType,
      if (note != null) 'note': note,
      if (accCatagory != null) 'acc_catagory': accCatagory,
      if (accCatId != null) 'acc_cat_id': accCatId,
      if (accPhone != null) 'acc_phone': accPhone,
      if (address != null) 'address': address,
      if (email != null) 'email': email,
      if (accLimit != null) 'acc_limit': accLimit,
      if (paymentType != null) 'payment_type': paymentType,
      if (branchId != null) 'branch_id': branchId,
      if (accStoped != null) 'acc_stoped': accStoped,
      if (newData != null) 'new_data': newData,
      if (image != null) 'image': image,
    });
  }

  AccountTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? accNumber,
      Value<int?>? refNumber,
      Value<String>? accName,
      Value<int>? accParent,
      Value<int>? accType,
      Value<String>? note,
      Value<int>? accCatagory,
      Value<int>? accCatId,
      Value<String>? accPhone,
      Value<String>? address,
      Value<String>? email,
      Value<int>? accLimit,
      Value<int>? paymentType,
      Value<int>? branchId,
      Value<bool>? accStoped,
      Value<bool>? newData,
      Value<Uint8List?>? image}) {
    return AccountTableCompanion(
      id: id ?? this.id,
      accNumber: accNumber ?? this.accNumber,
      refNumber: refNumber ?? this.refNumber,
      accName: accName ?? this.accName,
      accParent: accParent ?? this.accParent,
      accType: accType ?? this.accType,
      note: note ?? this.note,
      accCatagory: accCatagory ?? this.accCatagory,
      accCatId: accCatId ?? this.accCatId,
      accPhone: accPhone ?? this.accPhone,
      address: address ?? this.address,
      email: email ?? this.email,
      accLimit: accLimit ?? this.accLimit,
      paymentType: paymentType ?? this.paymentType,
      branchId: branchId ?? this.branchId,
      accStoped: accStoped ?? this.accStoped,
      newData: newData ?? this.newData,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (accNumber.present) {
      map['acc_number'] = Variable<int>(accNumber.value);
    }
    if (refNumber.present) {
      map['ref_number'] = Variable<int>(refNumber.value);
    }
    if (accName.present) {
      map['acc_name'] = Variable<String>(accName.value);
    }
    if (accParent.present) {
      map['acc_parent'] = Variable<int>(accParent.value);
    }
    if (accType.present) {
      map['acc_type'] = Variable<int>(accType.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (accCatagory.present) {
      map['acc_catagory'] = Variable<int>(accCatagory.value);
    }
    if (accCatId.present) {
      map['acc_cat_id'] = Variable<int>(accCatId.value);
    }
    if (accPhone.present) {
      map['acc_phone'] = Variable<String>(accPhone.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (accLimit.present) {
      map['acc_limit'] = Variable<int>(accLimit.value);
    }
    if (paymentType.present) {
      map['payment_type'] = Variable<int>(paymentType.value);
    }
    if (branchId.present) {
      map['branch_id'] = Variable<int>(branchId.value);
    }
    if (accStoped.present) {
      map['acc_stoped'] = Variable<bool>(accStoped.value);
    }
    if (newData.present) {
      map['new_data'] = Variable<bool>(newData.value);
    }
    if (image.present) {
      map['image'] = Variable<Uint8List>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountTableCompanion(')
          ..write('id: $id, ')
          ..write('accNumber: $accNumber, ')
          ..write('refNumber: $refNumber, ')
          ..write('accName: $accName, ')
          ..write('accParent: $accParent, ')
          ..write('accType: $accType, ')
          ..write('note: $note, ')
          ..write('accCatagory: $accCatagory, ')
          ..write('accCatId: $accCatId, ')
          ..write('accPhone: $accPhone, ')
          ..write('address: $address, ')
          ..write('email: $email, ')
          ..write('accLimit: $accLimit, ')
          ..write('paymentType: $paymentType, ')
          ..write('branchId: $branchId, ')
          ..write('accStoped: $accStoped, ')
          ..write('newData: $newData, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

class $StoreOperationTableTable extends StoreOperationTable
    with TableInfo<$StoreOperationTableTable, StoreOperationModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StoreOperationTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _operationIdMeta =
      const VerificationMeta('operationId');
  @override
  late final GeneratedColumn<int> operationId = GeneratedColumn<int>(
      'operation_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operationTypeMeta =
      const VerificationMeta('operationType');
  @override
  late final GeneratedColumn<int> operationType = GeneratedColumn<int>(
      'operation_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operationDateMeta =
      const VerificationMeta('operationDate');
  @override
  late final GeneratedColumn<DateTime> operationDate =
      GeneratedColumn<DateTime>('operation_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _operationInMeta =
      const VerificationMeta('operationIn');
  @override
  late final GeneratedColumn<bool> operationIn = GeneratedColumn<bool>(
      'operation_in', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("operation_in" IN (0, 1))'));
  static const VerificationMeta _storeIdMeta =
      const VerificationMeta('storeId');
  @override
  late final GeneratedColumn<int> storeId = GeneratedColumn<int>(
      'store_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES item_table (id)'));
  static const VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<int> unitId = GeneratedColumn<int>(
      'unit_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES unit_table (id)'));
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _averageCostMeta =
      const VerificationMeta('averageCost');
  @override
  late final GeneratedColumn<double> averageCost = GeneratedColumn<double>(
      'average_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _unitCostMeta =
      const VerificationMeta('unitCost');
  @override
  late final GeneratedColumn<double> unitCost = GeneratedColumn<double>(
      'unit_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _totalCostMeta =
      const VerificationMeta('totalCost');
  @override
  late final GeneratedColumn<double> totalCost = GeneratedColumn<double>(
      'total_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _unitFactorMeta =
      const VerificationMeta('unitFactor');
  @override
  late final GeneratedColumn<int> unitFactor = GeneratedColumn<int>(
      'unit_factor', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _qtyConvertMeta =
      const VerificationMeta('qtyConvert');
  @override
  late final GeneratedColumn<int> qtyConvert = GeneratedColumn<int>(
      'qty_convert', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _expirDateMeta =
      const VerificationMeta('expirDate');
  @override
  late final GeneratedColumn<String> expirDate = GeneratedColumn<String>(
      'expir_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addBranchMeta =
      const VerificationMeta('addBranch');
  @override
  late final GeneratedColumn<int> addBranch = GeneratedColumn<int>(
      'add_branch', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        operationId,
        operationType,
        operationDate,
        operationIn,
        storeId,
        itemId,
        unitId,
        quantity,
        averageCost,
        unitCost,
        totalCost,
        unitFactor,
        qtyConvert,
        expirDate,
        addBranch
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'store_operation_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<StoreOperationModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('operation_id')) {
      context.handle(
          _operationIdMeta,
          operationId.isAcceptableOrUnknown(
              data['operation_id']!, _operationIdMeta));
    } else if (isInserting) {
      context.missing(_operationIdMeta);
    }
    if (data.containsKey('operation_type')) {
      context.handle(
          _operationTypeMeta,
          operationType.isAcceptableOrUnknown(
              data['operation_type']!, _operationTypeMeta));
    } else if (isInserting) {
      context.missing(_operationTypeMeta);
    }
    if (data.containsKey('operation_date')) {
      context.handle(
          _operationDateMeta,
          operationDate.isAcceptableOrUnknown(
              data['operation_date']!, _operationDateMeta));
    } else if (isInserting) {
      context.missing(_operationDateMeta);
    }
    if (data.containsKey('operation_in')) {
      context.handle(
          _operationInMeta,
          operationIn.isAcceptableOrUnknown(
              data['operation_in']!, _operationInMeta));
    } else if (isInserting) {
      context.missing(_operationInMeta);
    }
    if (data.containsKey('store_id')) {
      context.handle(_storeIdMeta,
          storeId.isAcceptableOrUnknown(data['store_id']!, _storeIdMeta));
    } else if (isInserting) {
      context.missing(_storeIdMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('unit_id')) {
      context.handle(_unitIdMeta,
          unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta));
    } else if (isInserting) {
      context.missing(_unitIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('average_cost')) {
      context.handle(
          _averageCostMeta,
          averageCost.isAcceptableOrUnknown(
              data['average_cost']!, _averageCostMeta));
    } else if (isInserting) {
      context.missing(_averageCostMeta);
    }
    if (data.containsKey('unit_cost')) {
      context.handle(_unitCostMeta,
          unitCost.isAcceptableOrUnknown(data['unit_cost']!, _unitCostMeta));
    } else if (isInserting) {
      context.missing(_unitCostMeta);
    }
    if (data.containsKey('total_cost')) {
      context.handle(_totalCostMeta,
          totalCost.isAcceptableOrUnknown(data['total_cost']!, _totalCostMeta));
    } else if (isInserting) {
      context.missing(_totalCostMeta);
    }
    if (data.containsKey('unit_factor')) {
      context.handle(
          _unitFactorMeta,
          unitFactor.isAcceptableOrUnknown(
              data['unit_factor']!, _unitFactorMeta));
    } else if (isInserting) {
      context.missing(_unitFactorMeta);
    }
    if (data.containsKey('qty_convert')) {
      context.handle(
          _qtyConvertMeta,
          qtyConvert.isAcceptableOrUnknown(
              data['qty_convert']!, _qtyConvertMeta));
    } else if (isInserting) {
      context.missing(_qtyConvertMeta);
    }
    if (data.containsKey('expir_date')) {
      context.handle(_expirDateMeta,
          expirDate.isAcceptableOrUnknown(data['expir_date']!, _expirDateMeta));
    } else if (isInserting) {
      context.missing(_expirDateMeta);
    }
    if (data.containsKey('add_branch')) {
      context.handle(_addBranchMeta,
          addBranch.isAcceptableOrUnknown(data['add_branch']!, _addBranchMeta));
    } else if (isInserting) {
      context.missing(_addBranchMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StoreOperationModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StoreOperationModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      operationId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}operation_id'])!,
      operationType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}operation_type'])!,
      operationDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}operation_date'])!,
      operationIn: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}operation_in'])!,
      storeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}store_id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      unitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unit_id'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      averageCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}average_cost'])!,
      unitCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_cost'])!,
      totalCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_cost'])!,
      unitFactor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unit_factor'])!,
      qtyConvert: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}qty_convert'])!,
      expirDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}expir_date'])!,
      addBranch: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}add_branch'])!,
    );
  }

  @override
  $StoreOperationTableTable createAlias(String alias) {
    return $StoreOperationTableTable(attachedDatabase, alias);
  }
}

class StoreOperationTableCompanion
    extends UpdateCompanion<StoreOperationModel> {
  final Value<int> id;
  final Value<int> operationId;
  final Value<int> operationType;
  final Value<DateTime> operationDate;
  final Value<bool> operationIn;
  final Value<int> storeId;
  final Value<int> itemId;
  final Value<int> unitId;
  final Value<int> quantity;
  final Value<double> averageCost;
  final Value<double> unitCost;
  final Value<double> totalCost;
  final Value<int> unitFactor;
  final Value<int> qtyConvert;
  final Value<String> expirDate;
  final Value<int> addBranch;
  const StoreOperationTableCompanion({
    this.id = const Value.absent(),
    this.operationId = const Value.absent(),
    this.operationType = const Value.absent(),
    this.operationDate = const Value.absent(),
    this.operationIn = const Value.absent(),
    this.storeId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.unitId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.averageCost = const Value.absent(),
    this.unitCost = const Value.absent(),
    this.totalCost = const Value.absent(),
    this.unitFactor = const Value.absent(),
    this.qtyConvert = const Value.absent(),
    this.expirDate = const Value.absent(),
    this.addBranch = const Value.absent(),
  });
  StoreOperationTableCompanion.insert({
    this.id = const Value.absent(),
    required int operationId,
    required int operationType,
    required DateTime operationDate,
    required bool operationIn,
    required int storeId,
    required int itemId,
    required int unitId,
    required int quantity,
    required double averageCost,
    required double unitCost,
    required double totalCost,
    required int unitFactor,
    required int qtyConvert,
    required String expirDate,
    required int addBranch,
  })  : operationId = Value(operationId),
        operationType = Value(operationType),
        operationDate = Value(operationDate),
        operationIn = Value(operationIn),
        storeId = Value(storeId),
        itemId = Value(itemId),
        unitId = Value(unitId),
        quantity = Value(quantity),
        averageCost = Value(averageCost),
        unitCost = Value(unitCost),
        totalCost = Value(totalCost),
        unitFactor = Value(unitFactor),
        qtyConvert = Value(qtyConvert),
        expirDate = Value(expirDate),
        addBranch = Value(addBranch);
  static Insertable<StoreOperationModel> custom({
    Expression<int>? id,
    Expression<int>? operationId,
    Expression<int>? operationType,
    Expression<DateTime>? operationDate,
    Expression<bool>? operationIn,
    Expression<int>? storeId,
    Expression<int>? itemId,
    Expression<int>? unitId,
    Expression<int>? quantity,
    Expression<double>? averageCost,
    Expression<double>? unitCost,
    Expression<double>? totalCost,
    Expression<int>? unitFactor,
    Expression<int>? qtyConvert,
    Expression<String>? expirDate,
    Expression<int>? addBranch,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (operationId != null) 'operation_id': operationId,
      if (operationType != null) 'operation_type': operationType,
      if (operationDate != null) 'operation_date': operationDate,
      if (operationIn != null) 'operation_in': operationIn,
      if (storeId != null) 'store_id': storeId,
      if (itemId != null) 'item_id': itemId,
      if (unitId != null) 'unit_id': unitId,
      if (quantity != null) 'quantity': quantity,
      if (averageCost != null) 'average_cost': averageCost,
      if (unitCost != null) 'unit_cost': unitCost,
      if (totalCost != null) 'total_cost': totalCost,
      if (unitFactor != null) 'unit_factor': unitFactor,
      if (qtyConvert != null) 'qty_convert': qtyConvert,
      if (expirDate != null) 'expir_date': expirDate,
      if (addBranch != null) 'add_branch': addBranch,
    });
  }

  StoreOperationTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? operationId,
      Value<int>? operationType,
      Value<DateTime>? operationDate,
      Value<bool>? operationIn,
      Value<int>? storeId,
      Value<int>? itemId,
      Value<int>? unitId,
      Value<int>? quantity,
      Value<double>? averageCost,
      Value<double>? unitCost,
      Value<double>? totalCost,
      Value<int>? unitFactor,
      Value<int>? qtyConvert,
      Value<String>? expirDate,
      Value<int>? addBranch}) {
    return StoreOperationTableCompanion(
      id: id ?? this.id,
      operationId: operationId ?? this.operationId,
      operationType: operationType ?? this.operationType,
      operationDate: operationDate ?? this.operationDate,
      operationIn: operationIn ?? this.operationIn,
      storeId: storeId ?? this.storeId,
      itemId: itemId ?? this.itemId,
      unitId: unitId ?? this.unitId,
      quantity: quantity ?? this.quantity,
      averageCost: averageCost ?? this.averageCost,
      unitCost: unitCost ?? this.unitCost,
      totalCost: totalCost ?? this.totalCost,
      unitFactor: unitFactor ?? this.unitFactor,
      qtyConvert: qtyConvert ?? this.qtyConvert,
      expirDate: expirDate ?? this.expirDate,
      addBranch: addBranch ?? this.addBranch,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (operationId.present) {
      map['operation_id'] = Variable<int>(operationId.value);
    }
    if (operationType.present) {
      map['operation_type'] = Variable<int>(operationType.value);
    }
    if (operationDate.present) {
      map['operation_date'] = Variable<DateTime>(operationDate.value);
    }
    if (operationIn.present) {
      map['operation_in'] = Variable<bool>(operationIn.value);
    }
    if (storeId.present) {
      map['store_id'] = Variable<int>(storeId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<int>(unitId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (averageCost.present) {
      map['average_cost'] = Variable<double>(averageCost.value);
    }
    if (unitCost.present) {
      map['unit_cost'] = Variable<double>(unitCost.value);
    }
    if (totalCost.present) {
      map['total_cost'] = Variable<double>(totalCost.value);
    }
    if (unitFactor.present) {
      map['unit_factor'] = Variable<int>(unitFactor.value);
    }
    if (qtyConvert.present) {
      map['qty_convert'] = Variable<int>(qtyConvert.value);
    }
    if (expirDate.present) {
      map['expir_date'] = Variable<String>(expirDate.value);
    }
    if (addBranch.present) {
      map['add_branch'] = Variable<int>(addBranch.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StoreOperationTableCompanion(')
          ..write('id: $id, ')
          ..write('operationId: $operationId, ')
          ..write('operationType: $operationType, ')
          ..write('operationDate: $operationDate, ')
          ..write('operationIn: $operationIn, ')
          ..write('storeId: $storeId, ')
          ..write('itemId: $itemId, ')
          ..write('unitId: $unitId, ')
          ..write('quantity: $quantity, ')
          ..write('averageCost: $averageCost, ')
          ..write('unitCost: $unitCost, ')
          ..write('totalCost: $totalCost, ')
          ..write('unitFactor: $unitFactor, ')
          ..write('qtyConvert: $qtyConvert, ')
          ..write('expirDate: $expirDate, ')
          ..write('addBranch: $addBranch')
          ..write(')'))
        .toString();
  }
}

class $BillTableTable extends BillTable
    with TableInfo<$BillTableTable, BillModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BillTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _branchIdMeta =
      const VerificationMeta('branchId');
  @override
  late final GeneratedColumn<int> branchId = GeneratedColumn<int>(
      'branch_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _billNumberMeta =
      const VerificationMeta('billNumber');
  @override
  late final GeneratedColumn<int> billNumber = GeneratedColumn<int>(
      'bill_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _billTypeMeta =
      const VerificationMeta('billType');
  @override
  late final GeneratedColumn<int> billType = GeneratedColumn<int>(
      'bill_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _billDateMeta =
      const VerificationMeta('billDate');
  @override
  late final GeneratedColumn<DateTime> billDate = GeneratedColumn<DateTime>(
      'bill_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _refNumberMeta =
      const VerificationMeta('refNumber');
  @override
  late final GeneratedColumn<String> refNumber = GeneratedColumn<String>(
      'ref_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _customerNumberMeta =
      const VerificationMeta('customerNumber');
  @override
  late final GeneratedColumn<int> customerNumber = GeneratedColumn<int>(
      'customer_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _currencyIdMeta =
      const VerificationMeta('currencyId');
  @override
  late final GeneratedColumn<int> currencyId = GeneratedColumn<int>(
      'currency_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _currencyValueMeta =
      const VerificationMeta('currencyValue');
  @override
  late final GeneratedColumn<double> currencyValue = GeneratedColumn<double>(
      'currency_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _fundNumberMeta =
      const VerificationMeta('fundNumber');
  @override
  late final GeneratedColumn<int> fundNumber = GeneratedColumn<int>(
      'fund_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _paymentMethedMeta =
      const VerificationMeta('paymentMethed');
  @override
  late final GeneratedColumn<int> paymentMethed = GeneratedColumn<int>(
      'payment_methed', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _storeIdMeta =
      const VerificationMeta('storeId');
  @override
  late final GeneratedColumn<int> storeId = GeneratedColumn<int>(
      'store_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _storeCurValueMeta =
      const VerificationMeta('storeCurValue');
  @override
  late final GeneratedColumn<double> storeCurValue = GeneratedColumn<double>(
      'store_cur_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _billNoteMeta =
      const VerificationMeta('billNote');
  @override
  late final GeneratedColumn<String> billNote = GeneratedColumn<String>(
      'bill_note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemCalcMethodMeta =
      const VerificationMeta('itemCalcMethod');
  @override
  late final GeneratedColumn<int> itemCalcMethod = GeneratedColumn<int>(
      'item_calc_method', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dueDateMeta =
      const VerificationMeta('dueDate');
  @override
  late final GeneratedColumn<DateTime> dueDate = GeneratedColumn<DateTime>(
      'due_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _salesPersonMeta =
      const VerificationMeta('salesPerson');
  @override
  late final GeneratedColumn<int> salesPerson = GeneratedColumn<int>(
      'sales_person', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _hasVatMeta = const VerificationMeta('hasVat');
  @override
  late final GeneratedColumn<bool> hasVat = GeneratedColumn<bool>(
      'has_vat', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("has_vat" IN (0, 1))'));
  static const VerificationMeta _hasSalesTaxMeta =
      const VerificationMeta('hasSalesTax');
  @override
  late final GeneratedColumn<bool> hasSalesTax = GeneratedColumn<bool>(
      'has_sales_tax', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_sales_tax" IN (0, 1))'));
  static const VerificationMeta _salesTaxRateMeta =
      const VerificationMeta('salesTaxRate');
  @override
  late final GeneratedColumn<double> salesTaxRate = GeneratedColumn<double>(
      'sales_tax_rate', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _numOfitemsMeta =
      const VerificationMeta('numOfitems');
  @override
  late final GeneratedColumn<int> numOfitems = GeneratedColumn<int>(
      'num_ofitems', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _totalBillMeta =
      const VerificationMeta('totalBill');
  @override
  late final GeneratedColumn<double> totalBill = GeneratedColumn<double>(
      'total_bill', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _itemsDiscountMeta =
      const VerificationMeta('itemsDiscount');
  @override
  late final GeneratedColumn<double> itemsDiscount = GeneratedColumn<double>(
      'items_discount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _billDiscountMeta =
      const VerificationMeta('billDiscount');
  @override
  late final GeneratedColumn<double> billDiscount = GeneratedColumn<double>(
      'bill_discount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _netBillMeta =
      const VerificationMeta('netBill');
  @override
  late final GeneratedColumn<double> netBill = GeneratedColumn<double>(
      'net_bill', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _totalVatMeta =
      const VerificationMeta('totalVat');
  @override
  late final GeneratedColumn<double> totalVat = GeneratedColumn<double>(
      'total_vat', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _billFinalCostMeta =
      const VerificationMeta('billFinalCost');
  @override
  late final GeneratedColumn<double> billFinalCost = GeneratedColumn<double>(
      'bill_final_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _freeQtyCostMeta =
      const VerificationMeta('freeQtyCost');
  @override
  late final GeneratedColumn<double> freeQtyCost = GeneratedColumn<double>(
      'free_qty_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _totalAvragCostMeta =
      const VerificationMeta('totalAvragCost');
  @override
  late final GeneratedColumn<double> totalAvragCost = GeneratedColumn<double>(
      'total_avrag_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _paidAmountMeta =
      const VerificationMeta('paidAmount');
  @override
  late final GeneratedColumn<double> paidAmount = GeneratedColumn<double>(
      'paid_amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        branchId,
        billNumber,
        billType,
        billDate,
        refNumber,
        customerNumber,
        currencyId,
        currencyValue,
        fundNumber,
        paymentMethed,
        storeId,
        storeCurValue,
        billNote,
        itemCalcMethod,
        dueDate,
        salesPerson,
        hasVat,
        hasSalesTax,
        salesTaxRate,
        numOfitems,
        totalBill,
        itemsDiscount,
        billDiscount,
        netBill,
        totalVat,
        billFinalCost,
        freeQtyCost,
        totalAvragCost,
        paidAmount
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bill_table';
  @override
  VerificationContext validateIntegrity(Insertable<BillModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('branch_id')) {
      context.handle(_branchIdMeta,
          branchId.isAcceptableOrUnknown(data['branch_id']!, _branchIdMeta));
    } else if (isInserting) {
      context.missing(_branchIdMeta);
    }
    if (data.containsKey('bill_number')) {
      context.handle(
          _billNumberMeta,
          billNumber.isAcceptableOrUnknown(
              data['bill_number']!, _billNumberMeta));
    } else if (isInserting) {
      context.missing(_billNumberMeta);
    }
    if (data.containsKey('bill_type')) {
      context.handle(_billTypeMeta,
          billType.isAcceptableOrUnknown(data['bill_type']!, _billTypeMeta));
    } else if (isInserting) {
      context.missing(_billTypeMeta);
    }
    if (data.containsKey('bill_date')) {
      context.handle(_billDateMeta,
          billDate.isAcceptableOrUnknown(data['bill_date']!, _billDateMeta));
    } else if (isInserting) {
      context.missing(_billDateMeta);
    }
    if (data.containsKey('ref_number')) {
      context.handle(_refNumberMeta,
          refNumber.isAcceptableOrUnknown(data['ref_number']!, _refNumberMeta));
    } else if (isInserting) {
      context.missing(_refNumberMeta);
    }
    if (data.containsKey('customer_number')) {
      context.handle(
          _customerNumberMeta,
          customerNumber.isAcceptableOrUnknown(
              data['customer_number']!, _customerNumberMeta));
    } else if (isInserting) {
      context.missing(_customerNumberMeta);
    }
    if (data.containsKey('currency_id')) {
      context.handle(
          _currencyIdMeta,
          currencyId.isAcceptableOrUnknown(
              data['currency_id']!, _currencyIdMeta));
    } else if (isInserting) {
      context.missing(_currencyIdMeta);
    }
    if (data.containsKey('currency_value')) {
      context.handle(
          _currencyValueMeta,
          currencyValue.isAcceptableOrUnknown(
              data['currency_value']!, _currencyValueMeta));
    } else if (isInserting) {
      context.missing(_currencyValueMeta);
    }
    if (data.containsKey('fund_number')) {
      context.handle(
          _fundNumberMeta,
          fundNumber.isAcceptableOrUnknown(
              data['fund_number']!, _fundNumberMeta));
    } else if (isInserting) {
      context.missing(_fundNumberMeta);
    }
    if (data.containsKey('payment_methed')) {
      context.handle(
          _paymentMethedMeta,
          paymentMethed.isAcceptableOrUnknown(
              data['payment_methed']!, _paymentMethedMeta));
    } else if (isInserting) {
      context.missing(_paymentMethedMeta);
    }
    if (data.containsKey('store_id')) {
      context.handle(_storeIdMeta,
          storeId.isAcceptableOrUnknown(data['store_id']!, _storeIdMeta));
    } else if (isInserting) {
      context.missing(_storeIdMeta);
    }
    if (data.containsKey('store_cur_value')) {
      context.handle(
          _storeCurValueMeta,
          storeCurValue.isAcceptableOrUnknown(
              data['store_cur_value']!, _storeCurValueMeta));
    } else if (isInserting) {
      context.missing(_storeCurValueMeta);
    }
    if (data.containsKey('bill_note')) {
      context.handle(_billNoteMeta,
          billNote.isAcceptableOrUnknown(data['bill_note']!, _billNoteMeta));
    } else if (isInserting) {
      context.missing(_billNoteMeta);
    }
    if (data.containsKey('item_calc_method')) {
      context.handle(
          _itemCalcMethodMeta,
          itemCalcMethod.isAcceptableOrUnknown(
              data['item_calc_method']!, _itemCalcMethodMeta));
    } else if (isInserting) {
      context.missing(_itemCalcMethodMeta);
    }
    if (data.containsKey('due_date')) {
      context.handle(_dueDateMeta,
          dueDate.isAcceptableOrUnknown(data['due_date']!, _dueDateMeta));
    } else if (isInserting) {
      context.missing(_dueDateMeta);
    }
    if (data.containsKey('sales_person')) {
      context.handle(
          _salesPersonMeta,
          salesPerson.isAcceptableOrUnknown(
              data['sales_person']!, _salesPersonMeta));
    } else if (isInserting) {
      context.missing(_salesPersonMeta);
    }
    if (data.containsKey('has_vat')) {
      context.handle(_hasVatMeta,
          hasVat.isAcceptableOrUnknown(data['has_vat']!, _hasVatMeta));
    } else if (isInserting) {
      context.missing(_hasVatMeta);
    }
    if (data.containsKey('has_sales_tax')) {
      context.handle(
          _hasSalesTaxMeta,
          hasSalesTax.isAcceptableOrUnknown(
              data['has_sales_tax']!, _hasSalesTaxMeta));
    } else if (isInserting) {
      context.missing(_hasSalesTaxMeta);
    }
    if (data.containsKey('sales_tax_rate')) {
      context.handle(
          _salesTaxRateMeta,
          salesTaxRate.isAcceptableOrUnknown(
              data['sales_tax_rate']!, _salesTaxRateMeta));
    } else if (isInserting) {
      context.missing(_salesTaxRateMeta);
    }
    if (data.containsKey('num_ofitems')) {
      context.handle(
          _numOfitemsMeta,
          numOfitems.isAcceptableOrUnknown(
              data['num_ofitems']!, _numOfitemsMeta));
    } else if (isInserting) {
      context.missing(_numOfitemsMeta);
    }
    if (data.containsKey('total_bill')) {
      context.handle(_totalBillMeta,
          totalBill.isAcceptableOrUnknown(data['total_bill']!, _totalBillMeta));
    } else if (isInserting) {
      context.missing(_totalBillMeta);
    }
    if (data.containsKey('items_discount')) {
      context.handle(
          _itemsDiscountMeta,
          itemsDiscount.isAcceptableOrUnknown(
              data['items_discount']!, _itemsDiscountMeta));
    } else if (isInserting) {
      context.missing(_itemsDiscountMeta);
    }
    if (data.containsKey('bill_discount')) {
      context.handle(
          _billDiscountMeta,
          billDiscount.isAcceptableOrUnknown(
              data['bill_discount']!, _billDiscountMeta));
    } else if (isInserting) {
      context.missing(_billDiscountMeta);
    }
    if (data.containsKey('net_bill')) {
      context.handle(_netBillMeta,
          netBill.isAcceptableOrUnknown(data['net_bill']!, _netBillMeta));
    } else if (isInserting) {
      context.missing(_netBillMeta);
    }
    if (data.containsKey('total_vat')) {
      context.handle(_totalVatMeta,
          totalVat.isAcceptableOrUnknown(data['total_vat']!, _totalVatMeta));
    } else if (isInserting) {
      context.missing(_totalVatMeta);
    }
    if (data.containsKey('bill_final_cost')) {
      context.handle(
          _billFinalCostMeta,
          billFinalCost.isAcceptableOrUnknown(
              data['bill_final_cost']!, _billFinalCostMeta));
    } else if (isInserting) {
      context.missing(_billFinalCostMeta);
    }
    if (data.containsKey('free_qty_cost')) {
      context.handle(
          _freeQtyCostMeta,
          freeQtyCost.isAcceptableOrUnknown(
              data['free_qty_cost']!, _freeQtyCostMeta));
    } else if (isInserting) {
      context.missing(_freeQtyCostMeta);
    }
    if (data.containsKey('total_avrag_cost')) {
      context.handle(
          _totalAvragCostMeta,
          totalAvragCost.isAcceptableOrUnknown(
              data['total_avrag_cost']!, _totalAvragCostMeta));
    } else if (isInserting) {
      context.missing(_totalAvragCostMeta);
    }
    if (data.containsKey('paid_amount')) {
      context.handle(
          _paidAmountMeta,
          paidAmount.isAcceptableOrUnknown(
              data['paid_amount']!, _paidAmountMeta));
    } else if (isInserting) {
      context.missing(_paidAmountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BillModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BillModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      branchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}branch_id'])!,
      billNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}bill_number'])!,
      billType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}bill_type'])!,
      billDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}bill_date'])!,
      refNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ref_number'])!,
      customerNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}customer_number'])!,
      currencyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}currency_id'])!,
      currencyValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}currency_value'])!,
      fundNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}fund_number'])!,
      paymentMethed: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}payment_methed'])!,
      storeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}store_id'])!,
      storeCurValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}store_cur_value'])!,
      billNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bill_note'])!,
      itemCalcMethod: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_calc_method'])!,
      dueDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}due_date'])!,
      salesPerson: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sales_person'])!,
      hasVat: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_vat'])!,
      hasSalesTax: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_sales_tax'])!,
      salesTaxRate: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sales_tax_rate'])!,
      numOfitems: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}num_ofitems'])!,
      totalBill: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_bill'])!,
      itemsDiscount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}items_discount'])!,
      billDiscount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}bill_discount'])!,
      netBill: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_bill'])!,
      totalVat: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_vat'])!,
      billFinalCost: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}bill_final_cost'])!,
      freeQtyCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}free_qty_cost'])!,
      totalAvragCost: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}total_avrag_cost'])!,
      paidAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}paid_amount'])!,
    );
  }

  @override
  $BillTableTable createAlias(String alias) {
    return $BillTableTable(attachedDatabase, alias);
  }
}

class BillTableCompanion extends UpdateCompanion<BillModel> {
  final Value<int> id;
  final Value<int> branchId;
  final Value<int> billNumber;
  final Value<int> billType;
  final Value<DateTime> billDate;
  final Value<String> refNumber;
  final Value<int> customerNumber;
  final Value<int> currencyId;
  final Value<double> currencyValue;
  final Value<int> fundNumber;
  final Value<int> paymentMethed;
  final Value<int> storeId;
  final Value<double> storeCurValue;
  final Value<String> billNote;
  final Value<int> itemCalcMethod;
  final Value<DateTime> dueDate;
  final Value<int> salesPerson;
  final Value<bool> hasVat;
  final Value<bool> hasSalesTax;
  final Value<double> salesTaxRate;
  final Value<int> numOfitems;
  final Value<double> totalBill;
  final Value<double> itemsDiscount;
  final Value<double> billDiscount;
  final Value<double> netBill;
  final Value<double> totalVat;
  final Value<double> billFinalCost;
  final Value<double> freeQtyCost;
  final Value<double> totalAvragCost;
  final Value<double> paidAmount;
  const BillTableCompanion({
    this.id = const Value.absent(),
    this.branchId = const Value.absent(),
    this.billNumber = const Value.absent(),
    this.billType = const Value.absent(),
    this.billDate = const Value.absent(),
    this.refNumber = const Value.absent(),
    this.customerNumber = const Value.absent(),
    this.currencyId = const Value.absent(),
    this.currencyValue = const Value.absent(),
    this.fundNumber = const Value.absent(),
    this.paymentMethed = const Value.absent(),
    this.storeId = const Value.absent(),
    this.storeCurValue = const Value.absent(),
    this.billNote = const Value.absent(),
    this.itemCalcMethod = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.salesPerson = const Value.absent(),
    this.hasVat = const Value.absent(),
    this.hasSalesTax = const Value.absent(),
    this.salesTaxRate = const Value.absent(),
    this.numOfitems = const Value.absent(),
    this.totalBill = const Value.absent(),
    this.itemsDiscount = const Value.absent(),
    this.billDiscount = const Value.absent(),
    this.netBill = const Value.absent(),
    this.totalVat = const Value.absent(),
    this.billFinalCost = const Value.absent(),
    this.freeQtyCost = const Value.absent(),
    this.totalAvragCost = const Value.absent(),
    this.paidAmount = const Value.absent(),
  });
  BillTableCompanion.insert({
    this.id = const Value.absent(),
    required int branchId,
    required int billNumber,
    required int billType,
    required DateTime billDate,
    required String refNumber,
    required int customerNumber,
    required int currencyId,
    required double currencyValue,
    required int fundNumber,
    required int paymentMethed,
    required int storeId,
    required double storeCurValue,
    required String billNote,
    required int itemCalcMethod,
    required DateTime dueDate,
    required int salesPerson,
    required bool hasVat,
    required bool hasSalesTax,
    required double salesTaxRate,
    required int numOfitems,
    required double totalBill,
    required double itemsDiscount,
    required double billDiscount,
    required double netBill,
    required double totalVat,
    required double billFinalCost,
    required double freeQtyCost,
    required double totalAvragCost,
    required double paidAmount,
  })  : branchId = Value(branchId),
        billNumber = Value(billNumber),
        billType = Value(billType),
        billDate = Value(billDate),
        refNumber = Value(refNumber),
        customerNumber = Value(customerNumber),
        currencyId = Value(currencyId),
        currencyValue = Value(currencyValue),
        fundNumber = Value(fundNumber),
        paymentMethed = Value(paymentMethed),
        storeId = Value(storeId),
        storeCurValue = Value(storeCurValue),
        billNote = Value(billNote),
        itemCalcMethod = Value(itemCalcMethod),
        dueDate = Value(dueDate),
        salesPerson = Value(salesPerson),
        hasVat = Value(hasVat),
        hasSalesTax = Value(hasSalesTax),
        salesTaxRate = Value(salesTaxRate),
        numOfitems = Value(numOfitems),
        totalBill = Value(totalBill),
        itemsDiscount = Value(itemsDiscount),
        billDiscount = Value(billDiscount),
        netBill = Value(netBill),
        totalVat = Value(totalVat),
        billFinalCost = Value(billFinalCost),
        freeQtyCost = Value(freeQtyCost),
        totalAvragCost = Value(totalAvragCost),
        paidAmount = Value(paidAmount);
  static Insertable<BillModel> custom({
    Expression<int>? id,
    Expression<int>? branchId,
    Expression<int>? billNumber,
    Expression<int>? billType,
    Expression<DateTime>? billDate,
    Expression<String>? refNumber,
    Expression<int>? customerNumber,
    Expression<int>? currencyId,
    Expression<double>? currencyValue,
    Expression<int>? fundNumber,
    Expression<int>? paymentMethed,
    Expression<int>? storeId,
    Expression<double>? storeCurValue,
    Expression<String>? billNote,
    Expression<int>? itemCalcMethod,
    Expression<DateTime>? dueDate,
    Expression<int>? salesPerson,
    Expression<bool>? hasVat,
    Expression<bool>? hasSalesTax,
    Expression<double>? salesTaxRate,
    Expression<int>? numOfitems,
    Expression<double>? totalBill,
    Expression<double>? itemsDiscount,
    Expression<double>? billDiscount,
    Expression<double>? netBill,
    Expression<double>? totalVat,
    Expression<double>? billFinalCost,
    Expression<double>? freeQtyCost,
    Expression<double>? totalAvragCost,
    Expression<double>? paidAmount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (branchId != null) 'branch_id': branchId,
      if (billNumber != null) 'bill_number': billNumber,
      if (billType != null) 'bill_type': billType,
      if (billDate != null) 'bill_date': billDate,
      if (refNumber != null) 'ref_number': refNumber,
      if (customerNumber != null) 'customer_number': customerNumber,
      if (currencyId != null) 'currency_id': currencyId,
      if (currencyValue != null) 'currency_value': currencyValue,
      if (fundNumber != null) 'fund_number': fundNumber,
      if (paymentMethed != null) 'payment_methed': paymentMethed,
      if (storeId != null) 'store_id': storeId,
      if (storeCurValue != null) 'store_cur_value': storeCurValue,
      if (billNote != null) 'bill_note': billNote,
      if (itemCalcMethod != null) 'item_calc_method': itemCalcMethod,
      if (dueDate != null) 'due_date': dueDate,
      if (salesPerson != null) 'sales_person': salesPerson,
      if (hasVat != null) 'has_vat': hasVat,
      if (hasSalesTax != null) 'has_sales_tax': hasSalesTax,
      if (salesTaxRate != null) 'sales_tax_rate': salesTaxRate,
      if (numOfitems != null) 'num_ofitems': numOfitems,
      if (totalBill != null) 'total_bill': totalBill,
      if (itemsDiscount != null) 'items_discount': itemsDiscount,
      if (billDiscount != null) 'bill_discount': billDiscount,
      if (netBill != null) 'net_bill': netBill,
      if (totalVat != null) 'total_vat': totalVat,
      if (billFinalCost != null) 'bill_final_cost': billFinalCost,
      if (freeQtyCost != null) 'free_qty_cost': freeQtyCost,
      if (totalAvragCost != null) 'total_avrag_cost': totalAvragCost,
      if (paidAmount != null) 'paid_amount': paidAmount,
    });
  }

  BillTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? branchId,
      Value<int>? billNumber,
      Value<int>? billType,
      Value<DateTime>? billDate,
      Value<String>? refNumber,
      Value<int>? customerNumber,
      Value<int>? currencyId,
      Value<double>? currencyValue,
      Value<int>? fundNumber,
      Value<int>? paymentMethed,
      Value<int>? storeId,
      Value<double>? storeCurValue,
      Value<String>? billNote,
      Value<int>? itemCalcMethod,
      Value<DateTime>? dueDate,
      Value<int>? salesPerson,
      Value<bool>? hasVat,
      Value<bool>? hasSalesTax,
      Value<double>? salesTaxRate,
      Value<int>? numOfitems,
      Value<double>? totalBill,
      Value<double>? itemsDiscount,
      Value<double>? billDiscount,
      Value<double>? netBill,
      Value<double>? totalVat,
      Value<double>? billFinalCost,
      Value<double>? freeQtyCost,
      Value<double>? totalAvragCost,
      Value<double>? paidAmount}) {
    return BillTableCompanion(
      id: id ?? this.id,
      branchId: branchId ?? this.branchId,
      billNumber: billNumber ?? this.billNumber,
      billType: billType ?? this.billType,
      billDate: billDate ?? this.billDate,
      refNumber: refNumber ?? this.refNumber,
      customerNumber: customerNumber ?? this.customerNumber,
      currencyId: currencyId ?? this.currencyId,
      currencyValue: currencyValue ?? this.currencyValue,
      fundNumber: fundNumber ?? this.fundNumber,
      paymentMethed: paymentMethed ?? this.paymentMethed,
      storeId: storeId ?? this.storeId,
      storeCurValue: storeCurValue ?? this.storeCurValue,
      billNote: billNote ?? this.billNote,
      itemCalcMethod: itemCalcMethod ?? this.itemCalcMethod,
      dueDate: dueDate ?? this.dueDate,
      salesPerson: salesPerson ?? this.salesPerson,
      hasVat: hasVat ?? this.hasVat,
      hasSalesTax: hasSalesTax ?? this.hasSalesTax,
      salesTaxRate: salesTaxRate ?? this.salesTaxRate,
      numOfitems: numOfitems ?? this.numOfitems,
      totalBill: totalBill ?? this.totalBill,
      itemsDiscount: itemsDiscount ?? this.itemsDiscount,
      billDiscount: billDiscount ?? this.billDiscount,
      netBill: netBill ?? this.netBill,
      totalVat: totalVat ?? this.totalVat,
      billFinalCost: billFinalCost ?? this.billFinalCost,
      freeQtyCost: freeQtyCost ?? this.freeQtyCost,
      totalAvragCost: totalAvragCost ?? this.totalAvragCost,
      paidAmount: paidAmount ?? this.paidAmount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (branchId.present) {
      map['branch_id'] = Variable<int>(branchId.value);
    }
    if (billNumber.present) {
      map['bill_number'] = Variable<int>(billNumber.value);
    }
    if (billType.present) {
      map['bill_type'] = Variable<int>(billType.value);
    }
    if (billDate.present) {
      map['bill_date'] = Variable<DateTime>(billDate.value);
    }
    if (refNumber.present) {
      map['ref_number'] = Variable<String>(refNumber.value);
    }
    if (customerNumber.present) {
      map['customer_number'] = Variable<int>(customerNumber.value);
    }
    if (currencyId.present) {
      map['currency_id'] = Variable<int>(currencyId.value);
    }
    if (currencyValue.present) {
      map['currency_value'] = Variable<double>(currencyValue.value);
    }
    if (fundNumber.present) {
      map['fund_number'] = Variable<int>(fundNumber.value);
    }
    if (paymentMethed.present) {
      map['payment_methed'] = Variable<int>(paymentMethed.value);
    }
    if (storeId.present) {
      map['store_id'] = Variable<int>(storeId.value);
    }
    if (storeCurValue.present) {
      map['store_cur_value'] = Variable<double>(storeCurValue.value);
    }
    if (billNote.present) {
      map['bill_note'] = Variable<String>(billNote.value);
    }
    if (itemCalcMethod.present) {
      map['item_calc_method'] = Variable<int>(itemCalcMethod.value);
    }
    if (dueDate.present) {
      map['due_date'] = Variable<DateTime>(dueDate.value);
    }
    if (salesPerson.present) {
      map['sales_person'] = Variable<int>(salesPerson.value);
    }
    if (hasVat.present) {
      map['has_vat'] = Variable<bool>(hasVat.value);
    }
    if (hasSalesTax.present) {
      map['has_sales_tax'] = Variable<bool>(hasSalesTax.value);
    }
    if (salesTaxRate.present) {
      map['sales_tax_rate'] = Variable<double>(salesTaxRate.value);
    }
    if (numOfitems.present) {
      map['num_ofitems'] = Variable<int>(numOfitems.value);
    }
    if (totalBill.present) {
      map['total_bill'] = Variable<double>(totalBill.value);
    }
    if (itemsDiscount.present) {
      map['items_discount'] = Variable<double>(itemsDiscount.value);
    }
    if (billDiscount.present) {
      map['bill_discount'] = Variable<double>(billDiscount.value);
    }
    if (netBill.present) {
      map['net_bill'] = Variable<double>(netBill.value);
    }
    if (totalVat.present) {
      map['total_vat'] = Variable<double>(totalVat.value);
    }
    if (billFinalCost.present) {
      map['bill_final_cost'] = Variable<double>(billFinalCost.value);
    }
    if (freeQtyCost.present) {
      map['free_qty_cost'] = Variable<double>(freeQtyCost.value);
    }
    if (totalAvragCost.present) {
      map['total_avrag_cost'] = Variable<double>(totalAvragCost.value);
    }
    if (paidAmount.present) {
      map['paid_amount'] = Variable<double>(paidAmount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BillTableCompanion(')
          ..write('id: $id, ')
          ..write('branchId: $branchId, ')
          ..write('billNumber: $billNumber, ')
          ..write('billType: $billType, ')
          ..write('billDate: $billDate, ')
          ..write('refNumber: $refNumber, ')
          ..write('customerNumber: $customerNumber, ')
          ..write('currencyId: $currencyId, ')
          ..write('currencyValue: $currencyValue, ')
          ..write('fundNumber: $fundNumber, ')
          ..write('paymentMethed: $paymentMethed, ')
          ..write('storeId: $storeId, ')
          ..write('storeCurValue: $storeCurValue, ')
          ..write('billNote: $billNote, ')
          ..write('itemCalcMethod: $itemCalcMethod, ')
          ..write('dueDate: $dueDate, ')
          ..write('salesPerson: $salesPerson, ')
          ..write('hasVat: $hasVat, ')
          ..write('hasSalesTax: $hasSalesTax, ')
          ..write('salesTaxRate: $salesTaxRate, ')
          ..write('numOfitems: $numOfitems, ')
          ..write('totalBill: $totalBill, ')
          ..write('itemsDiscount: $itemsDiscount, ')
          ..write('billDiscount: $billDiscount, ')
          ..write('netBill: $netBill, ')
          ..write('totalVat: $totalVat, ')
          ..write('billFinalCost: $billFinalCost, ')
          ..write('freeQtyCost: $freeQtyCost, ')
          ..write('totalAvragCost: $totalAvragCost, ')
          ..write('paidAmount: $paidAmount')
          ..write(')'))
        .toString();
  }
}

class $BillDetailsTableTable extends BillDetailsTable
    with TableInfo<$BillDetailsTableTable, BillDetailsModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BillDetailsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _billIDMeta = const VerificationMeta('billID');
  @override
  late final GeneratedColumn<int> billID = GeneratedColumn<int>(
      'bill_i_d', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemUnitIDMeta =
      const VerificationMeta('itemUnitID');
  @override
  late final GeneratedColumn<int> itemUnitID = GeneratedColumn<int>(
      'item_unit_i_d', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _unitFactorMeta =
      const VerificationMeta('unitFactor');
  @override
  late final GeneratedColumn<int> unitFactor = GeneratedColumn<int>(
      'unit_factor', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _freeQtyMeta =
      const VerificationMeta('freeQty');
  @override
  late final GeneratedColumn<int> freeQty = GeneratedColumn<int>(
      'free_qty', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _avrageCostMeta =
      const VerificationMeta('avrageCost');
  @override
  late final GeneratedColumn<double> avrageCost = GeneratedColumn<double>(
      'avrage_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _sellPriceMeta =
      const VerificationMeta('sellPrice');
  @override
  late final GeneratedColumn<double> sellPrice = GeneratedColumn<double>(
      'sell_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _totalSellPriceMeta =
      const VerificationMeta('totalSellPrice');
  @override
  late final GeneratedColumn<double> totalSellPrice = GeneratedColumn<double>(
      'total_sell_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _discountPreMeta =
      const VerificationMeta('discountPre');
  @override
  late final GeneratedColumn<double> discountPre = GeneratedColumn<double>(
      'discount_pre', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _netSellPriceMeta =
      const VerificationMeta('netSellPrice');
  @override
  late final GeneratedColumn<double> netSellPrice = GeneratedColumn<double>(
      'net_sell_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _expirDateMeta =
      const VerificationMeta('expirDate');
  @override
  late final GeneratedColumn<String> expirDate = GeneratedColumn<String>(
      'expir_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxRateMeta =
      const VerificationMeta('taxRate');
  @override
  late final GeneratedColumn<double> taxRate = GeneratedColumn<double>(
      'tax_rate', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _itemNoteMeta =
      const VerificationMeta('itemNote');
  @override
  late final GeneratedColumn<String> itemNote = GeneratedColumn<String>(
      'item_note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _freeQtyCostMeta =
      const VerificationMeta('freeQtyCost');
  @override
  late final GeneratedColumn<double> freeQtyCost = GeneratedColumn<double>(
      'free_qty_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        billID,
        itemId,
        itemUnitID,
        unitFactor,
        quantity,
        freeQty,
        avrageCost,
        sellPrice,
        totalSellPrice,
        discountPre,
        netSellPrice,
        expirDate,
        taxRate,
        itemNote,
        freeQtyCost
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bill_details_table';
  @override
  VerificationContext validateIntegrity(Insertable<BillDetailsModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('bill_i_d')) {
      context.handle(_billIDMeta,
          billID.isAcceptableOrUnknown(data['bill_i_d']!, _billIDMeta));
    } else if (isInserting) {
      context.missing(_billIDMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('item_unit_i_d')) {
      context.handle(
          _itemUnitIDMeta,
          itemUnitID.isAcceptableOrUnknown(
              data['item_unit_i_d']!, _itemUnitIDMeta));
    } else if (isInserting) {
      context.missing(_itemUnitIDMeta);
    }
    if (data.containsKey('unit_factor')) {
      context.handle(
          _unitFactorMeta,
          unitFactor.isAcceptableOrUnknown(
              data['unit_factor']!, _unitFactorMeta));
    } else if (isInserting) {
      context.missing(_unitFactorMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('free_qty')) {
      context.handle(_freeQtyMeta,
          freeQty.isAcceptableOrUnknown(data['free_qty']!, _freeQtyMeta));
    } else if (isInserting) {
      context.missing(_freeQtyMeta);
    }
    if (data.containsKey('avrage_cost')) {
      context.handle(
          _avrageCostMeta,
          avrageCost.isAcceptableOrUnknown(
              data['avrage_cost']!, _avrageCostMeta));
    } else if (isInserting) {
      context.missing(_avrageCostMeta);
    }
    if (data.containsKey('sell_price')) {
      context.handle(_sellPriceMeta,
          sellPrice.isAcceptableOrUnknown(data['sell_price']!, _sellPriceMeta));
    } else if (isInserting) {
      context.missing(_sellPriceMeta);
    }
    if (data.containsKey('total_sell_price')) {
      context.handle(
          _totalSellPriceMeta,
          totalSellPrice.isAcceptableOrUnknown(
              data['total_sell_price']!, _totalSellPriceMeta));
    } else if (isInserting) {
      context.missing(_totalSellPriceMeta);
    }
    if (data.containsKey('discount_pre')) {
      context.handle(
          _discountPreMeta,
          discountPre.isAcceptableOrUnknown(
              data['discount_pre']!, _discountPreMeta));
    } else if (isInserting) {
      context.missing(_discountPreMeta);
    }
    if (data.containsKey('net_sell_price')) {
      context.handle(
          _netSellPriceMeta,
          netSellPrice.isAcceptableOrUnknown(
              data['net_sell_price']!, _netSellPriceMeta));
    } else if (isInserting) {
      context.missing(_netSellPriceMeta);
    }
    if (data.containsKey('expir_date')) {
      context.handle(_expirDateMeta,
          expirDate.isAcceptableOrUnknown(data['expir_date']!, _expirDateMeta));
    }
    if (data.containsKey('tax_rate')) {
      context.handle(_taxRateMeta,
          taxRate.isAcceptableOrUnknown(data['tax_rate']!, _taxRateMeta));
    } else if (isInserting) {
      context.missing(_taxRateMeta);
    }
    if (data.containsKey('item_note')) {
      context.handle(_itemNoteMeta,
          itemNote.isAcceptableOrUnknown(data['item_note']!, _itemNoteMeta));
    } else if (isInserting) {
      context.missing(_itemNoteMeta);
    }
    if (data.containsKey('free_qty_cost')) {
      context.handle(
          _freeQtyCostMeta,
          freeQtyCost.isAcceptableOrUnknown(
              data['free_qty_cost']!, _freeQtyCostMeta));
    } else if (isInserting) {
      context.missing(_freeQtyCostMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BillDetailsModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BillDetailsModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      billID: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}bill_i_d'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      itemUnitID: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_unit_i_d'])!,
      unitFactor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unit_factor'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      freeQty: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}free_qty'])!,
      avrageCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}avrage_cost'])!,
      sellPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sell_price'])!,
      totalSellPrice: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}total_sell_price'])!,
      discountPre: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount_pre'])!,
      netSellPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_sell_price'])!,
      expirDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}expir_date']),
      taxRate: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax_rate'])!,
      itemNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_note'])!,
      freeQtyCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}free_qty_cost'])!,
    );
  }

  @override
  $BillDetailsTableTable createAlias(String alias) {
    return $BillDetailsTableTable(attachedDatabase, alias);
  }
}

class BillDetailsTableCompanion extends UpdateCompanion<BillDetailsModel> {
  final Value<int> id;
  final Value<int> billID;
  final Value<int> itemId;
  final Value<int> itemUnitID;
  final Value<int> unitFactor;
  final Value<int> quantity;
  final Value<int> freeQty;
  final Value<double> avrageCost;
  final Value<double> sellPrice;
  final Value<double> totalSellPrice;
  final Value<double> discountPre;
  final Value<double> netSellPrice;
  final Value<String?> expirDate;
  final Value<double> taxRate;
  final Value<String> itemNote;
  final Value<double> freeQtyCost;
  const BillDetailsTableCompanion({
    this.id = const Value.absent(),
    this.billID = const Value.absent(),
    this.itemId = const Value.absent(),
    this.itemUnitID = const Value.absent(),
    this.unitFactor = const Value.absent(),
    this.quantity = const Value.absent(),
    this.freeQty = const Value.absent(),
    this.avrageCost = const Value.absent(),
    this.sellPrice = const Value.absent(),
    this.totalSellPrice = const Value.absent(),
    this.discountPre = const Value.absent(),
    this.netSellPrice = const Value.absent(),
    this.expirDate = const Value.absent(),
    this.taxRate = const Value.absent(),
    this.itemNote = const Value.absent(),
    this.freeQtyCost = const Value.absent(),
  });
  BillDetailsTableCompanion.insert({
    this.id = const Value.absent(),
    required int billID,
    required int itemId,
    required int itemUnitID,
    required int unitFactor,
    required int quantity,
    required int freeQty,
    required double avrageCost,
    required double sellPrice,
    required double totalSellPrice,
    required double discountPre,
    required double netSellPrice,
    this.expirDate = const Value.absent(),
    required double taxRate,
    required String itemNote,
    required double freeQtyCost,
  })  : billID = Value(billID),
        itemId = Value(itemId),
        itemUnitID = Value(itemUnitID),
        unitFactor = Value(unitFactor),
        quantity = Value(quantity),
        freeQty = Value(freeQty),
        avrageCost = Value(avrageCost),
        sellPrice = Value(sellPrice),
        totalSellPrice = Value(totalSellPrice),
        discountPre = Value(discountPre),
        netSellPrice = Value(netSellPrice),
        taxRate = Value(taxRate),
        itemNote = Value(itemNote),
        freeQtyCost = Value(freeQtyCost);
  static Insertable<BillDetailsModel> custom({
    Expression<int>? id,
    Expression<int>? billID,
    Expression<int>? itemId,
    Expression<int>? itemUnitID,
    Expression<int>? unitFactor,
    Expression<int>? quantity,
    Expression<int>? freeQty,
    Expression<double>? avrageCost,
    Expression<double>? sellPrice,
    Expression<double>? totalSellPrice,
    Expression<double>? discountPre,
    Expression<double>? netSellPrice,
    Expression<String>? expirDate,
    Expression<double>? taxRate,
    Expression<String>? itemNote,
    Expression<double>? freeQtyCost,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (billID != null) 'bill_i_d': billID,
      if (itemId != null) 'item_id': itemId,
      if (itemUnitID != null) 'item_unit_i_d': itemUnitID,
      if (unitFactor != null) 'unit_factor': unitFactor,
      if (quantity != null) 'quantity': quantity,
      if (freeQty != null) 'free_qty': freeQty,
      if (avrageCost != null) 'avrage_cost': avrageCost,
      if (sellPrice != null) 'sell_price': sellPrice,
      if (totalSellPrice != null) 'total_sell_price': totalSellPrice,
      if (discountPre != null) 'discount_pre': discountPre,
      if (netSellPrice != null) 'net_sell_price': netSellPrice,
      if (expirDate != null) 'expir_date': expirDate,
      if (taxRate != null) 'tax_rate': taxRate,
      if (itemNote != null) 'item_note': itemNote,
      if (freeQtyCost != null) 'free_qty_cost': freeQtyCost,
    });
  }

  BillDetailsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? billID,
      Value<int>? itemId,
      Value<int>? itemUnitID,
      Value<int>? unitFactor,
      Value<int>? quantity,
      Value<int>? freeQty,
      Value<double>? avrageCost,
      Value<double>? sellPrice,
      Value<double>? totalSellPrice,
      Value<double>? discountPre,
      Value<double>? netSellPrice,
      Value<String?>? expirDate,
      Value<double>? taxRate,
      Value<String>? itemNote,
      Value<double>? freeQtyCost}) {
    return BillDetailsTableCompanion(
      id: id ?? this.id,
      billID: billID ?? this.billID,
      itemId: itemId ?? this.itemId,
      itemUnitID: itemUnitID ?? this.itemUnitID,
      unitFactor: unitFactor ?? this.unitFactor,
      quantity: quantity ?? this.quantity,
      freeQty: freeQty ?? this.freeQty,
      avrageCost: avrageCost ?? this.avrageCost,
      sellPrice: sellPrice ?? this.sellPrice,
      totalSellPrice: totalSellPrice ?? this.totalSellPrice,
      discountPre: discountPre ?? this.discountPre,
      netSellPrice: netSellPrice ?? this.netSellPrice,
      expirDate: expirDate ?? this.expirDate,
      taxRate: taxRate ?? this.taxRate,
      itemNote: itemNote ?? this.itemNote,
      freeQtyCost: freeQtyCost ?? this.freeQtyCost,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (billID.present) {
      map['bill_i_d'] = Variable<int>(billID.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (itemUnitID.present) {
      map['item_unit_i_d'] = Variable<int>(itemUnitID.value);
    }
    if (unitFactor.present) {
      map['unit_factor'] = Variable<int>(unitFactor.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (freeQty.present) {
      map['free_qty'] = Variable<int>(freeQty.value);
    }
    if (avrageCost.present) {
      map['avrage_cost'] = Variable<double>(avrageCost.value);
    }
    if (sellPrice.present) {
      map['sell_price'] = Variable<double>(sellPrice.value);
    }
    if (totalSellPrice.present) {
      map['total_sell_price'] = Variable<double>(totalSellPrice.value);
    }
    if (discountPre.present) {
      map['discount_pre'] = Variable<double>(discountPre.value);
    }
    if (netSellPrice.present) {
      map['net_sell_price'] = Variable<double>(netSellPrice.value);
    }
    if (expirDate.present) {
      map['expir_date'] = Variable<String>(expirDate.value);
    }
    if (taxRate.present) {
      map['tax_rate'] = Variable<double>(taxRate.value);
    }
    if (itemNote.present) {
      map['item_note'] = Variable<String>(itemNote.value);
    }
    if (freeQtyCost.present) {
      map['free_qty_cost'] = Variable<double>(freeQtyCost.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BillDetailsTableCompanion(')
          ..write('id: $id, ')
          ..write('billID: $billID, ')
          ..write('itemId: $itemId, ')
          ..write('itemUnitID: $itemUnitID, ')
          ..write('unitFactor: $unitFactor, ')
          ..write('quantity: $quantity, ')
          ..write('freeQty: $freeQty, ')
          ..write('avrageCost: $avrageCost, ')
          ..write('sellPrice: $sellPrice, ')
          ..write('totalSellPrice: $totalSellPrice, ')
          ..write('discountPre: $discountPre, ')
          ..write('netSellPrice: $netSellPrice, ')
          ..write('expirDate: $expirDate, ')
          ..write('taxRate: $taxRate, ')
          ..write('itemNote: $itemNote, ')
          ..write('freeQtyCost: $freeQtyCost')
          ..write(')'))
        .toString();
  }
}

class $AccountOperationTableTable extends AccountOperationTable
    with TableInfo<$AccountOperationTableTable, AccountOperationModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountOperationTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _operationDateMeta =
      const VerificationMeta('operationDate');
  @override
  late final GeneratedColumn<DateTime> operationDate =
      GeneratedColumn<DateTime>('operation_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _operationTypeMeta =
      const VerificationMeta('operationType');
  @override
  late final GeneratedColumn<int> operationType = GeneratedColumn<int>(
      'operation_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operationIdMeta =
      const VerificationMeta('operationId');
  @override
  late final GeneratedColumn<int> operationId = GeneratedColumn<int>(
      'operation_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operationRefMeta =
      const VerificationMeta('operationRef');
  @override
  late final GeneratedColumn<String> operationRef = GeneratedColumn<String>(
      'operation_ref', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accountNumberMeta =
      const VerificationMeta('accountNumber');
  @override
  late final GeneratedColumn<int> accountNumber = GeneratedColumn<int>(
      'account_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operationDebitMeta =
      const VerificationMeta('operationDebit');
  @override
  late final GeneratedColumn<double> operationDebit = GeneratedColumn<double>(
      'operation_debit', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _operationCreditMeta =
      const VerificationMeta('operationCredit');
  @override
  late final GeneratedColumn<double> operationCredit = GeneratedColumn<double>(
      'operation_credit', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _currencyIdMeta =
      const VerificationMeta('currencyId');
  @override
  late final GeneratedColumn<int> currencyId = GeneratedColumn<int>(
      'currency_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _currencyValueMeta =
      const VerificationMeta('currencyValue');
  @override
  late final GeneratedColumn<double> currencyValue = GeneratedColumn<double>(
      'currency_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _operationStatementMeta =
      const VerificationMeta('operationStatement');
  @override
  late final GeneratedColumn<String> operationStatement =
      GeneratedColumn<String>('operation_statement', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        operationDate,
        operationType,
        operationId,
        operationRef,
        accountNumber,
        operationDebit,
        operationCredit,
        currencyId,
        currencyValue,
        operationStatement
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'account_operation_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<AccountOperationModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('operation_date')) {
      context.handle(
          _operationDateMeta,
          operationDate.isAcceptableOrUnknown(
              data['operation_date']!, _operationDateMeta));
    } else if (isInserting) {
      context.missing(_operationDateMeta);
    }
    if (data.containsKey('operation_type')) {
      context.handle(
          _operationTypeMeta,
          operationType.isAcceptableOrUnknown(
              data['operation_type']!, _operationTypeMeta));
    } else if (isInserting) {
      context.missing(_operationTypeMeta);
    }
    if (data.containsKey('operation_id')) {
      context.handle(
          _operationIdMeta,
          operationId.isAcceptableOrUnknown(
              data['operation_id']!, _operationIdMeta));
    } else if (isInserting) {
      context.missing(_operationIdMeta);
    }
    if (data.containsKey('operation_ref')) {
      context.handle(
          _operationRefMeta,
          operationRef.isAcceptableOrUnknown(
              data['operation_ref']!, _operationRefMeta));
    } else if (isInserting) {
      context.missing(_operationRefMeta);
    }
    if (data.containsKey('account_number')) {
      context.handle(
          _accountNumberMeta,
          accountNumber.isAcceptableOrUnknown(
              data['account_number']!, _accountNumberMeta));
    } else if (isInserting) {
      context.missing(_accountNumberMeta);
    }
    if (data.containsKey('operation_debit')) {
      context.handle(
          _operationDebitMeta,
          operationDebit.isAcceptableOrUnknown(
              data['operation_debit']!, _operationDebitMeta));
    } else if (isInserting) {
      context.missing(_operationDebitMeta);
    }
    if (data.containsKey('operation_credit')) {
      context.handle(
          _operationCreditMeta,
          operationCredit.isAcceptableOrUnknown(
              data['operation_credit']!, _operationCreditMeta));
    } else if (isInserting) {
      context.missing(_operationCreditMeta);
    }
    if (data.containsKey('currency_id')) {
      context.handle(
          _currencyIdMeta,
          currencyId.isAcceptableOrUnknown(
              data['currency_id']!, _currencyIdMeta));
    } else if (isInserting) {
      context.missing(_currencyIdMeta);
    }
    if (data.containsKey('currency_value')) {
      context.handle(
          _currencyValueMeta,
          currencyValue.isAcceptableOrUnknown(
              data['currency_value']!, _currencyValueMeta));
    } else if (isInserting) {
      context.missing(_currencyValueMeta);
    }
    if (data.containsKey('operation_statement')) {
      context.handle(
          _operationStatementMeta,
          operationStatement.isAcceptableOrUnknown(
              data['operation_statement']!, _operationStatementMeta));
    } else if (isInserting) {
      context.missing(_operationStatementMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AccountOperationModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AccountOperationModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      operationDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}operation_date'])!,
      operationType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}operation_type'])!,
      operationId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}operation_id'])!,
      operationRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}operation_ref'])!,
      accountNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}account_number'])!,
      operationDebit: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}operation_debit'])!,
      operationCredit: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}operation_credit'])!,
      currencyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}currency_id'])!,
      currencyValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}currency_value'])!,
      operationStatement: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}operation_statement'])!,
    );
  }

  @override
  $AccountOperationTableTable createAlias(String alias) {
    return $AccountOperationTableTable(attachedDatabase, alias);
  }
}

class AccountOperationTableCompanion
    extends UpdateCompanion<AccountOperationModel> {
  final Value<int> id;
  final Value<DateTime> operationDate;
  final Value<int> operationType;
  final Value<int> operationId;
  final Value<String> operationRef;
  final Value<int> accountNumber;
  final Value<double> operationDebit;
  final Value<double> operationCredit;
  final Value<int> currencyId;
  final Value<double> currencyValue;
  final Value<String> operationStatement;
  const AccountOperationTableCompanion({
    this.id = const Value.absent(),
    this.operationDate = const Value.absent(),
    this.operationType = const Value.absent(),
    this.operationId = const Value.absent(),
    this.operationRef = const Value.absent(),
    this.accountNumber = const Value.absent(),
    this.operationDebit = const Value.absent(),
    this.operationCredit = const Value.absent(),
    this.currencyId = const Value.absent(),
    this.currencyValue = const Value.absent(),
    this.operationStatement = const Value.absent(),
  });
  AccountOperationTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime operationDate,
    required int operationType,
    required int operationId,
    required String operationRef,
    required int accountNumber,
    required double operationDebit,
    required double operationCredit,
    required int currencyId,
    required double currencyValue,
    required String operationStatement,
  })  : operationDate = Value(operationDate),
        operationType = Value(operationType),
        operationId = Value(operationId),
        operationRef = Value(operationRef),
        accountNumber = Value(accountNumber),
        operationDebit = Value(operationDebit),
        operationCredit = Value(operationCredit),
        currencyId = Value(currencyId),
        currencyValue = Value(currencyValue),
        operationStatement = Value(operationStatement);
  static Insertable<AccountOperationModel> custom({
    Expression<int>? id,
    Expression<DateTime>? operationDate,
    Expression<int>? operationType,
    Expression<int>? operationId,
    Expression<String>? operationRef,
    Expression<int>? accountNumber,
    Expression<double>? operationDebit,
    Expression<double>? operationCredit,
    Expression<int>? currencyId,
    Expression<double>? currencyValue,
    Expression<String>? operationStatement,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (operationDate != null) 'operation_date': operationDate,
      if (operationType != null) 'operation_type': operationType,
      if (operationId != null) 'operation_id': operationId,
      if (operationRef != null) 'operation_ref': operationRef,
      if (accountNumber != null) 'account_number': accountNumber,
      if (operationDebit != null) 'operation_debit': operationDebit,
      if (operationCredit != null) 'operation_credit': operationCredit,
      if (currencyId != null) 'currency_id': currencyId,
      if (currencyValue != null) 'currency_value': currencyValue,
      if (operationStatement != null) 'operation_statement': operationStatement,
    });
  }

  AccountOperationTableCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? operationDate,
      Value<int>? operationType,
      Value<int>? operationId,
      Value<String>? operationRef,
      Value<int>? accountNumber,
      Value<double>? operationDebit,
      Value<double>? operationCredit,
      Value<int>? currencyId,
      Value<double>? currencyValue,
      Value<String>? operationStatement}) {
    return AccountOperationTableCompanion(
      id: id ?? this.id,
      operationDate: operationDate ?? this.operationDate,
      operationType: operationType ?? this.operationType,
      operationId: operationId ?? this.operationId,
      operationRef: operationRef ?? this.operationRef,
      accountNumber: accountNumber ?? this.accountNumber,
      operationDebit: operationDebit ?? this.operationDebit,
      operationCredit: operationCredit ?? this.operationCredit,
      currencyId: currencyId ?? this.currencyId,
      currencyValue: currencyValue ?? this.currencyValue,
      operationStatement: operationStatement ?? this.operationStatement,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (operationDate.present) {
      map['operation_date'] = Variable<DateTime>(operationDate.value);
    }
    if (operationType.present) {
      map['operation_type'] = Variable<int>(operationType.value);
    }
    if (operationId.present) {
      map['operation_id'] = Variable<int>(operationId.value);
    }
    if (operationRef.present) {
      map['operation_ref'] = Variable<String>(operationRef.value);
    }
    if (accountNumber.present) {
      map['account_number'] = Variable<int>(accountNumber.value);
    }
    if (operationDebit.present) {
      map['operation_debit'] = Variable<double>(operationDebit.value);
    }
    if (operationCredit.present) {
      map['operation_credit'] = Variable<double>(operationCredit.value);
    }
    if (currencyId.present) {
      map['currency_id'] = Variable<int>(currencyId.value);
    }
    if (currencyValue.present) {
      map['currency_value'] = Variable<double>(currencyValue.value);
    }
    if (operationStatement.present) {
      map['operation_statement'] = Variable<String>(operationStatement.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountOperationTableCompanion(')
          ..write('id: $id, ')
          ..write('operationDate: $operationDate, ')
          ..write('operationType: $operationType, ')
          ..write('operationId: $operationId, ')
          ..write('operationRef: $operationRef, ')
          ..write('accountNumber: $accountNumber, ')
          ..write('operationDebit: $operationDebit, ')
          ..write('operationCredit: $operationCredit, ')
          ..write('currencyId: $currencyId, ')
          ..write('currencyValue: $currencyValue, ')
          ..write('operationStatement: $operationStatement')
          ..write(')'))
        .toString();
  }
}

class $RefAccountTableTable extends RefAccountTable
    with TableInfo<$RefAccountTableTable, RefAccountModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RefAccountTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _accTagMeta = const VerificationMeta('accTag');
  @override
  late final GeneratedColumn<int> accTag = GeneratedColumn<int>(
      'acc_tag', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _accNameMeta =
      const VerificationMeta('accName');
  @override
  late final GeneratedColumn<String> accName = GeneratedColumn<String>(
      'acc_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accNumberMeta =
      const VerificationMeta('accNumber');
  @override
  late final GeneratedColumn<int> accNumber = GeneratedColumn<int>(
      'acc_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, accTag, accName, accNumber];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ref_account_table';
  @override
  VerificationContext validateIntegrity(Insertable<RefAccountModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('acc_tag')) {
      context.handle(_accTagMeta,
          accTag.isAcceptableOrUnknown(data['acc_tag']!, _accTagMeta));
    } else if (isInserting) {
      context.missing(_accTagMeta);
    }
    if (data.containsKey('acc_name')) {
      context.handle(_accNameMeta,
          accName.isAcceptableOrUnknown(data['acc_name']!, _accNameMeta));
    } else if (isInserting) {
      context.missing(_accNameMeta);
    }
    if (data.containsKey('acc_number')) {
      context.handle(_accNumberMeta,
          accNumber.isAcceptableOrUnknown(data['acc_number']!, _accNumberMeta));
    } else if (isInserting) {
      context.missing(_accNumberMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RefAccountModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RefAccountModel(
      attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_tag'])!,
      attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}acc_name'])!,
      attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_number'])!,
    );
  }

  @override
  $RefAccountTableTable createAlias(String alias) {
    return $RefAccountTableTable(attachedDatabase, alias);
  }
}

class RefAccountTableCompanion extends UpdateCompanion<RefAccountModel> {
  final Value<int> id;
  final Value<int> accTag;
  final Value<String> accName;
  final Value<int> accNumber;
  const RefAccountTableCompanion({
    this.id = const Value.absent(),
    this.accTag = const Value.absent(),
    this.accName = const Value.absent(),
    this.accNumber = const Value.absent(),
  });
  RefAccountTableCompanion.insert({
    this.id = const Value.absent(),
    required int accTag,
    required String accName,
    required int accNumber,
  })  : accTag = Value(accTag),
        accName = Value(accName),
        accNumber = Value(accNumber);
  static Insertable<RefAccountModel> custom({
    Expression<int>? id,
    Expression<int>? accTag,
    Expression<String>? accName,
    Expression<int>? accNumber,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (accTag != null) 'acc_tag': accTag,
      if (accName != null) 'acc_name': accName,
      if (accNumber != null) 'acc_number': accNumber,
    });
  }

  RefAccountTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? accTag,
      Value<String>? accName,
      Value<int>? accNumber}) {
    return RefAccountTableCompanion(
      id: id ?? this.id,
      accTag: accTag ?? this.accTag,
      accName: accName ?? this.accName,
      accNumber: accNumber ?? this.accNumber,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (accTag.present) {
      map['acc_tag'] = Variable<int>(accTag.value);
    }
    if (accName.present) {
      map['acc_name'] = Variable<String>(accName.value);
    }
    if (accNumber.present) {
      map['acc_number'] = Variable<int>(accNumber.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RefAccountTableCompanion(')
          ..write('id: $id, ')
          ..write('accTag: $accTag, ')
          ..write('accName: $accName, ')
          ..write('accNumber: $accNumber')
          ..write(')'))
        .toString();
  }
}

class $MidAccountTableTable extends MidAccountTable
    with TableInfo<$MidAccountTableTable, MidAccountModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MidAccountTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _accTagMeta = const VerificationMeta('accTag');
  @override
  late final GeneratedColumn<int> accTag = GeneratedColumn<int>(
      'acc_tag', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _accNameMeta =
      const VerificationMeta('accName');
  @override
  late final GeneratedColumn<String> accName = GeneratedColumn<String>(
      'acc_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accNumberMeta =
      const VerificationMeta('accNumber');
  @override
  late final GeneratedColumn<int> accNumber = GeneratedColumn<int>(
      'acc_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _branchIdMeta =
      const VerificationMeta('branchId');
  @override
  late final GeneratedColumn<int> branchId = GeneratedColumn<int>(
      'branch_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, accTag, accName, accNumber, branchId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mid_account_table';
  @override
  VerificationContext validateIntegrity(Insertable<MidAccountModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('acc_tag')) {
      context.handle(_accTagMeta,
          accTag.isAcceptableOrUnknown(data['acc_tag']!, _accTagMeta));
    } else if (isInserting) {
      context.missing(_accTagMeta);
    }
    if (data.containsKey('acc_name')) {
      context.handle(_accNameMeta,
          accName.isAcceptableOrUnknown(data['acc_name']!, _accNameMeta));
    } else if (isInserting) {
      context.missing(_accNameMeta);
    }
    if (data.containsKey('acc_number')) {
      context.handle(_accNumberMeta,
          accNumber.isAcceptableOrUnknown(data['acc_number']!, _accNumberMeta));
    } else if (isInserting) {
      context.missing(_accNumberMeta);
    }
    if (data.containsKey('branch_id')) {
      context.handle(_branchIdMeta,
          branchId.isAcceptableOrUnknown(data['branch_id']!, _branchIdMeta));
    } else if (isInserting) {
      context.missing(_branchIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MidAccountModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MidAccountModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      accTag: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_tag'])!,
      accName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}acc_name'])!,
      accNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_number'])!,
      branchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}branch_id'])!,
    );
  }

  @override
  $MidAccountTableTable createAlias(String alias) {
    return $MidAccountTableTable(attachedDatabase, alias);
  }
}

class MidAccountTableCompanion extends UpdateCompanion<MidAccountModel> {
  final Value<int> id;
  final Value<int> accTag;
  final Value<String> accName;
  final Value<int> accNumber;
  final Value<int> branchId;
  const MidAccountTableCompanion({
    this.id = const Value.absent(),
    this.accTag = const Value.absent(),
    this.accName = const Value.absent(),
    this.accNumber = const Value.absent(),
    this.branchId = const Value.absent(),
  });
  MidAccountTableCompanion.insert({
    this.id = const Value.absent(),
    required int accTag,
    required String accName,
    required int accNumber,
    required int branchId,
  })  : accTag = Value(accTag),
        accName = Value(accName),
        accNumber = Value(accNumber),
        branchId = Value(branchId);
  static Insertable<MidAccountModel> custom({
    Expression<int>? id,
    Expression<int>? accTag,
    Expression<String>? accName,
    Expression<int>? accNumber,
    Expression<int>? branchId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (accTag != null) 'acc_tag': accTag,
      if (accName != null) 'acc_name': accName,
      if (accNumber != null) 'acc_number': accNumber,
      if (branchId != null) 'branch_id': branchId,
    });
  }

  MidAccountTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? accTag,
      Value<String>? accName,
      Value<int>? accNumber,
      Value<int>? branchId}) {
    return MidAccountTableCompanion(
      id: id ?? this.id,
      accTag: accTag ?? this.accTag,
      accName: accName ?? this.accName,
      accNumber: accNumber ?? this.accNumber,
      branchId: branchId ?? this.branchId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (accTag.present) {
      map['acc_tag'] = Variable<int>(accTag.value);
    }
    if (accName.present) {
      map['acc_name'] = Variable<String>(accName.value);
    }
    if (accNumber.present) {
      map['acc_number'] = Variable<int>(accNumber.value);
    }
    if (branchId.present) {
      map['branch_id'] = Variable<int>(branchId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MidAccountTableCompanion(')
          ..write('id: $id, ')
          ..write('accTag: $accTag, ')
          ..write('accName: $accName, ')
          ..write('accNumber: $accNumber, ')
          ..write('branchId: $branchId')
          ..write(')'))
        .toString();
  }
}

class $ExchangesTableTable extends ExchangesTable
    with TableInfo<$ExchangesTableTable, ExchangeModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExchangesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _sandTypeMeta =
      const VerificationMeta('sandType');
  @override
  late final GeneratedColumn<int> sandType = GeneratedColumn<int>(
      'sand_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isCashMeta = const VerificationMeta('isCash');
  @override
  late final GeneratedColumn<bool> isCash = GeneratedColumn<bool>(
      'is_cash', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_cash" IN (0, 1))'));
  static const VerificationMeta _branchIdMeta =
      const VerificationMeta('branchId');
  @override
  late final GeneratedColumn<int> branchId = GeneratedColumn<int>(
      'branch_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sandNumberMeta =
      const VerificationMeta('sandNumber');
  @override
  late final GeneratedColumn<int> sandNumber = GeneratedColumn<int>(
      'sand_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sandDateMeta =
      const VerificationMeta('sandDate');
  @override
  late final GeneratedColumn<DateTime> sandDate = GeneratedColumn<DateTime>(
      'sand_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _fundNumberMeta =
      const VerificationMeta('fundNumber');
  @override
  late final GeneratedColumn<int> fundNumber = GeneratedColumn<int>(
      'fund_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _currencyIdMeta =
      const VerificationMeta('currencyId');
  @override
  late final GeneratedColumn<int> currencyId = GeneratedColumn<int>(
      'currency_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _currencyValueMeta =
      const VerificationMeta('currencyValue');
  @override
  late final GeneratedColumn<double> currencyValue = GeneratedColumn<double>(
      'currency_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _reciepentNameMeta =
      const VerificationMeta('reciepentName');
  @override
  late final GeneratedColumn<String> reciepentName = GeneratedColumn<String>(
      'reciepent_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _totalAmountMeta =
      const VerificationMeta('totalAmount');
  @override
  late final GeneratedColumn<double> totalAmount = GeneratedColumn<double>(
      'total_amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _sandNoteMeta =
      const VerificationMeta('sandNote');
  @override
  late final GeneratedColumn<String> sandNote = GeneratedColumn<String>(
      'sand_note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _refNumberMeta =
      const VerificationMeta('refNumber');
  @override
  late final GeneratedColumn<String> refNumber = GeneratedColumn<String>(
      'ref_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        sandType,
        isCash,
        branchId,
        sandNumber,
        sandDate,
        fundNumber,
        currencyId,
        currencyValue,
        reciepentName,
        totalAmount,
        sandNote,
        refNumber
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exchanges_table';
  @override
  VerificationContext validateIntegrity(Insertable<ExchangeModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('sand_type')) {
      context.handle(_sandTypeMeta,
          sandType.isAcceptableOrUnknown(data['sand_type']!, _sandTypeMeta));
    } else if (isInserting) {
      context.missing(_sandTypeMeta);
    }
    if (data.containsKey('is_cash')) {
      context.handle(_isCashMeta,
          isCash.isAcceptableOrUnknown(data['is_cash']!, _isCashMeta));
    } else if (isInserting) {
      context.missing(_isCashMeta);
    }
    if (data.containsKey('branch_id')) {
      context.handle(_branchIdMeta,
          branchId.isAcceptableOrUnknown(data['branch_id']!, _branchIdMeta));
    } else if (isInserting) {
      context.missing(_branchIdMeta);
    }
    if (data.containsKey('sand_number')) {
      context.handle(
          _sandNumberMeta,
          sandNumber.isAcceptableOrUnknown(
              data['sand_number']!, _sandNumberMeta));
    } else if (isInserting) {
      context.missing(_sandNumberMeta);
    }
    if (data.containsKey('sand_date')) {
      context.handle(_sandDateMeta,
          sandDate.isAcceptableOrUnknown(data['sand_date']!, _sandDateMeta));
    } else if (isInserting) {
      context.missing(_sandDateMeta);
    }
    if (data.containsKey('fund_number')) {
      context.handle(
          _fundNumberMeta,
          fundNumber.isAcceptableOrUnknown(
              data['fund_number']!, _fundNumberMeta));
    } else if (isInserting) {
      context.missing(_fundNumberMeta);
    }
    if (data.containsKey('currency_id')) {
      context.handle(
          _currencyIdMeta,
          currencyId.isAcceptableOrUnknown(
              data['currency_id']!, _currencyIdMeta));
    } else if (isInserting) {
      context.missing(_currencyIdMeta);
    }
    if (data.containsKey('currency_value')) {
      context.handle(
          _currencyValueMeta,
          currencyValue.isAcceptableOrUnknown(
              data['currency_value']!, _currencyValueMeta));
    } else if (isInserting) {
      context.missing(_currencyValueMeta);
    }
    if (data.containsKey('reciepent_name')) {
      context.handle(
          _reciepentNameMeta,
          reciepentName.isAcceptableOrUnknown(
              data['reciepent_name']!, _reciepentNameMeta));
    } else if (isInserting) {
      context.missing(_reciepentNameMeta);
    }
    if (data.containsKey('total_amount')) {
      context.handle(
          _totalAmountMeta,
          totalAmount.isAcceptableOrUnknown(
              data['total_amount']!, _totalAmountMeta));
    } else if (isInserting) {
      context.missing(_totalAmountMeta);
    }
    if (data.containsKey('sand_note')) {
      context.handle(_sandNoteMeta,
          sandNote.isAcceptableOrUnknown(data['sand_note']!, _sandNoteMeta));
    } else if (isInserting) {
      context.missing(_sandNoteMeta);
    }
    if (data.containsKey('ref_number')) {
      context.handle(_refNumberMeta,
          refNumber.isAcceptableOrUnknown(data['ref_number']!, _refNumberMeta));
    } else if (isInserting) {
      context.missing(_refNumberMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExchangeModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExchangeModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      sandType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sand_type'])!,
      isCash: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_cash'])!,
      branchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}branch_id'])!,
      sandNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sand_number'])!,
      sandDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}sand_date'])!,
      fundNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}fund_number'])!,
      currencyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}currency_id'])!,
      currencyValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}currency_value'])!,
      reciepentName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reciepent_name'])!,
      totalAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_amount'])!,
      sandNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sand_note'])!,
      refNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ref_number'])!,
    );
  }

  @override
  $ExchangesTableTable createAlias(String alias) {
    return $ExchangesTableTable(attachedDatabase, alias);
  }
}

class ExchangesTableCompanion extends UpdateCompanion<ExchangeModel> {
  final Value<int> id;
  final Value<int> sandType;
  final Value<bool> isCash;
  final Value<int> branchId;
  final Value<int> sandNumber;
  final Value<DateTime> sandDate;
  final Value<int> fundNumber;
  final Value<int> currencyId;
  final Value<double> currencyValue;
  final Value<String> reciepentName;
  final Value<double> totalAmount;
  final Value<String> sandNote;
  final Value<String> refNumber;
  const ExchangesTableCompanion({
    this.id = const Value.absent(),
    this.sandType = const Value.absent(),
    this.isCash = const Value.absent(),
    this.branchId = const Value.absent(),
    this.sandNumber = const Value.absent(),
    this.sandDate = const Value.absent(),
    this.fundNumber = const Value.absent(),
    this.currencyId = const Value.absent(),
    this.currencyValue = const Value.absent(),
    this.reciepentName = const Value.absent(),
    this.totalAmount = const Value.absent(),
    this.sandNote = const Value.absent(),
    this.refNumber = const Value.absent(),
  });
  ExchangesTableCompanion.insert({
    this.id = const Value.absent(),
    required int sandType,
    required bool isCash,
    required int branchId,
    required int sandNumber,
    required DateTime sandDate,
    required int fundNumber,
    required int currencyId,
    required double currencyValue,
    required String reciepentName,
    required double totalAmount,
    required String sandNote,
    required String refNumber,
  })  : sandType = Value(sandType),
        isCash = Value(isCash),
        branchId = Value(branchId),
        sandNumber = Value(sandNumber),
        sandDate = Value(sandDate),
        fundNumber = Value(fundNumber),
        currencyId = Value(currencyId),
        currencyValue = Value(currencyValue),
        reciepentName = Value(reciepentName),
        totalAmount = Value(totalAmount),
        sandNote = Value(sandNote),
        refNumber = Value(refNumber);
  static Insertable<ExchangeModel> custom({
    Expression<int>? id,
    Expression<int>? sandType,
    Expression<bool>? isCash,
    Expression<int>? branchId,
    Expression<int>? sandNumber,
    Expression<DateTime>? sandDate,
    Expression<int>? fundNumber,
    Expression<int>? currencyId,
    Expression<double>? currencyValue,
    Expression<String>? reciepentName,
    Expression<double>? totalAmount,
    Expression<String>? sandNote,
    Expression<String>? refNumber,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sandType != null) 'sand_type': sandType,
      if (isCash != null) 'is_cash': isCash,
      if (branchId != null) 'branch_id': branchId,
      if (sandNumber != null) 'sand_number': sandNumber,
      if (sandDate != null) 'sand_date': sandDate,
      if (fundNumber != null) 'fund_number': fundNumber,
      if (currencyId != null) 'currency_id': currencyId,
      if (currencyValue != null) 'currency_value': currencyValue,
      if (reciepentName != null) 'reciepent_name': reciepentName,
      if (totalAmount != null) 'total_amount': totalAmount,
      if (sandNote != null) 'sand_note': sandNote,
      if (refNumber != null) 'ref_number': refNumber,
    });
  }

  ExchangesTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? sandType,
      Value<bool>? isCash,
      Value<int>? branchId,
      Value<int>? sandNumber,
      Value<DateTime>? sandDate,
      Value<int>? fundNumber,
      Value<int>? currencyId,
      Value<double>? currencyValue,
      Value<String>? reciepentName,
      Value<double>? totalAmount,
      Value<String>? sandNote,
      Value<String>? refNumber}) {
    return ExchangesTableCompanion(
      id: id ?? this.id,
      sandType: sandType ?? this.sandType,
      isCash: isCash ?? this.isCash,
      branchId: branchId ?? this.branchId,
      sandNumber: sandNumber ?? this.sandNumber,
      sandDate: sandDate ?? this.sandDate,
      fundNumber: fundNumber ?? this.fundNumber,
      currencyId: currencyId ?? this.currencyId,
      currencyValue: currencyValue ?? this.currencyValue,
      reciepentName: reciepentName ?? this.reciepentName,
      totalAmount: totalAmount ?? this.totalAmount,
      sandNote: sandNote ?? this.sandNote,
      refNumber: refNumber ?? this.refNumber,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sandType.present) {
      map['sand_type'] = Variable<int>(sandType.value);
    }
    if (isCash.present) {
      map['is_cash'] = Variable<bool>(isCash.value);
    }
    if (branchId.present) {
      map['branch_id'] = Variable<int>(branchId.value);
    }
    if (sandNumber.present) {
      map['sand_number'] = Variable<int>(sandNumber.value);
    }
    if (sandDate.present) {
      map['sand_date'] = Variable<DateTime>(sandDate.value);
    }
    if (fundNumber.present) {
      map['fund_number'] = Variable<int>(fundNumber.value);
    }
    if (currencyId.present) {
      map['currency_id'] = Variable<int>(currencyId.value);
    }
    if (currencyValue.present) {
      map['currency_value'] = Variable<double>(currencyValue.value);
    }
    if (reciepentName.present) {
      map['reciepent_name'] = Variable<String>(reciepentName.value);
    }
    if (totalAmount.present) {
      map['total_amount'] = Variable<double>(totalAmount.value);
    }
    if (sandNote.present) {
      map['sand_note'] = Variable<String>(sandNote.value);
    }
    if (refNumber.present) {
      map['ref_number'] = Variable<String>(refNumber.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExchangesTableCompanion(')
          ..write('id: $id, ')
          ..write('sandType: $sandType, ')
          ..write('isCash: $isCash, ')
          ..write('branchId: $branchId, ')
          ..write('sandNumber: $sandNumber, ')
          ..write('sandDate: $sandDate, ')
          ..write('fundNumber: $fundNumber, ')
          ..write('currencyId: $currencyId, ')
          ..write('currencyValue: $currencyValue, ')
          ..write('reciepentName: $reciepentName, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('sandNote: $sandNote, ')
          ..write('refNumber: $refNumber')
          ..write(')'))
        .toString();
  }
}

class $SandDetailsTableTable extends SandDetailsTable
    with TableInfo<$SandDetailsTableTable, SandDetailEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SandDetailsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _sandIdMeta = const VerificationMeta('sandId');
  @override
  late final GeneratedColumn<int> sandId = GeneratedColumn<int>(
      'sand_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES exchanges_table (id)'));
  static const VerificationMeta _accNumberMeta =
      const VerificationMeta('accNumber');
  @override
  late final GeneratedColumn<int> accNumber = GeneratedColumn<int>(
      'acc_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _currencyIdMeta =
      const VerificationMeta('currencyId');
  @override
  late final GeneratedColumn<int> currencyId = GeneratedColumn<int>(
      'currency_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _currencyValueMeta =
      const VerificationMeta('currencyValue');
  @override
  late final GeneratedColumn<double> currencyValue = GeneratedColumn<double>(
      'currency_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, sandId, accNumber, amount, currencyId, currencyValue];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sand_details_table';
  @override
  VerificationContext validateIntegrity(Insertable<SandDetailEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('sand_id')) {
      context.handle(_sandIdMeta,
          sandId.isAcceptableOrUnknown(data['sand_id']!, _sandIdMeta));
    } else if (isInserting) {
      context.missing(_sandIdMeta);
    }
    if (data.containsKey('acc_number')) {
      context.handle(_accNumberMeta,
          accNumber.isAcceptableOrUnknown(data['acc_number']!, _accNumberMeta));
    } else if (isInserting) {
      context.missing(_accNumberMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('currency_id')) {
      context.handle(
          _currencyIdMeta,
          currencyId.isAcceptableOrUnknown(
              data['currency_id']!, _currencyIdMeta));
    } else if (isInserting) {
      context.missing(_currencyIdMeta);
    }
    if (data.containsKey('currency_value')) {
      context.handle(
          _currencyValueMeta,
          currencyValue.isAcceptableOrUnknown(
              data['currency_value']!, _currencyValueMeta));
    } else if (isInserting) {
      context.missing(_currencyValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SandDetailEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SandDetailEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      sandId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sand_id'])!,
      accNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_number'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      currencyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}currency_id'])!,
      currencyValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}currency_value'])!,
    );
  }

  @override
  $SandDetailsTableTable createAlias(String alias) {
    return $SandDetailsTableTable(attachedDatabase, alias);
  }
}

class SandDetailsTableCompanion extends UpdateCompanion<SandDetailEntity> {
  final Value<int> id;
  final Value<int> sandId;
  final Value<int> accNumber;
  final Value<double> amount;
  final Value<int> currencyId;
  final Value<double> currencyValue;
  const SandDetailsTableCompanion({
    this.id = const Value.absent(),
    this.sandId = const Value.absent(),
    this.accNumber = const Value.absent(),
    this.amount = const Value.absent(),
    this.currencyId = const Value.absent(),
    this.currencyValue = const Value.absent(),
  });
  SandDetailsTableCompanion.insert({
    this.id = const Value.absent(),
    required int sandId,
    required int accNumber,
    required double amount,
    required int currencyId,
    required double currencyValue,
  })  : sandId = Value(sandId),
        accNumber = Value(accNumber),
        amount = Value(amount),
        currencyId = Value(currencyId),
        currencyValue = Value(currencyValue);
  static Insertable<SandDetailEntity> custom({
    Expression<int>? id,
    Expression<int>? sandId,
    Expression<int>? accNumber,
    Expression<double>? amount,
    Expression<int>? currencyId,
    Expression<double>? currencyValue,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sandId != null) 'sand_id': sandId,
      if (accNumber != null) 'acc_number': accNumber,
      if (amount != null) 'amount': amount,
      if (currencyId != null) 'currency_id': currencyId,
      if (currencyValue != null) 'currency_value': currencyValue,
    });
  }

  SandDetailsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? sandId,
      Value<int>? accNumber,
      Value<double>? amount,
      Value<int>? currencyId,
      Value<double>? currencyValue}) {
    return SandDetailsTableCompanion(
      id: id ?? this.id,
      sandId: sandId ?? this.sandId,
      accNumber: accNumber ?? this.accNumber,
      amount: amount ?? this.amount,
      currencyId: currencyId ?? this.currencyId,
      currencyValue: currencyValue ?? this.currencyValue,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sandId.present) {
      map['sand_id'] = Variable<int>(sandId.value);
    }
    if (accNumber.present) {
      map['acc_number'] = Variable<int>(accNumber.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (currencyId.present) {
      map['currency_id'] = Variable<int>(currencyId.value);
    }
    if (currencyValue.present) {
      map['currency_value'] = Variable<double>(currencyValue.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SandDetailsTableCompanion(')
          ..write('id: $id, ')
          ..write('sandId: $sandId, ')
          ..write('accNumber: $accNumber, ')
          ..write('amount: $amount, ')
          ..write('currencyId: $currencyId, ')
          ..write('currencyValue: $currencyValue')
          ..write(')'))
        .toString();
  }
}

class $CheckOperationsTableTable extends CheckOperationsTable
    with TableInfo<$CheckOperationsTableTable, CheckOperationEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CheckOperationsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _sandIdMeta = const VerificationMeta('sandId');
  @override
  late final GeneratedColumn<int> sandId = GeneratedColumn<int>(
      'sand_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES exchanges_table (id)'));
  static const VerificationMeta _operationNumberMeta =
      const VerificationMeta('operationNumber');
  @override
  late final GeneratedColumn<String> operationNumber = GeneratedColumn<String>(
      'operation_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _operationDateMeta =
      const VerificationMeta('operationDate');
  @override
  late final GeneratedColumn<DateTime> operationDate =
      GeneratedColumn<DateTime>('operation_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _paymentMethedMeta =
      const VerificationMeta('paymentMethed');
  @override
  late final GeneratedColumn<int> paymentMethed = GeneratedColumn<int>(
      'payment_methed', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operationStateMeta =
      const VerificationMeta('operationState');
  @override
  late final GeneratedColumn<bool> operationState = GeneratedColumn<bool>(
      'operation_state', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("operation_state" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        sandId,
        operationNumber,
        operationDate,
        paymentMethed,
        operationState
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'check_operations_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<CheckOperationEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('sand_id')) {
      context.handle(_sandIdMeta,
          sandId.isAcceptableOrUnknown(data['sand_id']!, _sandIdMeta));
    } else if (isInserting) {
      context.missing(_sandIdMeta);
    }
    if (data.containsKey('operation_number')) {
      context.handle(
          _operationNumberMeta,
          operationNumber.isAcceptableOrUnknown(
              data['operation_number']!, _operationNumberMeta));
    } else if (isInserting) {
      context.missing(_operationNumberMeta);
    }
    if (data.containsKey('operation_date')) {
      context.handle(
          _operationDateMeta,
          operationDate.isAcceptableOrUnknown(
              data['operation_date']!, _operationDateMeta));
    } else if (isInserting) {
      context.missing(_operationDateMeta);
    }
    if (data.containsKey('payment_methed')) {
      context.handle(
          _paymentMethedMeta,
          paymentMethed.isAcceptableOrUnknown(
              data['payment_methed']!, _paymentMethedMeta));
    } else if (isInserting) {
      context.missing(_paymentMethedMeta);
    }
    if (data.containsKey('operation_state')) {
      context.handle(
          _operationStateMeta,
          operationState.isAcceptableOrUnknown(
              data['operation_state']!, _operationStateMeta));
    } else if (isInserting) {
      context.missing(_operationStateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CheckOperationEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CheckOperationEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      sandId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sand_id'])!,
      operationNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}operation_number'])!,
      operationDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}operation_date'])!,
      paymentMethed: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}payment_methed'])!,
      operationState: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}operation_state'])!,
    );
  }

  @override
  $CheckOperationsTableTable createAlias(String alias) {
    return $CheckOperationsTableTable(attachedDatabase, alias);
  }
}

class CheckOperationsTableCompanion
    extends UpdateCompanion<CheckOperationEntity> {
  final Value<int> id;
  final Value<int> sandId;
  final Value<String> operationNumber;
  final Value<DateTime> operationDate;
  final Value<int> paymentMethed;
  final Value<bool> operationState;
  const CheckOperationsTableCompanion({
    this.id = const Value.absent(),
    this.sandId = const Value.absent(),
    this.operationNumber = const Value.absent(),
    this.operationDate = const Value.absent(),
    this.paymentMethed = const Value.absent(),
    this.operationState = const Value.absent(),
  });
  CheckOperationsTableCompanion.insert({
    this.id = const Value.absent(),
    required int sandId,
    required String operationNumber,
    required DateTime operationDate,
    required int paymentMethed,
    required bool operationState,
  })  : sandId = Value(sandId),
        operationNumber = Value(operationNumber),
        operationDate = Value(operationDate),
        paymentMethed = Value(paymentMethed),
        operationState = Value(operationState);
  static Insertable<CheckOperationEntity> custom({
    Expression<int>? id,
    Expression<int>? sandId,
    Expression<String>? operationNumber,
    Expression<DateTime>? operationDate,
    Expression<int>? paymentMethed,
    Expression<bool>? operationState,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sandId != null) 'sand_id': sandId,
      if (operationNumber != null) 'operation_number': operationNumber,
      if (operationDate != null) 'operation_date': operationDate,
      if (paymentMethed != null) 'payment_methed': paymentMethed,
      if (operationState != null) 'operation_state': operationState,
    });
  }

  CheckOperationsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? sandId,
      Value<String>? operationNumber,
      Value<DateTime>? operationDate,
      Value<int>? paymentMethed,
      Value<bool>? operationState}) {
    return CheckOperationsTableCompanion(
      id: id ?? this.id,
      sandId: sandId ?? this.sandId,
      operationNumber: operationNumber ?? this.operationNumber,
      operationDate: operationDate ?? this.operationDate,
      paymentMethed: paymentMethed ?? this.paymentMethed,
      operationState: operationState ?? this.operationState,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sandId.present) {
      map['sand_id'] = Variable<int>(sandId.value);
    }
    if (operationNumber.present) {
      map['operation_number'] = Variable<String>(operationNumber.value);
    }
    if (operationDate.present) {
      map['operation_date'] = Variable<DateTime>(operationDate.value);
    }
    if (paymentMethed.present) {
      map['payment_methed'] = Variable<int>(paymentMethed.value);
    }
    if (operationState.present) {
      map['operation_state'] = Variable<bool>(operationState.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CheckOperationsTableCompanion(')
          ..write('id: $id, ')
          ..write('sandId: $sandId, ')
          ..write('operationNumber: $operationNumber, ')
          ..write('operationDate: $operationDate, ')
          ..write('paymentMethed: $paymentMethed, ')
          ..write('operationState: $operationState')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SettingsTableTable settingsTable = $SettingsTableTable(this);
  late final $UserTableTable userTable = $UserTableTable(this);
  late final $CompanyTableTable companyTable = $CompanyTableTable(this);
  late final $BranchTableTable branchTable = $BranchTableTable(this);
  late final $CurencyTableTable curencyTable = $CurencyTableTable(this);
  late final $UserStoreTableTable userStoreTable = $UserStoreTableTable(this);
  late final $UnitTableTable unitTable = $UnitTableTable(this);
  late final $ItemGroupTableTable itemGroupTable = $ItemGroupTableTable(this);
  late final $ItemTableTable itemTable = $ItemTableTable(this);
  late final $ItemUnitTableTable itemUnitTable = $ItemUnitTableTable(this);
  late final $PaymentTableTable paymentTable = $PaymentTableTable(this);
  late final $SystemDocTableTable systemDocTable = $SystemDocTableTable(this);
  late final $UserSettingTableTable userSettingTable =
      $UserSettingTableTable(this);
  late final $ItemAlterTableTable itemAlterTable = $ItemAlterTableTable(this);
  late final $BarcodeTableTable barcodeTable = $BarcodeTableTable(this);
  late final $AccountTableTable accountTable = $AccountTableTable(this);
  late final $StoreOperationTableTable storeOperationTable =
      $StoreOperationTableTable(this);
  late final $BillTableTable billTable = $BillTableTable(this);
  late final $BillDetailsTableTable billDetailsTable =
      $BillDetailsTableTable(this);
  late final $AccountOperationTableTable accountOperationTable =
      $AccountOperationTableTable(this);
  late final $RefAccountTableTable refAccountTable =
      $RefAccountTableTable(this);
  late final $MidAccountTableTable midAccountTable =
      $MidAccountTableTable(this);
  late final $ExchangesTableTable exchangesTable = $ExchangesTableTable(this);
  late final $SandDetailsTableTable sandDetailsTable =
      $SandDetailsTableTable(this);
  late final $CheckOperationsTableTable checkOperationsTable =
      $CheckOperationsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        settingsTable,
        userTable,
        companyTable,
        branchTable,
        curencyTable,
        userStoreTable,
        unitTable,
        itemGroupTable,
        itemTable,
        itemUnitTable,
        paymentTable,
        systemDocTable,
        userSettingTable,
        itemAlterTable,
        barcodeTable,
        accountTable,
        storeOperationTable,
        billTable,
        billDetailsTable,
        accountOperationTable,
        refAccountTable,
        midAccountTable,
        exchangesTable,
        sandDetailsTable,
        checkOperationsTable
      ];
}

typedef $$SettingsTableTableCreateCompanionBuilder = SettingsTableCompanion
    Function({
  Value<int> userId,
  Value<bool> fixedBillDate,
  Value<bool> editSalePrice,
  Value<bool> showQr,
  Value<bool> addNewCustomers,
  Value<bool> showSalesManInBill,
  Value<bool> showStoreInBill,
  Value<bool> saleInNegative,
  Value<bool> sumItemsInBill,
  Value<bool> editTax,
  Value<bool> saleBillNumInReSaleBill,
  Value<bool> useFreeQty,
  Value<bool> useDiscountPerItem,
  Value<bool> useSarfSand,
  Value<bool> useGabthSand,
  Value<bool> useDiscountPerBill,
  Value<bool> useSalesTax,
  Value<bool> useBillStatement,
  Value<bool> checkAccLimit,
  Value<bool> useExpireDate,
  Value<bool> useValueAddTax,
  Value<bool> billDiscountCalc,
  required int salesTaxRate,
});
typedef $$SettingsTableTableUpdateCompanionBuilder = SettingsTableCompanion
    Function({
  Value<int> userId,
  Value<bool> fixedBillDate,
  Value<bool> editSalePrice,
  Value<bool> showQr,
  Value<bool> addNewCustomers,
  Value<bool> showSalesManInBill,
  Value<bool> showStoreInBill,
  Value<bool> saleInNegative,
  Value<bool> sumItemsInBill,
  Value<bool> editTax,
  Value<bool> saleBillNumInReSaleBill,
  Value<bool> useFreeQty,
  Value<bool> useDiscountPerItem,
  Value<bool> useSarfSand,
  Value<bool> useGabthSand,
  Value<bool> useDiscountPerBill,
  Value<bool> useSalesTax,
  Value<bool> useBillStatement,
  Value<bool> checkAccLimit,
  Value<bool> useExpireDate,
  Value<bool> useValueAddTax,
  Value<bool> billDiscountCalc,
  Value<int> salesTaxRate,
});

class $$SettingsTableTableFilterComposer
    extends Composer<_$AppDatabase, $SettingsTableTable> {
  $$SettingsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get fixedBillDate => $composableBuilder(
      column: $table.fixedBillDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get editSalePrice => $composableBuilder(
      column: $table.editSalePrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get showQr => $composableBuilder(
      column: $table.showQr, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get addNewCustomers => $composableBuilder(
      column: $table.addNewCustomers,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get showSalesManInBill => $composableBuilder(
      column: $table.showSalesManInBill,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get showStoreInBill => $composableBuilder(
      column: $table.showStoreInBill,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get saleInNegative => $composableBuilder(
      column: $table.saleInNegative,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get sumItemsInBill => $composableBuilder(
      column: $table.sumItemsInBill,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get editTax => $composableBuilder(
      column: $table.editTax, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get saleBillNumInReSaleBill => $composableBuilder(
      column: $table.saleBillNumInReSaleBill,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get useFreeQty => $composableBuilder(
      column: $table.useFreeQty, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get useDiscountPerItem => $composableBuilder(
      column: $table.useDiscountPerItem,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get useSarfSand => $composableBuilder(
      column: $table.useSarfSand, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get useGabthSand => $composableBuilder(
      column: $table.useGabthSand, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get useDiscountPerBill => $composableBuilder(
      column: $table.useDiscountPerBill,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get useSalesTax => $composableBuilder(
      column: $table.useSalesTax, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get useBillStatement => $composableBuilder(
      column: $table.useBillStatement,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get checkAccLimit => $composableBuilder(
      column: $table.checkAccLimit, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get useExpireDate => $composableBuilder(
      column: $table.useExpireDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get useValueAddTax => $composableBuilder(
      column: $table.useValueAddTax,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get billDiscountCalc => $composableBuilder(
      column: $table.billDiscountCalc,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get salesTaxRate => $composableBuilder(
      column: $table.salesTaxRate, builder: (column) => ColumnFilters(column));
}

class $$SettingsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingsTableTable> {
  $$SettingsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get fixedBillDate => $composableBuilder(
      column: $table.fixedBillDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get editSalePrice => $composableBuilder(
      column: $table.editSalePrice,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get showQr => $composableBuilder(
      column: $table.showQr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get addNewCustomers => $composableBuilder(
      column: $table.addNewCustomers,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get showSalesManInBill => $composableBuilder(
      column: $table.showSalesManInBill,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get showStoreInBill => $composableBuilder(
      column: $table.showStoreInBill,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get saleInNegative => $composableBuilder(
      column: $table.saleInNegative,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get sumItemsInBill => $composableBuilder(
      column: $table.sumItemsInBill,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get editTax => $composableBuilder(
      column: $table.editTax, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get saleBillNumInReSaleBill => $composableBuilder(
      column: $table.saleBillNumInReSaleBill,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get useFreeQty => $composableBuilder(
      column: $table.useFreeQty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get useDiscountPerItem => $composableBuilder(
      column: $table.useDiscountPerItem,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get useSarfSand => $composableBuilder(
      column: $table.useSarfSand, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get useGabthSand => $composableBuilder(
      column: $table.useGabthSand,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get useDiscountPerBill => $composableBuilder(
      column: $table.useDiscountPerBill,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get useSalesTax => $composableBuilder(
      column: $table.useSalesTax, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get useBillStatement => $composableBuilder(
      column: $table.useBillStatement,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get checkAccLimit => $composableBuilder(
      column: $table.checkAccLimit,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get useExpireDate => $composableBuilder(
      column: $table.useExpireDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get useValueAddTax => $composableBuilder(
      column: $table.useValueAddTax,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get billDiscountCalc => $composableBuilder(
      column: $table.billDiscountCalc,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get salesTaxRate => $composableBuilder(
      column: $table.salesTaxRate,
      builder: (column) => ColumnOrderings(column));
}

class $$SettingsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingsTableTable> {
  $$SettingsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<bool> get fixedBillDate => $composableBuilder(
      column: $table.fixedBillDate, builder: (column) => column);

  GeneratedColumn<bool> get editSalePrice => $composableBuilder(
      column: $table.editSalePrice, builder: (column) => column);

  GeneratedColumn<bool> get showQr =>
      $composableBuilder(column: $table.showQr, builder: (column) => column);

  GeneratedColumn<bool> get addNewCustomers => $composableBuilder(
      column: $table.addNewCustomers, builder: (column) => column);

  GeneratedColumn<bool> get showSalesManInBill => $composableBuilder(
      column: $table.showSalesManInBill, builder: (column) => column);

  GeneratedColumn<bool> get showStoreInBill => $composableBuilder(
      column: $table.showStoreInBill, builder: (column) => column);

  GeneratedColumn<bool> get saleInNegative => $composableBuilder(
      column: $table.saleInNegative, builder: (column) => column);

  GeneratedColumn<bool> get sumItemsInBill => $composableBuilder(
      column: $table.sumItemsInBill, builder: (column) => column);

  GeneratedColumn<bool> get editTax =>
      $composableBuilder(column: $table.editTax, builder: (column) => column);

  GeneratedColumn<bool> get saleBillNumInReSaleBill => $composableBuilder(
      column: $table.saleBillNumInReSaleBill, builder: (column) => column);

  GeneratedColumn<bool> get useFreeQty => $composableBuilder(
      column: $table.useFreeQty, builder: (column) => column);

  GeneratedColumn<bool> get useDiscountPerItem => $composableBuilder(
      column: $table.useDiscountPerItem, builder: (column) => column);

  GeneratedColumn<bool> get useSarfSand => $composableBuilder(
      column: $table.useSarfSand, builder: (column) => column);

  GeneratedColumn<bool> get useGabthSand => $composableBuilder(
      column: $table.useGabthSand, builder: (column) => column);

  GeneratedColumn<bool> get useDiscountPerBill => $composableBuilder(
      column: $table.useDiscountPerBill, builder: (column) => column);

  GeneratedColumn<bool> get useSalesTax => $composableBuilder(
      column: $table.useSalesTax, builder: (column) => column);

  GeneratedColumn<bool> get useBillStatement => $composableBuilder(
      column: $table.useBillStatement, builder: (column) => column);

  GeneratedColumn<bool> get checkAccLimit => $composableBuilder(
      column: $table.checkAccLimit, builder: (column) => column);

  GeneratedColumn<bool> get useExpireDate => $composableBuilder(
      column: $table.useExpireDate, builder: (column) => column);

  GeneratedColumn<bool> get useValueAddTax => $composableBuilder(
      column: $table.useValueAddTax, builder: (column) => column);

  GeneratedColumn<bool> get billDiscountCalc => $composableBuilder(
      column: $table.billDiscountCalc, builder: (column) => column);

  GeneratedColumn<int> get salesTaxRate => $composableBuilder(
      column: $table.salesTaxRate, builder: (column) => column);
}

class $$SettingsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SettingsTableTable,
    SettingModel,
    $$SettingsTableTableFilterComposer,
    $$SettingsTableTableOrderingComposer,
    $$SettingsTableTableAnnotationComposer,
    $$SettingsTableTableCreateCompanionBuilder,
    $$SettingsTableTableUpdateCompanionBuilder,
    (
      SettingModel,
      BaseReferences<_$AppDatabase, $SettingsTableTable, SettingModel>
    ),
    SettingModel,
    PrefetchHooks Function()> {
  $$SettingsTableTableTableManager(_$AppDatabase db, $SettingsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> userId = const Value.absent(),
            Value<bool> fixedBillDate = const Value.absent(),
            Value<bool> editSalePrice = const Value.absent(),
            Value<bool> showQr = const Value.absent(),
            Value<bool> addNewCustomers = const Value.absent(),
            Value<bool> showSalesManInBill = const Value.absent(),
            Value<bool> showStoreInBill = const Value.absent(),
            Value<bool> saleInNegative = const Value.absent(),
            Value<bool> sumItemsInBill = const Value.absent(),
            Value<bool> editTax = const Value.absent(),
            Value<bool> saleBillNumInReSaleBill = const Value.absent(),
            Value<bool> useFreeQty = const Value.absent(),
            Value<bool> useDiscountPerItem = const Value.absent(),
            Value<bool> useSarfSand = const Value.absent(),
            Value<bool> useGabthSand = const Value.absent(),
            Value<bool> useDiscountPerBill = const Value.absent(),
            Value<bool> useSalesTax = const Value.absent(),
            Value<bool> useBillStatement = const Value.absent(),
            Value<bool> checkAccLimit = const Value.absent(),
            Value<bool> useExpireDate = const Value.absent(),
            Value<bool> useValueAddTax = const Value.absent(),
            Value<bool> billDiscountCalc = const Value.absent(),
            Value<int> salesTaxRate = const Value.absent(),
          }) =>
              SettingsTableCompanion(
            userId: userId,
            fixedBillDate: fixedBillDate,
            editSalePrice: editSalePrice,
            showQr: showQr,
            addNewCustomers: addNewCustomers,
            showSalesManInBill: showSalesManInBill,
            showStoreInBill: showStoreInBill,
            saleInNegative: saleInNegative,
            sumItemsInBill: sumItemsInBill,
            editTax: editTax,
            saleBillNumInReSaleBill: saleBillNumInReSaleBill,
            useFreeQty: useFreeQty,
            useDiscountPerItem: useDiscountPerItem,
            useSarfSand: useSarfSand,
            useGabthSand: useGabthSand,
            useDiscountPerBill: useDiscountPerBill,
            useSalesTax: useSalesTax,
            useBillStatement: useBillStatement,
            checkAccLimit: checkAccLimit,
            useExpireDate: useExpireDate,
            useValueAddTax: useValueAddTax,
            billDiscountCalc: billDiscountCalc,
            salesTaxRate: salesTaxRate,
          ),
          createCompanionCallback: ({
            Value<int> userId = const Value.absent(),
            Value<bool> fixedBillDate = const Value.absent(),
            Value<bool> editSalePrice = const Value.absent(),
            Value<bool> showQr = const Value.absent(),
            Value<bool> addNewCustomers = const Value.absent(),
            Value<bool> showSalesManInBill = const Value.absent(),
            Value<bool> showStoreInBill = const Value.absent(),
            Value<bool> saleInNegative = const Value.absent(),
            Value<bool> sumItemsInBill = const Value.absent(),
            Value<bool> editTax = const Value.absent(),
            Value<bool> saleBillNumInReSaleBill = const Value.absent(),
            Value<bool> useFreeQty = const Value.absent(),
            Value<bool> useDiscountPerItem = const Value.absent(),
            Value<bool> useSarfSand = const Value.absent(),
            Value<bool> useGabthSand = const Value.absent(),
            Value<bool> useDiscountPerBill = const Value.absent(),
            Value<bool> useSalesTax = const Value.absent(),
            Value<bool> useBillStatement = const Value.absent(),
            Value<bool> checkAccLimit = const Value.absent(),
            Value<bool> useExpireDate = const Value.absent(),
            Value<bool> useValueAddTax = const Value.absent(),
            Value<bool> billDiscountCalc = const Value.absent(),
            required int salesTaxRate,
          }) =>
              SettingsTableCompanion.insert(
            userId: userId,
            fixedBillDate: fixedBillDate,
            editSalePrice: editSalePrice,
            showQr: showQr,
            addNewCustomers: addNewCustomers,
            showSalesManInBill: showSalesManInBill,
            showStoreInBill: showStoreInBill,
            saleInNegative: saleInNegative,
            sumItemsInBill: sumItemsInBill,
            editTax: editTax,
            saleBillNumInReSaleBill: saleBillNumInReSaleBill,
            useFreeQty: useFreeQty,
            useDiscountPerItem: useDiscountPerItem,
            useSarfSand: useSarfSand,
            useGabthSand: useGabthSand,
            useDiscountPerBill: useDiscountPerBill,
            useSalesTax: useSalesTax,
            useBillStatement: useBillStatement,
            checkAccLimit: checkAccLimit,
            useExpireDate: useExpireDate,
            useValueAddTax: useValueAddTax,
            billDiscountCalc: billDiscountCalc,
            salesTaxRate: salesTaxRate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SettingsTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SettingsTableTable,
    SettingModel,
    $$SettingsTableTableFilterComposer,
    $$SettingsTableTableOrderingComposer,
    $$SettingsTableTableAnnotationComposer,
    $$SettingsTableTableCreateCompanionBuilder,
    $$SettingsTableTableUpdateCompanionBuilder,
    (
      SettingModel,
      BaseReferences<_$AppDatabase, $SettingsTableTable, SettingModel>
    ),
    SettingModel,
    PrefetchHooks Function()>;
typedef $$UserTableTableCreateCompanionBuilder = UserTableCompanion Function({
  Value<int> id,
  required String userName,
  required String password,
  required int userAcctype,
  required int branchId,
  required int groupId,
  required String note,
  required Uint8List image,
});
typedef $$UserTableTableUpdateCompanionBuilder = UserTableCompanion Function({
  Value<int> id,
  Value<String> userName,
  Value<String> password,
  Value<int> userAcctype,
  Value<int> branchId,
  Value<int> groupId,
  Value<String> note,
  Value<Uint8List> image,
});

class $$UserTableTableFilterComposer
    extends Composer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userName => $composableBuilder(
      column: $table.userName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get password => $composableBuilder(
      column: $table.password, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userAcctype => $composableBuilder(
      column: $table.userAcctype, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get groupId => $composableBuilder(
      column: $table.groupId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));
}

class $$UserTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userName => $composableBuilder(
      column: $table.userName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get password => $composableBuilder(
      column: $table.password, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userAcctype => $composableBuilder(
      column: $table.userAcctype, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get groupId => $composableBuilder(
      column: $table.groupId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));
}

class $$UserTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userName =>
      $composableBuilder(column: $table.userName, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumn<int> get userAcctype => $composableBuilder(
      column: $table.userAcctype, builder: (column) => column);

  GeneratedColumn<int> get branchId =>
      $composableBuilder(column: $table.branchId, builder: (column) => column);

  GeneratedColumn<int> get groupId =>
      $composableBuilder(column: $table.groupId, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<Uint8List> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);
}

class $$UserTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserTableTable,
    UserModel,
    $$UserTableTableFilterComposer,
    $$UserTableTableOrderingComposer,
    $$UserTableTableAnnotationComposer,
    $$UserTableTableCreateCompanionBuilder,
    $$UserTableTableUpdateCompanionBuilder,
    (UserModel, BaseReferences<_$AppDatabase, $UserTableTable, UserModel>),
    UserModel,
    PrefetchHooks Function()> {
  $$UserTableTableTableManager(_$AppDatabase db, $UserTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> userName = const Value.absent(),
            Value<String> password = const Value.absent(),
            Value<int> userAcctype = const Value.absent(),
            Value<int> branchId = const Value.absent(),
            Value<int> groupId = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<Uint8List> image = const Value.absent(),
          }) =>
              UserTableCompanion(
            id: id,
            userName: userName,
            password: password,
            userAcctype: userAcctype,
            branchId: branchId,
            groupId: groupId,
            note: note,
            image: image,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String userName,
            required String password,
            required int userAcctype,
            required int branchId,
            required int groupId,
            required String note,
            required Uint8List image,
          }) =>
              UserTableCompanion.insert(
            id: id,
            userName: userName,
            password: password,
            userAcctype: userAcctype,
            branchId: branchId,
            groupId: groupId,
            note: note,
            image: image,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserTableTable,
    UserModel,
    $$UserTableTableFilterComposer,
    $$UserTableTableOrderingComposer,
    $$UserTableTableAnnotationComposer,
    $$UserTableTableCreateCompanionBuilder,
    $$UserTableTableUpdateCompanionBuilder,
    (UserModel, BaseReferences<_$AppDatabase, $UserTableTable, UserModel>),
    UserModel,
    PrefetchHooks Function()>;
typedef $$CompanyTableTableCreateCompanionBuilder = CompanyTableCompanion
    Function({
  Value<int> id,
  required String name,
  required String enName,
  required String shortName,
  required String enShortName,
  required String address,
  required String website,
  required String note,
  required Uint8List logo,
});
typedef $$CompanyTableTableUpdateCompanionBuilder = CompanyTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> enName,
  Value<String> shortName,
  Value<String> enShortName,
  Value<String> address,
  Value<String> website,
  Value<String> note,
  Value<Uint8List> logo,
});

class $$CompanyTableTableFilterComposer
    extends Composer<_$AppDatabase, $CompanyTableTable> {
  $$CompanyTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enName => $composableBuilder(
      column: $table.enName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get shortName => $composableBuilder(
      column: $table.shortName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enShortName => $composableBuilder(
      column: $table.enShortName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get website => $composableBuilder(
      column: $table.website, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get logo => $composableBuilder(
      column: $table.logo, builder: (column) => ColumnFilters(column));
}

class $$CompanyTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CompanyTableTable> {
  $$CompanyTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enName => $composableBuilder(
      column: $table.enName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get shortName => $composableBuilder(
      column: $table.shortName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enShortName => $composableBuilder(
      column: $table.enShortName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get website => $composableBuilder(
      column: $table.website, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get logo => $composableBuilder(
      column: $table.logo, builder: (column) => ColumnOrderings(column));
}

class $$CompanyTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CompanyTableTable> {
  $$CompanyTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get enName =>
      $composableBuilder(column: $table.enName, builder: (column) => column);

  GeneratedColumn<String> get shortName =>
      $composableBuilder(column: $table.shortName, builder: (column) => column);

  GeneratedColumn<String> get enShortName => $composableBuilder(
      column: $table.enShortName, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get website =>
      $composableBuilder(column: $table.website, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<Uint8List> get logo =>
      $composableBuilder(column: $table.logo, builder: (column) => column);
}

class $$CompanyTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CompanyTableTable,
    CompanyModel,
    $$CompanyTableTableFilterComposer,
    $$CompanyTableTableOrderingComposer,
    $$CompanyTableTableAnnotationComposer,
    $$CompanyTableTableCreateCompanionBuilder,
    $$CompanyTableTableUpdateCompanionBuilder,
    (
      CompanyModel,
      BaseReferences<_$AppDatabase, $CompanyTableTable, CompanyModel>
    ),
    CompanyModel,
    PrefetchHooks Function()> {
  $$CompanyTableTableTableManager(_$AppDatabase db, $CompanyTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CompanyTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CompanyTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CompanyTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> enName = const Value.absent(),
            Value<String> shortName = const Value.absent(),
            Value<String> enShortName = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<String> website = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<Uint8List> logo = const Value.absent(),
          }) =>
              CompanyTableCompanion(
            id: id,
            name: name,
            enName: enName,
            shortName: shortName,
            enShortName: enShortName,
            address: address,
            website: website,
            note: note,
            logo: logo,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String enName,
            required String shortName,
            required String enShortName,
            required String address,
            required String website,
            required String note,
            required Uint8List logo,
          }) =>
              CompanyTableCompanion.insert(
            id: id,
            name: name,
            enName: enName,
            shortName: shortName,
            enShortName: enShortName,
            address: address,
            website: website,
            note: note,
            logo: logo,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CompanyTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CompanyTableTable,
    CompanyModel,
    $$CompanyTableTableFilterComposer,
    $$CompanyTableTableOrderingComposer,
    $$CompanyTableTableAnnotationComposer,
    $$CompanyTableTableCreateCompanionBuilder,
    $$CompanyTableTableUpdateCompanionBuilder,
    (
      CompanyModel,
      BaseReferences<_$AppDatabase, $CompanyTableTable, CompanyModel>
    ),
    CompanyModel,
    PrefetchHooks Function()>;
typedef $$BranchTableTableCreateCompanionBuilder = BranchTableCompanion
    Function({
  Value<int> id,
  required int companyId,
  required String name,
  required String address,
  required String phone,
  required String email,
  required String arReportHeader,
  required String enReportHeader,
  required Uint8List logo,
  required String note,
});
typedef $$BranchTableTableUpdateCompanionBuilder = BranchTableCompanion
    Function({
  Value<int> id,
  Value<int> companyId,
  Value<String> name,
  Value<String> address,
  Value<String> phone,
  Value<String> email,
  Value<String> arReportHeader,
  Value<String> enReportHeader,
  Value<Uint8List> logo,
  Value<String> note,
});

class $$BranchTableTableFilterComposer
    extends Composer<_$AppDatabase, $BranchTableTable> {
  $$BranchTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get arReportHeader => $composableBuilder(
      column: $table.arReportHeader,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enReportHeader => $composableBuilder(
      column: $table.enReportHeader,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get logo => $composableBuilder(
      column: $table.logo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));
}

class $$BranchTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BranchTableTable> {
  $$BranchTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get arReportHeader => $composableBuilder(
      column: $table.arReportHeader,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enReportHeader => $composableBuilder(
      column: $table.enReportHeader,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get logo => $composableBuilder(
      column: $table.logo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));
}

class $$BranchTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BranchTableTable> {
  $$BranchTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get arReportHeader => $composableBuilder(
      column: $table.arReportHeader, builder: (column) => column);

  GeneratedColumn<String> get enReportHeader => $composableBuilder(
      column: $table.enReportHeader, builder: (column) => column);

  GeneratedColumn<Uint8List> get logo =>
      $composableBuilder(column: $table.logo, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);
}

class $$BranchTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BranchTableTable,
    BranchModel,
    $$BranchTableTableFilterComposer,
    $$BranchTableTableOrderingComposer,
    $$BranchTableTableAnnotationComposer,
    $$BranchTableTableCreateCompanionBuilder,
    $$BranchTableTableUpdateCompanionBuilder,
    (
      BranchModel,
      BaseReferences<_$AppDatabase, $BranchTableTable, BranchModel>
    ),
    BranchModel,
    PrefetchHooks Function()> {
  $$BranchTableTableTableManager(_$AppDatabase db, $BranchTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BranchTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BranchTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BranchTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> companyId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<String> phone = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> arReportHeader = const Value.absent(),
            Value<String> enReportHeader = const Value.absent(),
            Value<Uint8List> logo = const Value.absent(),
            Value<String> note = const Value.absent(),
          }) =>
              BranchTableCompanion(
            id: id,
            companyId: companyId,
            name: name,
            address: address,
            phone: phone,
            email: email,
            arReportHeader: arReportHeader,
            enReportHeader: enReportHeader,
            logo: logo,
            note: note,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int companyId,
            required String name,
            required String address,
            required String phone,
            required String email,
            required String arReportHeader,
            required String enReportHeader,
            required Uint8List logo,
            required String note,
          }) =>
              BranchTableCompanion.insert(
            id: id,
            companyId: companyId,
            name: name,
            address: address,
            phone: phone,
            email: email,
            arReportHeader: arReportHeader,
            enReportHeader: enReportHeader,
            logo: logo,
            note: note,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BranchTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BranchTableTable,
    BranchModel,
    $$BranchTableTableFilterComposer,
    $$BranchTableTableOrderingComposer,
    $$BranchTableTableAnnotationComposer,
    $$BranchTableTableCreateCompanionBuilder,
    $$BranchTableTableUpdateCompanionBuilder,
    (
      BranchModel,
      BaseReferences<_$AppDatabase, $BranchTableTable, BranchModel>
    ),
    BranchModel,
    PrefetchHooks Function()>;
typedef $$CurencyTableTableCreateCompanionBuilder = CurencyTableCompanion
    Function({
  Value<int> id,
  required String name,
  required String symbol,
  required String subName,
  required double value,
  required double equivelant,
  required bool localCurrency,
  required bool storeCurrency,
  required double maxValue,
  required double minValue,
  required String note,
  required bool newData,
});
typedef $$CurencyTableTableUpdateCompanionBuilder = CurencyTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> symbol,
  Value<String> subName,
  Value<double> value,
  Value<double> equivelant,
  Value<bool> localCurrency,
  Value<bool> storeCurrency,
  Value<double> maxValue,
  Value<double> minValue,
  Value<String> note,
  Value<bool> newData,
});

class $$CurencyTableTableFilterComposer
    extends Composer<_$AppDatabase, $CurencyTableTable> {
  $$CurencyTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get symbol => $composableBuilder(
      column: $table.symbol, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get subName => $composableBuilder(
      column: $table.subName, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get equivelant => $composableBuilder(
      column: $table.equivelant, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get localCurrency => $composableBuilder(
      column: $table.localCurrency, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get storeCurrency => $composableBuilder(
      column: $table.storeCurrency, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get maxValue => $composableBuilder(
      column: $table.maxValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get minValue => $composableBuilder(
      column: $table.minValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnFilters(column));
}

class $$CurencyTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CurencyTableTable> {
  $$CurencyTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get symbol => $composableBuilder(
      column: $table.symbol, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get subName => $composableBuilder(
      column: $table.subName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get equivelant => $composableBuilder(
      column: $table.equivelant, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get localCurrency => $composableBuilder(
      column: $table.localCurrency,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get storeCurrency => $composableBuilder(
      column: $table.storeCurrency,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get maxValue => $composableBuilder(
      column: $table.maxValue, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get minValue => $composableBuilder(
      column: $table.minValue, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnOrderings(column));
}

class $$CurencyTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CurencyTableTable> {
  $$CurencyTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get subName =>
      $composableBuilder(column: $table.subName, builder: (column) => column);

  GeneratedColumn<double> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<double> get equivelant => $composableBuilder(
      column: $table.equivelant, builder: (column) => column);

  GeneratedColumn<bool> get localCurrency => $composableBuilder(
      column: $table.localCurrency, builder: (column) => column);

  GeneratedColumn<bool> get storeCurrency => $composableBuilder(
      column: $table.storeCurrency, builder: (column) => column);

  GeneratedColumn<double> get maxValue =>
      $composableBuilder(column: $table.maxValue, builder: (column) => column);

  GeneratedColumn<double> get minValue =>
      $composableBuilder(column: $table.minValue, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<bool> get newData =>
      $composableBuilder(column: $table.newData, builder: (column) => column);
}

class $$CurencyTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CurencyTableTable,
    CurencyModel,
    $$CurencyTableTableFilterComposer,
    $$CurencyTableTableOrderingComposer,
    $$CurencyTableTableAnnotationComposer,
    $$CurencyTableTableCreateCompanionBuilder,
    $$CurencyTableTableUpdateCompanionBuilder,
    (
      CurencyModel,
      BaseReferences<_$AppDatabase, $CurencyTableTable, CurencyModel>
    ),
    CurencyModel,
    PrefetchHooks Function()> {
  $$CurencyTableTableTableManager(_$AppDatabase db, $CurencyTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CurencyTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CurencyTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CurencyTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> symbol = const Value.absent(),
            Value<String> subName = const Value.absent(),
            Value<double> value = const Value.absent(),
            Value<double> equivelant = const Value.absent(),
            Value<bool> localCurrency = const Value.absent(),
            Value<bool> storeCurrency = const Value.absent(),
            Value<double> maxValue = const Value.absent(),
            Value<double> minValue = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<bool> newData = const Value.absent(),
          }) =>
              CurencyTableCompanion(
            id: id,
            name: name,
            symbol: symbol,
            subName: subName,
            value: value,
            equivelant: equivelant,
            localCurrency: localCurrency,
            storeCurrency: storeCurrency,
            maxValue: maxValue,
            minValue: minValue,
            note: note,
            newData: newData,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String symbol,
            required String subName,
            required double value,
            required double equivelant,
            required bool localCurrency,
            required bool storeCurrency,
            required double maxValue,
            required double minValue,
            required String note,
            required bool newData,
          }) =>
              CurencyTableCompanion.insert(
            id: id,
            name: name,
            symbol: symbol,
            subName: subName,
            value: value,
            equivelant: equivelant,
            localCurrency: localCurrency,
            storeCurrency: storeCurrency,
            maxValue: maxValue,
            minValue: minValue,
            note: note,
            newData: newData,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CurencyTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CurencyTableTable,
    CurencyModel,
    $$CurencyTableTableFilterComposer,
    $$CurencyTableTableOrderingComposer,
    $$CurencyTableTableAnnotationComposer,
    $$CurencyTableTableCreateCompanionBuilder,
    $$CurencyTableTableUpdateCompanionBuilder,
    (
      CurencyModel,
      BaseReferences<_$AppDatabase, $CurencyTableTable, CurencyModel>
    ),
    CurencyModel,
    PrefetchHooks Function()>;
typedef $$UserStoreTableTableCreateCompanionBuilder = UserStoreTableCompanion
    Function({
  Value<int> id,
  required String name,
  required int accountNumber,
  required int branchId,
  required String storeManager,
  required String managerPhone,
  required String note,
});
typedef $$UserStoreTableTableUpdateCompanionBuilder = UserStoreTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<int> accountNumber,
  Value<int> branchId,
  Value<String> storeManager,
  Value<String> managerPhone,
  Value<String> note,
});

class $$UserStoreTableTableFilterComposer
    extends Composer<_$AppDatabase, $UserStoreTableTable> {
  $$UserStoreTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accountNumber => $composableBuilder(
      column: $table.accountNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get storeManager => $composableBuilder(
      column: $table.storeManager, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get managerPhone => $composableBuilder(
      column: $table.managerPhone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));
}

class $$UserStoreTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UserStoreTableTable> {
  $$UserStoreTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accountNumber => $composableBuilder(
      column: $table.accountNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get storeManager => $composableBuilder(
      column: $table.storeManager,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get managerPhone => $composableBuilder(
      column: $table.managerPhone,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));
}

class $$UserStoreTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserStoreTableTable> {
  $$UserStoreTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get accountNumber => $composableBuilder(
      column: $table.accountNumber, builder: (column) => column);

  GeneratedColumn<int> get branchId =>
      $composableBuilder(column: $table.branchId, builder: (column) => column);

  GeneratedColumn<String> get storeManager => $composableBuilder(
      column: $table.storeManager, builder: (column) => column);

  GeneratedColumn<String> get managerPhone => $composableBuilder(
      column: $table.managerPhone, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);
}

class $$UserStoreTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserStoreTableTable,
    UserStoreModel,
    $$UserStoreTableTableFilterComposer,
    $$UserStoreTableTableOrderingComposer,
    $$UserStoreTableTableAnnotationComposer,
    $$UserStoreTableTableCreateCompanionBuilder,
    $$UserStoreTableTableUpdateCompanionBuilder,
    (
      UserStoreModel,
      BaseReferences<_$AppDatabase, $UserStoreTableTable, UserStoreModel>
    ),
    UserStoreModel,
    PrefetchHooks Function()> {
  $$UserStoreTableTableTableManager(
      _$AppDatabase db, $UserStoreTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserStoreTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserStoreTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserStoreTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> accountNumber = const Value.absent(),
            Value<int> branchId = const Value.absent(),
            Value<String> storeManager = const Value.absent(),
            Value<String> managerPhone = const Value.absent(),
            Value<String> note = const Value.absent(),
          }) =>
              UserStoreTableCompanion(
            id: id,
            name: name,
            accountNumber: accountNumber,
            branchId: branchId,
            storeManager: storeManager,
            managerPhone: managerPhone,
            note: note,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required int accountNumber,
            required int branchId,
            required String storeManager,
            required String managerPhone,
            required String note,
          }) =>
              UserStoreTableCompanion.insert(
            id: id,
            name: name,
            accountNumber: accountNumber,
            branchId: branchId,
            storeManager: storeManager,
            managerPhone: managerPhone,
            note: note,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserStoreTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserStoreTableTable,
    UserStoreModel,
    $$UserStoreTableTableFilterComposer,
    $$UserStoreTableTableOrderingComposer,
    $$UserStoreTableTableAnnotationComposer,
    $$UserStoreTableTableCreateCompanionBuilder,
    $$UserStoreTableTableUpdateCompanionBuilder,
    (
      UserStoreModel,
      BaseReferences<_$AppDatabase, $UserStoreTableTable, UserStoreModel>
    ),
    UserStoreModel,
    PrefetchHooks Function()>;
typedef $$UnitTableTableCreateCompanionBuilder = UnitTableCompanion Function({
  Value<int> id,
  required String name,
  required String note,
  required bool newData,
});
typedef $$UnitTableTableUpdateCompanionBuilder = UnitTableCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> note,
  Value<bool> newData,
});

final class $$UnitTableTableReferences
    extends BaseReferences<_$AppDatabase, $UnitTableTable, UnitModel> {
  $$UnitTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ItemUnitTableTable, List<ItemUnitsModel>>
      _itemUnitTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.itemUnitTable,
              aliasName: $_aliasNameGenerator(
                  db.unitTable.id, db.itemUnitTable.itemUnitId));

  $$ItemUnitTableTableProcessedTableManager get itemUnitTableRefs {
    final manager = $$ItemUnitTableTableTableManager($_db, $_db.itemUnitTable)
        .filter((f) => f.itemUnitId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_itemUnitTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$StoreOperationTableTable,
      List<StoreOperationModel>> _storeOperationTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.storeOperationTable,
          aliasName: $_aliasNameGenerator(
              db.unitTable.id, db.storeOperationTable.unitId));

  $$StoreOperationTableTableProcessedTableManager get storeOperationTableRefs {
    final manager =
        $$StoreOperationTableTableTableManager($_db, $_db.storeOperationTable)
            .filter((f) => f.unitId.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_storeOperationTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$UnitTableTableFilterComposer
    extends Composer<_$AppDatabase, $UnitTableTable> {
  $$UnitTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnFilters(column));

  Expression<bool> itemUnitTableRefs(
      Expression<bool> Function($$ItemUnitTableTableFilterComposer f) f) {
    final $$ItemUnitTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemUnitTable,
        getReferencedColumn: (t) => t.itemUnitId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemUnitTableTableFilterComposer(
              $db: $db,
              $table: $db.itemUnitTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> storeOperationTableRefs(
      Expression<bool> Function($$StoreOperationTableTableFilterComposer f) f) {
    final $$StoreOperationTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.storeOperationTable,
        getReferencedColumn: (t) => t.unitId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StoreOperationTableTableFilterComposer(
              $db: $db,
              $table: $db.storeOperationTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UnitTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UnitTableTable> {
  $$UnitTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnOrderings(column));
}

class $$UnitTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UnitTableTable> {
  $$UnitTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<bool> get newData =>
      $composableBuilder(column: $table.newData, builder: (column) => column);

  Expression<T> itemUnitTableRefs<T extends Object>(
      Expression<T> Function($$ItemUnitTableTableAnnotationComposer a) f) {
    final $$ItemUnitTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemUnitTable,
        getReferencedColumn: (t) => t.itemUnitId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemUnitTableTableAnnotationComposer(
              $db: $db,
              $table: $db.itemUnitTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> storeOperationTableRefs<T extends Object>(
      Expression<T> Function($$StoreOperationTableTableAnnotationComposer a)
          f) {
    final $$StoreOperationTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.storeOperationTable,
            getReferencedColumn: (t) => t.unitId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$StoreOperationTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.storeOperationTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$UnitTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UnitTableTable,
    UnitModel,
    $$UnitTableTableFilterComposer,
    $$UnitTableTableOrderingComposer,
    $$UnitTableTableAnnotationComposer,
    $$UnitTableTableCreateCompanionBuilder,
    $$UnitTableTableUpdateCompanionBuilder,
    (UnitModel, $$UnitTableTableReferences),
    UnitModel,
    PrefetchHooks Function(
        {bool itemUnitTableRefs, bool storeOperationTableRefs})> {
  $$UnitTableTableTableManager(_$AppDatabase db, $UnitTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UnitTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UnitTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UnitTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<bool> newData = const Value.absent(),
          }) =>
              UnitTableCompanion(
            id: id,
            name: name,
            note: note,
            newData: newData,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String note,
            required bool newData,
          }) =>
              UnitTableCompanion.insert(
            id: id,
            name: name,
            note: note,
            newData: newData,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$UnitTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {itemUnitTableRefs = false, storeOperationTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (itemUnitTableRefs) db.itemUnitTable,
                if (storeOperationTableRefs) db.storeOperationTable
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (itemUnitTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$UnitTableTableReferences
                            ._itemUnitTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UnitTableTableReferences(db, table, p0)
                                .itemUnitTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.itemUnitId == item.id),
                        typedResults: items),
                  if (storeOperationTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$UnitTableTableReferences
                            ._storeOperationTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UnitTableTableReferences(db, table, p0)
                                .storeOperationTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.unitId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$UnitTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UnitTableTable,
    UnitModel,
    $$UnitTableTableFilterComposer,
    $$UnitTableTableOrderingComposer,
    $$UnitTableTableAnnotationComposer,
    $$UnitTableTableCreateCompanionBuilder,
    $$UnitTableTableUpdateCompanionBuilder,
    (UnitModel, $$UnitTableTableReferences),
    UnitModel,
    PrefetchHooks Function(
        {bool itemUnitTableRefs, bool storeOperationTableRefs})>;
typedef $$ItemGroupTableTableCreateCompanionBuilder = ItemGroupTableCompanion
    Function({
  Value<int> id,
  required int code,
  required int type,
  required int parent,
  required String name,
  required String note,
  required bool newData,
});
typedef $$ItemGroupTableTableUpdateCompanionBuilder = ItemGroupTableCompanion
    Function({
  Value<int> id,
  Value<int> code,
  Value<int> type,
  Value<int> parent,
  Value<String> name,
  Value<String> note,
  Value<bool> newData,
});

final class $$ItemGroupTableTableReferences extends BaseReferences<
    _$AppDatabase, $ItemGroupTableTable, ItemGroupModel> {
  $$ItemGroupTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ItemTableTable, List<ItemModel>>
      _itemTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.itemTable,
              aliasName: $_aliasNameGenerator(
                  db.itemGroupTable.id, db.itemTable.itemGroupId));

  $$ItemTableTableProcessedTableManager get itemTableRefs {
    final manager = $$ItemTableTableTableManager($_db, $_db.itemTable)
        .filter((f) => f.itemGroupId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_itemTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ItemGroupTableTableFilterComposer
    extends Composer<_$AppDatabase, $ItemGroupTableTable> {
  $$ItemGroupTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get parent => $composableBuilder(
      column: $table.parent, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnFilters(column));

  Expression<bool> itemTableRefs(
      Expression<bool> Function($$ItemTableTableFilterComposer f) f) {
    final $$ItemTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.itemGroupId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableFilterComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ItemGroupTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemGroupTableTable> {
  $$ItemGroupTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get parent => $composableBuilder(
      column: $table.parent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnOrderings(column));
}

class $$ItemGroupTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemGroupTableTable> {
  $$ItemGroupTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<int> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get parent =>
      $composableBuilder(column: $table.parent, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<bool> get newData =>
      $composableBuilder(column: $table.newData, builder: (column) => column);

  Expression<T> itemTableRefs<T extends Object>(
      Expression<T> Function($$ItemTableTableAnnotationComposer a) f) {
    final $$ItemTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.itemGroupId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableAnnotationComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ItemGroupTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemGroupTableTable,
    ItemGroupModel,
    $$ItemGroupTableTableFilterComposer,
    $$ItemGroupTableTableOrderingComposer,
    $$ItemGroupTableTableAnnotationComposer,
    $$ItemGroupTableTableCreateCompanionBuilder,
    $$ItemGroupTableTableUpdateCompanionBuilder,
    (ItemGroupModel, $$ItemGroupTableTableReferences),
    ItemGroupModel,
    PrefetchHooks Function({bool itemTableRefs})> {
  $$ItemGroupTableTableTableManager(
      _$AppDatabase db, $ItemGroupTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemGroupTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemGroupTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemGroupTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> code = const Value.absent(),
            Value<int> type = const Value.absent(),
            Value<int> parent = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<bool> newData = const Value.absent(),
          }) =>
              ItemGroupTableCompanion(
            id: id,
            code: code,
            type: type,
            parent: parent,
            name: name,
            note: note,
            newData: newData,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int code,
            required int type,
            required int parent,
            required String name,
            required String note,
            required bool newData,
          }) =>
              ItemGroupTableCompanion.insert(
            id: id,
            code: code,
            type: type,
            parent: parent,
            name: name,
            note: note,
            newData: newData,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ItemGroupTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({itemTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (itemTableRefs) db.itemTable],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (itemTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ItemGroupTableTableReferences
                            ._itemTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemGroupTableTableReferences(db, table, p0)
                                .itemTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.itemGroupId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ItemGroupTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemGroupTableTable,
    ItemGroupModel,
    $$ItemGroupTableTableFilterComposer,
    $$ItemGroupTableTableOrderingComposer,
    $$ItemGroupTableTableAnnotationComposer,
    $$ItemGroupTableTableCreateCompanionBuilder,
    $$ItemGroupTableTableUpdateCompanionBuilder,
    (ItemGroupModel, $$ItemGroupTableTableReferences),
    ItemGroupModel,
    PrefetchHooks Function({bool itemTableRefs})>;
typedef $$ItemTableTableCreateCompanionBuilder = ItemTableCompanion Function({
  Value<int> id,
  required int itemGroupId,
  required int itemCode,
  required String name,
  required String enName,
  required int type,
  required int itemLimit,
  Value<Uint8List?> itemImage,
  required bool isExpire,
  required bool freeQuantityAllow,
  required bool hasTax,
  required bool hasAlternated,
  required bool newData,
  required int notifyBefore,
  required int taxRate,
  required String itemCompany,
  required String orignalCountry,
  required String itemDescription,
  required String note,
});
typedef $$ItemTableTableUpdateCompanionBuilder = ItemTableCompanion Function({
  Value<int> id,
  Value<int> itemGroupId,
  Value<int> itemCode,
  Value<String> name,
  Value<String> enName,
  Value<int> type,
  Value<int> itemLimit,
  Value<Uint8List?> itemImage,
  Value<bool> isExpire,
  Value<bool> freeQuantityAllow,
  Value<bool> hasTax,
  Value<bool> hasAlternated,
  Value<bool> newData,
  Value<int> notifyBefore,
  Value<int> taxRate,
  Value<String> itemCompany,
  Value<String> orignalCountry,
  Value<String> itemDescription,
  Value<String> note,
});

final class $$ItemTableTableReferences
    extends BaseReferences<_$AppDatabase, $ItemTableTable, ItemModel> {
  $$ItemTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ItemGroupTableTable _itemGroupIdTable(_$AppDatabase db) =>
      db.itemGroupTable.createAlias(
          $_aliasNameGenerator(db.itemTable.itemGroupId, db.itemGroupTable.id));

  $$ItemGroupTableTableProcessedTableManager get itemGroupId {
    final manager = $$ItemGroupTableTableTableManager($_db, $_db.itemGroupTable)
        .filter((f) => f.id($_item.itemGroupId!));
    final item = $_typedResult.readTableOrNull(_itemGroupIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$ItemUnitTableTable, List<ItemUnitsModel>>
      _itemUnitTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.itemUnitTable,
              aliasName: $_aliasNameGenerator(
                  db.itemTable.id, db.itemUnitTable.itemId));

  $$ItemUnitTableTableProcessedTableManager get itemUnitTableRefs {
    final manager = $$ItemUnitTableTableTableManager($_db, $_db.itemUnitTable)
        .filter((f) => f.itemId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_itemUnitTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ItemAlterTableTable, List<ItemAlterModel>>
      _UniqueItemIdTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.itemAlterTable,
          aliasName:
              $_aliasNameGenerator(db.itemTable.id, db.itemAlterTable.itemId));

  $$ItemAlterTableTableProcessedTableManager get UniqueItemId {
    final manager = $$ItemAlterTableTableTableManager($_db, $_db.itemAlterTable)
        .filter((f) => f.itemId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_UniqueItemIdTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ItemAlterTableTable, List<ItemAlterModel>>
      _UniqueItemAlterIdTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.itemAlterTable,
              aliasName: $_aliasNameGenerator(
                  db.itemTable.id, db.itemAlterTable.itemAlterId));

  $$ItemAlterTableTableProcessedTableManager get UniqueItemAlterId {
    final manager = $$ItemAlterTableTableTableManager($_db, $_db.itemAlterTable)
        .filter((f) => f.itemAlterId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_UniqueItemAlterIdTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$BarcodeTableTable, List<BarcodeModel>>
      _barcodeTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.barcodeTable,
          aliasName:
              $_aliasNameGenerator(db.itemTable.id, db.barcodeTable.itemId));

  $$BarcodeTableTableProcessedTableManager get barcodeTableRefs {
    final manager = $$BarcodeTableTableTableManager($_db, $_db.barcodeTable)
        .filter((f) => f.itemId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_barcodeTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$StoreOperationTableTable,
      List<StoreOperationModel>> _storeOperationTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.storeOperationTable,
          aliasName: $_aliasNameGenerator(
              db.itemTable.id, db.storeOperationTable.itemId));

  $$StoreOperationTableTableProcessedTableManager get storeOperationTableRefs {
    final manager =
        $$StoreOperationTableTableTableManager($_db, $_db.storeOperationTable)
            .filter((f) => f.itemId.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_storeOperationTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ItemTableTableFilterComposer
    extends Composer<_$AppDatabase, $ItemTableTable> {
  $$ItemTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get itemCode => $composableBuilder(
      column: $table.itemCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enName => $composableBuilder(
      column: $table.enName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get itemLimit => $composableBuilder(
      column: $table.itemLimit, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get itemImage => $composableBuilder(
      column: $table.itemImage, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isExpire => $composableBuilder(
      column: $table.isExpire, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get freeQuantityAllow => $composableBuilder(
      column: $table.freeQuantityAllow,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get hasTax => $composableBuilder(
      column: $table.hasTax, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get hasAlternated => $composableBuilder(
      column: $table.hasAlternated, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get notifyBefore => $composableBuilder(
      column: $table.notifyBefore, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get taxRate => $composableBuilder(
      column: $table.taxRate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemCompany => $composableBuilder(
      column: $table.itemCompany, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get orignalCountry => $composableBuilder(
      column: $table.orignalCountry,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemDescription => $composableBuilder(
      column: $table.itemDescription,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  $$ItemGroupTableTableFilterComposer get itemGroupId {
    final $$ItemGroupTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemGroupId,
        referencedTable: $db.itemGroupTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemGroupTableTableFilterComposer(
              $db: $db,
              $table: $db.itemGroupTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> itemUnitTableRefs(
      Expression<bool> Function($$ItemUnitTableTableFilterComposer f) f) {
    final $$ItemUnitTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemUnitTable,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemUnitTableTableFilterComposer(
              $db: $db,
              $table: $db.itemUnitTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> UniqueItemId(
      Expression<bool> Function($$ItemAlterTableTableFilterComposer f) f) {
    final $$ItemAlterTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemAlterTable,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemAlterTableTableFilterComposer(
              $db: $db,
              $table: $db.itemAlterTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> UniqueItemAlterId(
      Expression<bool> Function($$ItemAlterTableTableFilterComposer f) f) {
    final $$ItemAlterTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemAlterTable,
        getReferencedColumn: (t) => t.itemAlterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemAlterTableTableFilterComposer(
              $db: $db,
              $table: $db.itemAlterTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> barcodeTableRefs(
      Expression<bool> Function($$BarcodeTableTableFilterComposer f) f) {
    final $$BarcodeTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.barcodeTable,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BarcodeTableTableFilterComposer(
              $db: $db,
              $table: $db.barcodeTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> storeOperationTableRefs(
      Expression<bool> Function($$StoreOperationTableTableFilterComposer f) f) {
    final $$StoreOperationTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.storeOperationTable,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StoreOperationTableTableFilterComposer(
              $db: $db,
              $table: $db.storeOperationTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ItemTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemTableTable> {
  $$ItemTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get itemCode => $composableBuilder(
      column: $table.itemCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enName => $composableBuilder(
      column: $table.enName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get itemLimit => $composableBuilder(
      column: $table.itemLimit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get itemImage => $composableBuilder(
      column: $table.itemImage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isExpire => $composableBuilder(
      column: $table.isExpire, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get freeQuantityAllow => $composableBuilder(
      column: $table.freeQuantityAllow,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get hasTax => $composableBuilder(
      column: $table.hasTax, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get hasAlternated => $composableBuilder(
      column: $table.hasAlternated,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get notifyBefore => $composableBuilder(
      column: $table.notifyBefore,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get taxRate => $composableBuilder(
      column: $table.taxRate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemCompany => $composableBuilder(
      column: $table.itemCompany, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get orignalCountry => $composableBuilder(
      column: $table.orignalCountry,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemDescription => $composableBuilder(
      column: $table.itemDescription,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  $$ItemGroupTableTableOrderingComposer get itemGroupId {
    final $$ItemGroupTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemGroupId,
        referencedTable: $db.itemGroupTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemGroupTableTableOrderingComposer(
              $db: $db,
              $table: $db.itemGroupTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemTableTable> {
  $$ItemTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get itemCode =>
      $composableBuilder(column: $table.itemCode, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get enName =>
      $composableBuilder(column: $table.enName, builder: (column) => column);

  GeneratedColumn<int> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get itemLimit =>
      $composableBuilder(column: $table.itemLimit, builder: (column) => column);

  GeneratedColumn<Uint8List> get itemImage =>
      $composableBuilder(column: $table.itemImage, builder: (column) => column);

  GeneratedColumn<bool> get isExpire =>
      $composableBuilder(column: $table.isExpire, builder: (column) => column);

  GeneratedColumn<bool> get freeQuantityAllow => $composableBuilder(
      column: $table.freeQuantityAllow, builder: (column) => column);

  GeneratedColumn<bool> get hasTax =>
      $composableBuilder(column: $table.hasTax, builder: (column) => column);

  GeneratedColumn<bool> get hasAlternated => $composableBuilder(
      column: $table.hasAlternated, builder: (column) => column);

  GeneratedColumn<bool> get newData =>
      $composableBuilder(column: $table.newData, builder: (column) => column);

  GeneratedColumn<int> get notifyBefore => $composableBuilder(
      column: $table.notifyBefore, builder: (column) => column);

  GeneratedColumn<int> get taxRate =>
      $composableBuilder(column: $table.taxRate, builder: (column) => column);

  GeneratedColumn<String> get itemCompany => $composableBuilder(
      column: $table.itemCompany, builder: (column) => column);

  GeneratedColumn<String> get orignalCountry => $composableBuilder(
      column: $table.orignalCountry, builder: (column) => column);

  GeneratedColumn<String> get itemDescription => $composableBuilder(
      column: $table.itemDescription, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  $$ItemGroupTableTableAnnotationComposer get itemGroupId {
    final $$ItemGroupTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemGroupId,
        referencedTable: $db.itemGroupTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemGroupTableTableAnnotationComposer(
              $db: $db,
              $table: $db.itemGroupTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> itemUnitTableRefs<T extends Object>(
      Expression<T> Function($$ItemUnitTableTableAnnotationComposer a) f) {
    final $$ItemUnitTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemUnitTable,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemUnitTableTableAnnotationComposer(
              $db: $db,
              $table: $db.itemUnitTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> UniqueItemId<T extends Object>(
      Expression<T> Function($$ItemAlterTableTableAnnotationComposer a) f) {
    final $$ItemAlterTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemAlterTable,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemAlterTableTableAnnotationComposer(
              $db: $db,
              $table: $db.itemAlterTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> UniqueItemAlterId<T extends Object>(
      Expression<T> Function($$ItemAlterTableTableAnnotationComposer a) f) {
    final $$ItemAlterTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemAlterTable,
        getReferencedColumn: (t) => t.itemAlterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemAlterTableTableAnnotationComposer(
              $db: $db,
              $table: $db.itemAlterTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> barcodeTableRefs<T extends Object>(
      Expression<T> Function($$BarcodeTableTableAnnotationComposer a) f) {
    final $$BarcodeTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.barcodeTable,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BarcodeTableTableAnnotationComposer(
              $db: $db,
              $table: $db.barcodeTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> storeOperationTableRefs<T extends Object>(
      Expression<T> Function($$StoreOperationTableTableAnnotationComposer a)
          f) {
    final $$StoreOperationTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.storeOperationTable,
            getReferencedColumn: (t) => t.itemId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$StoreOperationTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.storeOperationTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$ItemTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemTableTable,
    ItemModel,
    $$ItemTableTableFilterComposer,
    $$ItemTableTableOrderingComposer,
    $$ItemTableTableAnnotationComposer,
    $$ItemTableTableCreateCompanionBuilder,
    $$ItemTableTableUpdateCompanionBuilder,
    (ItemModel, $$ItemTableTableReferences),
    ItemModel,
    PrefetchHooks Function(
        {bool itemGroupId,
        bool itemUnitTableRefs,
        bool UniqueItemId,
        bool UniqueItemAlterId,
        bool barcodeTableRefs,
        bool storeOperationTableRefs})> {
  $$ItemTableTableTableManager(_$AppDatabase db, $ItemTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> itemGroupId = const Value.absent(),
            Value<int> itemCode = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> enName = const Value.absent(),
            Value<int> type = const Value.absent(),
            Value<int> itemLimit = const Value.absent(),
            Value<Uint8List?> itemImage = const Value.absent(),
            Value<bool> isExpire = const Value.absent(),
            Value<bool> freeQuantityAllow = const Value.absent(),
            Value<bool> hasTax = const Value.absent(),
            Value<bool> hasAlternated = const Value.absent(),
            Value<bool> newData = const Value.absent(),
            Value<int> notifyBefore = const Value.absent(),
            Value<int> taxRate = const Value.absent(),
            Value<String> itemCompany = const Value.absent(),
            Value<String> orignalCountry = const Value.absent(),
            Value<String> itemDescription = const Value.absent(),
            Value<String> note = const Value.absent(),
          }) =>
              ItemTableCompanion(
            id: id,
            itemGroupId: itemGroupId,
            itemCode: itemCode,
            name: name,
            enName: enName,
            type: type,
            itemLimit: itemLimit,
            itemImage: itemImage,
            isExpire: isExpire,
            freeQuantityAllow: freeQuantityAllow,
            hasTax: hasTax,
            hasAlternated: hasAlternated,
            newData: newData,
            notifyBefore: notifyBefore,
            taxRate: taxRate,
            itemCompany: itemCompany,
            orignalCountry: orignalCountry,
            itemDescription: itemDescription,
            note: note,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int itemGroupId,
            required int itemCode,
            required String name,
            required String enName,
            required int type,
            required int itemLimit,
            Value<Uint8List?> itemImage = const Value.absent(),
            required bool isExpire,
            required bool freeQuantityAllow,
            required bool hasTax,
            required bool hasAlternated,
            required bool newData,
            required int notifyBefore,
            required int taxRate,
            required String itemCompany,
            required String orignalCountry,
            required String itemDescription,
            required String note,
          }) =>
              ItemTableCompanion.insert(
            id: id,
            itemGroupId: itemGroupId,
            itemCode: itemCode,
            name: name,
            enName: enName,
            type: type,
            itemLimit: itemLimit,
            itemImage: itemImage,
            isExpire: isExpire,
            freeQuantityAllow: freeQuantityAllow,
            hasTax: hasTax,
            hasAlternated: hasAlternated,
            newData: newData,
            notifyBefore: notifyBefore,
            taxRate: taxRate,
            itemCompany: itemCompany,
            orignalCountry: orignalCountry,
            itemDescription: itemDescription,
            note: note,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ItemTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {itemGroupId = false,
              itemUnitTableRefs = false,
              UniqueItemId = false,
              UniqueItemAlterId = false,
              barcodeTableRefs = false,
              storeOperationTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (itemUnitTableRefs) db.itemUnitTable,
                if (UniqueItemId) db.itemAlterTable,
                if (UniqueItemAlterId) db.itemAlterTable,
                if (barcodeTableRefs) db.barcodeTable,
                if (storeOperationTableRefs) db.storeOperationTable
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (itemGroupId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemGroupId,
                    referencedTable:
                        $$ItemTableTableReferences._itemGroupIdTable(db),
                    referencedColumn:
                        $$ItemTableTableReferences._itemGroupIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (itemUnitTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ItemTableTableReferences
                            ._itemUnitTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemTableTableReferences(db, table, p0)
                                .itemUnitTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.itemId == item.id),
                        typedResults: items),
                  if (UniqueItemId)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$ItemTableTableReferences._UniqueItemIdTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemTableTableReferences(db, table, p0)
                                .UniqueItemId,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.itemId == item.id),
                        typedResults: items),
                  if (UniqueItemAlterId)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$ItemTableTableReferences._UniqueItemAlterIdTable(
                                db),
                        managerFromTypedResult: (p0) =>
                            $$ItemTableTableReferences(db, table, p0)
                                .UniqueItemAlterId,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.itemAlterId == item.id),
                        typedResults: items),
                  if (barcodeTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ItemTableTableReferences
                            ._barcodeTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemTableTableReferences(db, table, p0)
                                .barcodeTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.itemId == item.id),
                        typedResults: items),
                  if (storeOperationTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ItemTableTableReferences
                            ._storeOperationTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemTableTableReferences(db, table, p0)
                                .storeOperationTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.itemId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ItemTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemTableTable,
    ItemModel,
    $$ItemTableTableFilterComposer,
    $$ItemTableTableOrderingComposer,
    $$ItemTableTableAnnotationComposer,
    $$ItemTableTableCreateCompanionBuilder,
    $$ItemTableTableUpdateCompanionBuilder,
    (ItemModel, $$ItemTableTableReferences),
    ItemModel,
    PrefetchHooks Function(
        {bool itemGroupId,
        bool itemUnitTableRefs,
        bool UniqueItemId,
        bool UniqueItemAlterId,
        bool barcodeTableRefs,
        bool storeOperationTableRefs})>;
typedef $$ItemUnitTableTableCreateCompanionBuilder = ItemUnitTableCompanion
    Function({
  Value<int> id,
  required int itemId,
  required int itemUnitId,
  required int unitFactor,
  required double wholeSaleprice,
  required double retailPrice,
  required double spacialPrice,
  required double intialCost,
  required double itemDiscount,
  required String unitBarcode,
  required bool newData,
});
typedef $$ItemUnitTableTableUpdateCompanionBuilder = ItemUnitTableCompanion
    Function({
  Value<int> id,
  Value<int> itemId,
  Value<int> itemUnitId,
  Value<int> unitFactor,
  Value<double> wholeSaleprice,
  Value<double> retailPrice,
  Value<double> spacialPrice,
  Value<double> intialCost,
  Value<double> itemDiscount,
  Value<String> unitBarcode,
  Value<bool> newData,
});

final class $$ItemUnitTableTableReferences
    extends BaseReferences<_$AppDatabase, $ItemUnitTableTable, ItemUnitsModel> {
  $$ItemUnitTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ItemTableTable _itemIdTable(_$AppDatabase db) =>
      db.itemTable.createAlias(
          $_aliasNameGenerator(db.itemUnitTable.itemId, db.itemTable.id));

  $$ItemTableTableProcessedTableManager get itemId {
    final manager = $$ItemTableTableTableManager($_db, $_db.itemTable)
        .filter((f) => f.id($_item.itemId!));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UnitTableTable _itemUnitIdTable(_$AppDatabase db) =>
      db.unitTable.createAlias(
          $_aliasNameGenerator(db.itemUnitTable.itemUnitId, db.unitTable.id));

  $$UnitTableTableProcessedTableManager get itemUnitId {
    final manager = $$UnitTableTableTableManager($_db, $_db.unitTable)
        .filter((f) => f.id($_item.itemUnitId!));
    final item = $_typedResult.readTableOrNull(_itemUnitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ItemUnitTableTableFilterComposer
    extends Composer<_$AppDatabase, $ItemUnitTableTable> {
  $$ItemUnitTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get unitFactor => $composableBuilder(
      column: $table.unitFactor, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get wholeSaleprice => $composableBuilder(
      column: $table.wholeSaleprice,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get retailPrice => $composableBuilder(
      column: $table.retailPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get spacialPrice => $composableBuilder(
      column: $table.spacialPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get intialCost => $composableBuilder(
      column: $table.intialCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get itemDiscount => $composableBuilder(
      column: $table.itemDiscount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get unitBarcode => $composableBuilder(
      column: $table.unitBarcode, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnFilters(column));

  $$ItemTableTableFilterComposer get itemId {
    final $$ItemTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableFilterComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UnitTableTableFilterComposer get itemUnitId {
    final $$UnitTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemUnitId,
        referencedTable: $db.unitTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UnitTableTableFilterComposer(
              $db: $db,
              $table: $db.unitTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemUnitTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemUnitTableTable> {
  $$ItemUnitTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get unitFactor => $composableBuilder(
      column: $table.unitFactor, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get wholeSaleprice => $composableBuilder(
      column: $table.wholeSaleprice,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get retailPrice => $composableBuilder(
      column: $table.retailPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get spacialPrice => $composableBuilder(
      column: $table.spacialPrice,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get intialCost => $composableBuilder(
      column: $table.intialCost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get itemDiscount => $composableBuilder(
      column: $table.itemDiscount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get unitBarcode => $composableBuilder(
      column: $table.unitBarcode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnOrderings(column));

  $$ItemTableTableOrderingComposer get itemId {
    final $$ItemTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableOrderingComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UnitTableTableOrderingComposer get itemUnitId {
    final $$UnitTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemUnitId,
        referencedTable: $db.unitTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UnitTableTableOrderingComposer(
              $db: $db,
              $table: $db.unitTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemUnitTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemUnitTableTable> {
  $$ItemUnitTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get unitFactor => $composableBuilder(
      column: $table.unitFactor, builder: (column) => column);

  GeneratedColumn<double> get wholeSaleprice => $composableBuilder(
      column: $table.wholeSaleprice, builder: (column) => column);

  GeneratedColumn<double> get retailPrice => $composableBuilder(
      column: $table.retailPrice, builder: (column) => column);

  GeneratedColumn<double> get spacialPrice => $composableBuilder(
      column: $table.spacialPrice, builder: (column) => column);

  GeneratedColumn<double> get intialCost => $composableBuilder(
      column: $table.intialCost, builder: (column) => column);

  GeneratedColumn<double> get itemDiscount => $composableBuilder(
      column: $table.itemDiscount, builder: (column) => column);

  GeneratedColumn<String> get unitBarcode => $composableBuilder(
      column: $table.unitBarcode, builder: (column) => column);

  GeneratedColumn<bool> get newData =>
      $composableBuilder(column: $table.newData, builder: (column) => column);

  $$ItemTableTableAnnotationComposer get itemId {
    final $$ItemTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableAnnotationComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UnitTableTableAnnotationComposer get itemUnitId {
    final $$UnitTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemUnitId,
        referencedTable: $db.unitTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UnitTableTableAnnotationComposer(
              $db: $db,
              $table: $db.unitTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemUnitTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemUnitTableTable,
    ItemUnitsModel,
    $$ItemUnitTableTableFilterComposer,
    $$ItemUnitTableTableOrderingComposer,
    $$ItemUnitTableTableAnnotationComposer,
    $$ItemUnitTableTableCreateCompanionBuilder,
    $$ItemUnitTableTableUpdateCompanionBuilder,
    (ItemUnitsModel, $$ItemUnitTableTableReferences),
    ItemUnitsModel,
    PrefetchHooks Function({bool itemId, bool itemUnitId})> {
  $$ItemUnitTableTableTableManager(_$AppDatabase db, $ItemUnitTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemUnitTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemUnitTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemUnitTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int> itemUnitId = const Value.absent(),
            Value<int> unitFactor = const Value.absent(),
            Value<double> wholeSaleprice = const Value.absent(),
            Value<double> retailPrice = const Value.absent(),
            Value<double> spacialPrice = const Value.absent(),
            Value<double> intialCost = const Value.absent(),
            Value<double> itemDiscount = const Value.absent(),
            Value<String> unitBarcode = const Value.absent(),
            Value<bool> newData = const Value.absent(),
          }) =>
              ItemUnitTableCompanion(
            id: id,
            itemId: itemId,
            itemUnitId: itemUnitId,
            unitFactor: unitFactor,
            wholeSaleprice: wholeSaleprice,
            retailPrice: retailPrice,
            spacialPrice: spacialPrice,
            intialCost: intialCost,
            itemDiscount: itemDiscount,
            unitBarcode: unitBarcode,
            newData: newData,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int itemId,
            required int itemUnitId,
            required int unitFactor,
            required double wholeSaleprice,
            required double retailPrice,
            required double spacialPrice,
            required double intialCost,
            required double itemDiscount,
            required String unitBarcode,
            required bool newData,
          }) =>
              ItemUnitTableCompanion.insert(
            id: id,
            itemId: itemId,
            itemUnitId: itemUnitId,
            unitFactor: unitFactor,
            wholeSaleprice: wholeSaleprice,
            retailPrice: retailPrice,
            spacialPrice: spacialPrice,
            intialCost: intialCost,
            itemDiscount: itemDiscount,
            unitBarcode: unitBarcode,
            newData: newData,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ItemUnitTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({itemId = false, itemUnitId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (itemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemId,
                    referencedTable:
                        $$ItemUnitTableTableReferences._itemIdTable(db),
                    referencedColumn:
                        $$ItemUnitTableTableReferences._itemIdTable(db).id,
                  ) as T;
                }
                if (itemUnitId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemUnitId,
                    referencedTable:
                        $$ItemUnitTableTableReferences._itemUnitIdTable(db),
                    referencedColumn:
                        $$ItemUnitTableTableReferences._itemUnitIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ItemUnitTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemUnitTableTable,
    ItemUnitsModel,
    $$ItemUnitTableTableFilterComposer,
    $$ItemUnitTableTableOrderingComposer,
    $$ItemUnitTableTableAnnotationComposer,
    $$ItemUnitTableTableCreateCompanionBuilder,
    $$ItemUnitTableTableUpdateCompanionBuilder,
    (ItemUnitsModel, $$ItemUnitTableTableReferences),
    ItemUnitsModel,
    PrefetchHooks Function({bool itemId, bool itemUnitId})>;
typedef $$PaymentTableTableCreateCompanionBuilder = PaymentTableCompanion
    Function({
  Value<int> id,
  required int userId,
  required String methodName,
  required String methodNote,
  required bool newData,
  required bool isDefault,
});
typedef $$PaymentTableTableUpdateCompanionBuilder = PaymentTableCompanion
    Function({
  Value<int> id,
  Value<int> userId,
  Value<String> methodName,
  Value<String> methodNote,
  Value<bool> newData,
  Value<bool> isDefault,
});

class $$PaymentTableTableFilterComposer
    extends Composer<_$AppDatabase, $PaymentTableTable> {
  $$PaymentTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get methodName => $composableBuilder(
      column: $table.methodName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get methodNote => $composableBuilder(
      column: $table.methodNote, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDefault => $composableBuilder(
      column: $table.isDefault, builder: (column) => ColumnFilters(column));
}

class $$PaymentTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PaymentTableTable> {
  $$PaymentTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get methodName => $composableBuilder(
      column: $table.methodName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get methodNote => $composableBuilder(
      column: $table.methodNote, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDefault => $composableBuilder(
      column: $table.isDefault, builder: (column) => ColumnOrderings(column));
}

class $$PaymentTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PaymentTableTable> {
  $$PaymentTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get methodName => $composableBuilder(
      column: $table.methodName, builder: (column) => column);

  GeneratedColumn<String> get methodNote => $composableBuilder(
      column: $table.methodNote, builder: (column) => column);

  GeneratedColumn<bool> get newData =>
      $composableBuilder(column: $table.newData, builder: (column) => column);

  GeneratedColumn<bool> get isDefault =>
      $composableBuilder(column: $table.isDefault, builder: (column) => column);
}

class $$PaymentTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PaymentTableTable,
    PaymentModel,
    $$PaymentTableTableFilterComposer,
    $$PaymentTableTableOrderingComposer,
    $$PaymentTableTableAnnotationComposer,
    $$PaymentTableTableCreateCompanionBuilder,
    $$PaymentTableTableUpdateCompanionBuilder,
    (
      PaymentModel,
      BaseReferences<_$AppDatabase, $PaymentTableTable, PaymentModel>
    ),
    PaymentModel,
    PrefetchHooks Function()> {
  $$PaymentTableTableTableManager(_$AppDatabase db, $PaymentTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PaymentTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PaymentTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PaymentTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<String> methodName = const Value.absent(),
            Value<String> methodNote = const Value.absent(),
            Value<bool> newData = const Value.absent(),
            Value<bool> isDefault = const Value.absent(),
          }) =>
              PaymentTableCompanion(
            id: id,
            userId: userId,
            methodName: methodName,
            methodNote: methodNote,
            newData: newData,
            isDefault: isDefault,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int userId,
            required String methodName,
            required String methodNote,
            required bool newData,
            required bool isDefault,
          }) =>
              PaymentTableCompanion.insert(
            id: id,
            userId: userId,
            methodName: methodName,
            methodNote: methodNote,
            newData: newData,
            isDefault: isDefault,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PaymentTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PaymentTableTable,
    PaymentModel,
    $$PaymentTableTableFilterComposer,
    $$PaymentTableTableOrderingComposer,
    $$PaymentTableTableAnnotationComposer,
    $$PaymentTableTableCreateCompanionBuilder,
    $$PaymentTableTableUpdateCompanionBuilder,
    (
      PaymentModel,
      BaseReferences<_$AppDatabase, $PaymentTableTable, PaymentModel>
    ),
    PaymentModel,
    PrefetchHooks Function()>;
typedef $$SystemDocTableTableCreateCompanionBuilder = SystemDocTableCompanion
    Function({
  Value<int> id,
  required int docType,
  required String docName,
});
typedef $$SystemDocTableTableUpdateCompanionBuilder = SystemDocTableCompanion
    Function({
  Value<int> id,
  Value<int> docType,
  Value<String> docName,
});

class $$SystemDocTableTableFilterComposer
    extends Composer<_$AppDatabase, $SystemDocTableTable> {
  $$SystemDocTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get docType => $composableBuilder(
      column: $table.docType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get docName => $composableBuilder(
      column: $table.docName, builder: (column) => ColumnFilters(column));
}

class $$SystemDocTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SystemDocTableTable> {
  $$SystemDocTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get docType => $composableBuilder(
      column: $table.docType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get docName => $composableBuilder(
      column: $table.docName, builder: (column) => ColumnOrderings(column));
}

class $$SystemDocTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SystemDocTableTable> {
  $$SystemDocTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get docType =>
      $composableBuilder(column: $table.docType, builder: (column) => column);

  GeneratedColumn<String> get docName =>
      $composableBuilder(column: $table.docName, builder: (column) => column);
}

class $$SystemDocTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SystemDocTableTable,
    SystemDocModel,
    $$SystemDocTableTableFilterComposer,
    $$SystemDocTableTableOrderingComposer,
    $$SystemDocTableTableAnnotationComposer,
    $$SystemDocTableTableCreateCompanionBuilder,
    $$SystemDocTableTableUpdateCompanionBuilder,
    (
      SystemDocModel,
      BaseReferences<_$AppDatabase, $SystemDocTableTable, SystemDocModel>
    ),
    SystemDocModel,
    PrefetchHooks Function()> {
  $$SystemDocTableTableTableManager(
      _$AppDatabase db, $SystemDocTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SystemDocTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SystemDocTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SystemDocTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> docType = const Value.absent(),
            Value<String> docName = const Value.absent(),
          }) =>
              SystemDocTableCompanion(
            id: id,
            docType: docType,
            docName: docName,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int docType,
            required String docName,
          }) =>
              SystemDocTableCompanion.insert(
            id: id,
            docType: docType,
            docName: docName,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SystemDocTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SystemDocTableTable,
    SystemDocModel,
    $$SystemDocTableTableFilterComposer,
    $$SystemDocTableTableOrderingComposer,
    $$SystemDocTableTableAnnotationComposer,
    $$SystemDocTableTableCreateCompanionBuilder,
    $$SystemDocTableTableUpdateCompanionBuilder,
    (
      SystemDocModel,
      BaseReferences<_$AppDatabase, $SystemDocTableTable, SystemDocModel>
    ),
    SystemDocModel,
    PrefetchHooks Function()>;
typedef $$UserSettingTableTableCreateCompanionBuilder
    = UserSettingTableCompanion Function({
  Value<int> id,
  required int custParent,
  required int custGroup,
  required String generateCode,
});
typedef $$UserSettingTableTableUpdateCompanionBuilder
    = UserSettingTableCompanion Function({
  Value<int> id,
  Value<int> custParent,
  Value<int> custGroup,
  Value<String> generateCode,
});

class $$UserSettingTableTableFilterComposer
    extends Composer<_$AppDatabase, $UserSettingTableTable> {
  $$UserSettingTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get custParent => $composableBuilder(
      column: $table.custParent, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get custGroup => $composableBuilder(
      column: $table.custGroup, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get generateCode => $composableBuilder(
      column: $table.generateCode, builder: (column) => ColumnFilters(column));
}

class $$UserSettingTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UserSettingTableTable> {
  $$UserSettingTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get custParent => $composableBuilder(
      column: $table.custParent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get custGroup => $composableBuilder(
      column: $table.custGroup, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get generateCode => $composableBuilder(
      column: $table.generateCode,
      builder: (column) => ColumnOrderings(column));
}

class $$UserSettingTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserSettingTableTable> {
  $$UserSettingTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get custParent => $composableBuilder(
      column: $table.custParent, builder: (column) => column);

  GeneratedColumn<int> get custGroup =>
      $composableBuilder(column: $table.custGroup, builder: (column) => column);

  GeneratedColumn<String> get generateCode => $composableBuilder(
      column: $table.generateCode, builder: (column) => column);
}

class $$UserSettingTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserSettingTableTable,
    UserSettingModel,
    $$UserSettingTableTableFilterComposer,
    $$UserSettingTableTableOrderingComposer,
    $$UserSettingTableTableAnnotationComposer,
    $$UserSettingTableTableCreateCompanionBuilder,
    $$UserSettingTableTableUpdateCompanionBuilder,
    (
      UserSettingModel,
      BaseReferences<_$AppDatabase, $UserSettingTableTable, UserSettingModel>
    ),
    UserSettingModel,
    PrefetchHooks Function()> {
  $$UserSettingTableTableTableManager(
      _$AppDatabase db, $UserSettingTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserSettingTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserSettingTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserSettingTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> custParent = const Value.absent(),
            Value<int> custGroup = const Value.absent(),
            Value<String> generateCode = const Value.absent(),
          }) =>
              UserSettingTableCompanion(
            id: id,
            custParent: custParent,
            custGroup: custGroup,
            generateCode: generateCode,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int custParent,
            required int custGroup,
            required String generateCode,
          }) =>
              UserSettingTableCompanion.insert(
            id: id,
            custParent: custParent,
            custGroup: custGroup,
            generateCode: generateCode,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserSettingTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserSettingTableTable,
    UserSettingModel,
    $$UserSettingTableTableFilterComposer,
    $$UserSettingTableTableOrderingComposer,
    $$UserSettingTableTableAnnotationComposer,
    $$UserSettingTableTableCreateCompanionBuilder,
    $$UserSettingTableTableUpdateCompanionBuilder,
    (
      UserSettingModel,
      BaseReferences<_$AppDatabase, $UserSettingTableTable, UserSettingModel>
    ),
    UserSettingModel,
    PrefetchHooks Function()>;
typedef $$ItemAlterTableTableCreateCompanionBuilder = ItemAlterTableCompanion
    Function({
  Value<int> id,
  required int itemId,
  required int itemAlterId,
  required int itemOrder,
});
typedef $$ItemAlterTableTableUpdateCompanionBuilder = ItemAlterTableCompanion
    Function({
  Value<int> id,
  Value<int> itemId,
  Value<int> itemAlterId,
  Value<int> itemOrder,
});

final class $$ItemAlterTableTableReferences extends BaseReferences<
    _$AppDatabase, $ItemAlterTableTable, ItemAlterModel> {
  $$ItemAlterTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ItemTableTable _itemIdTable(_$AppDatabase db) =>
      db.itemTable.createAlias(
          $_aliasNameGenerator(db.itemAlterTable.itemId, db.itemTable.id));

  $$ItemTableTableProcessedTableManager get itemId {
    final manager = $$ItemTableTableTableManager($_db, $_db.itemTable)
        .filter((f) => f.id($_item.itemId!));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ItemTableTable _itemAlterIdTable(_$AppDatabase db) =>
      db.itemTable.createAlias(
          $_aliasNameGenerator(db.itemAlterTable.itemAlterId, db.itemTable.id));

  $$ItemTableTableProcessedTableManager get itemAlterId {
    final manager = $$ItemTableTableTableManager($_db, $_db.itemTable)
        .filter((f) => f.id($_item.itemAlterId!));
    final item = $_typedResult.readTableOrNull(_itemAlterIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ItemAlterTableTableFilterComposer
    extends Composer<_$AppDatabase, $ItemAlterTableTable> {
  $$ItemAlterTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get itemOrder => $composableBuilder(
      column: $table.itemOrder, builder: (column) => ColumnFilters(column));

  $$ItemTableTableFilterComposer get itemId {
    final $$ItemTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableFilterComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemTableTableFilterComposer get itemAlterId {
    final $$ItemTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemAlterId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableFilterComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemAlterTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemAlterTableTable> {
  $$ItemAlterTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get itemOrder => $composableBuilder(
      column: $table.itemOrder, builder: (column) => ColumnOrderings(column));

  $$ItemTableTableOrderingComposer get itemId {
    final $$ItemTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableOrderingComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemTableTableOrderingComposer get itemAlterId {
    final $$ItemTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemAlterId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableOrderingComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemAlterTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemAlterTableTable> {
  $$ItemAlterTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get itemOrder =>
      $composableBuilder(column: $table.itemOrder, builder: (column) => column);

  $$ItemTableTableAnnotationComposer get itemId {
    final $$ItemTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableAnnotationComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemTableTableAnnotationComposer get itemAlterId {
    final $$ItemTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemAlterId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableAnnotationComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemAlterTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemAlterTableTable,
    ItemAlterModel,
    $$ItemAlterTableTableFilterComposer,
    $$ItemAlterTableTableOrderingComposer,
    $$ItemAlterTableTableAnnotationComposer,
    $$ItemAlterTableTableCreateCompanionBuilder,
    $$ItemAlterTableTableUpdateCompanionBuilder,
    (ItemAlterModel, $$ItemAlterTableTableReferences),
    ItemAlterModel,
    PrefetchHooks Function({bool itemId, bool itemAlterId})> {
  $$ItemAlterTableTableTableManager(
      _$AppDatabase db, $ItemAlterTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemAlterTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemAlterTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemAlterTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int> itemAlterId = const Value.absent(),
            Value<int> itemOrder = const Value.absent(),
          }) =>
              ItemAlterTableCompanion(
            id: id,
            itemId: itemId,
            itemAlterId: itemAlterId,
            itemOrder: itemOrder,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int itemId,
            required int itemAlterId,
            required int itemOrder,
          }) =>
              ItemAlterTableCompanion.insert(
            id: id,
            itemId: itemId,
            itemAlterId: itemAlterId,
            itemOrder: itemOrder,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ItemAlterTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({itemId = false, itemAlterId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (itemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemId,
                    referencedTable:
                        $$ItemAlterTableTableReferences._itemIdTable(db),
                    referencedColumn:
                        $$ItemAlterTableTableReferences._itemIdTable(db).id,
                  ) as T;
                }
                if (itemAlterId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemAlterId,
                    referencedTable:
                        $$ItemAlterTableTableReferences._itemAlterIdTable(db),
                    referencedColumn: $$ItemAlterTableTableReferences
                        ._itemAlterIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ItemAlterTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemAlterTableTable,
    ItemAlterModel,
    $$ItemAlterTableTableFilterComposer,
    $$ItemAlterTableTableOrderingComposer,
    $$ItemAlterTableTableAnnotationComposer,
    $$ItemAlterTableTableCreateCompanionBuilder,
    $$ItemAlterTableTableUpdateCompanionBuilder,
    (ItemAlterModel, $$ItemAlterTableTableReferences),
    ItemAlterModel,
    PrefetchHooks Function({bool itemId, bool itemAlterId})>;
typedef $$BarcodeTableTableCreateCompanionBuilder = BarcodeTableCompanion
    Function({
  Value<int> id,
  required int itemId,
  required String itemBarcode,
});
typedef $$BarcodeTableTableUpdateCompanionBuilder = BarcodeTableCompanion
    Function({
  Value<int> id,
  Value<int> itemId,
  Value<String> itemBarcode,
});

final class $$BarcodeTableTableReferences
    extends BaseReferences<_$AppDatabase, $BarcodeTableTable, BarcodeModel> {
  $$BarcodeTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ItemTableTable _itemIdTable(_$AppDatabase db) =>
      db.itemTable.createAlias(
          $_aliasNameGenerator(db.barcodeTable.itemId, db.itemTable.id));

  $$ItemTableTableProcessedTableManager get itemId {
    final manager = $$ItemTableTableTableManager($_db, $_db.itemTable)
        .filter((f) => f.id($_item.itemId!));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$BarcodeTableTableFilterComposer
    extends Composer<_$AppDatabase, $BarcodeTableTable> {
  $$BarcodeTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemBarcode => $composableBuilder(
      column: $table.itemBarcode, builder: (column) => ColumnFilters(column));

  $$ItemTableTableFilterComposer get itemId {
    final $$ItemTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableFilterComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BarcodeTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BarcodeTableTable> {
  $$BarcodeTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemBarcode => $composableBuilder(
      column: $table.itemBarcode, builder: (column) => ColumnOrderings(column));

  $$ItemTableTableOrderingComposer get itemId {
    final $$ItemTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableOrderingComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BarcodeTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BarcodeTableTable> {
  $$BarcodeTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get itemBarcode => $composableBuilder(
      column: $table.itemBarcode, builder: (column) => column);

  $$ItemTableTableAnnotationComposer get itemId {
    final $$ItemTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableAnnotationComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BarcodeTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BarcodeTableTable,
    BarcodeModel,
    $$BarcodeTableTableFilterComposer,
    $$BarcodeTableTableOrderingComposer,
    $$BarcodeTableTableAnnotationComposer,
    $$BarcodeTableTableCreateCompanionBuilder,
    $$BarcodeTableTableUpdateCompanionBuilder,
    (BarcodeModel, $$BarcodeTableTableReferences),
    BarcodeModel,
    PrefetchHooks Function({bool itemId})> {
  $$BarcodeTableTableTableManager(_$AppDatabase db, $BarcodeTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BarcodeTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BarcodeTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BarcodeTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<String> itemBarcode = const Value.absent(),
          }) =>
              BarcodeTableCompanion(
            id: id,
            itemId: itemId,
            itemBarcode: itemBarcode,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int itemId,
            required String itemBarcode,
          }) =>
              BarcodeTableCompanion.insert(
            id: id,
            itemId: itemId,
            itemBarcode: itemBarcode,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$BarcodeTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({itemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (itemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemId,
                    referencedTable:
                        $$BarcodeTableTableReferences._itemIdTable(db),
                    referencedColumn:
                        $$BarcodeTableTableReferences._itemIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$BarcodeTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BarcodeTableTable,
    BarcodeModel,
    $$BarcodeTableTableFilterComposer,
    $$BarcodeTableTableOrderingComposer,
    $$BarcodeTableTableAnnotationComposer,
    $$BarcodeTableTableCreateCompanionBuilder,
    $$BarcodeTableTableUpdateCompanionBuilder,
    (BarcodeModel, $$BarcodeTableTableReferences),
    BarcodeModel,
    PrefetchHooks Function({bool itemId})>;
typedef $$AccountTableTableCreateCompanionBuilder = AccountTableCompanion
    Function({
  Value<int> id,
  required int accNumber,
  Value<int?> refNumber,
  required String accName,
  required int accParent,
  required int accType,
  required String note,
  required int accCatagory,
  required int accCatId,
  required String accPhone,
  required String address,
  required String email,
  required int accLimit,
  required int paymentType,
  required int branchId,
  required bool accStoped,
  required bool newData,
  Value<Uint8List?> image,
});
typedef $$AccountTableTableUpdateCompanionBuilder = AccountTableCompanion
    Function({
  Value<int> id,
  Value<int> accNumber,
  Value<int?> refNumber,
  Value<String> accName,
  Value<int> accParent,
  Value<int> accType,
  Value<String> note,
  Value<int> accCatagory,
  Value<int> accCatId,
  Value<String> accPhone,
  Value<String> address,
  Value<String> email,
  Value<int> accLimit,
  Value<int> paymentType,
  Value<int> branchId,
  Value<bool> accStoped,
  Value<bool> newData,
  Value<Uint8List?> image,
});

class $$AccountTableTableFilterComposer
    extends Composer<_$AppDatabase, $AccountTableTable> {
  $$AccountTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accNumber => $composableBuilder(
      column: $table.accNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get refNumber => $composableBuilder(
      column: $table.refNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accName => $composableBuilder(
      column: $table.accName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accParent => $composableBuilder(
      column: $table.accParent, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accType => $composableBuilder(
      column: $table.accType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accCatagory => $composableBuilder(
      column: $table.accCatagory, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accCatId => $composableBuilder(
      column: $table.accCatId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accPhone => $composableBuilder(
      column: $table.accPhone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accLimit => $composableBuilder(
      column: $table.accLimit, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paymentType => $composableBuilder(
      column: $table.paymentType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get accStoped => $composableBuilder(
      column: $table.accStoped, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));
}

class $$AccountTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AccountTableTable> {
  $$AccountTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accNumber => $composableBuilder(
      column: $table.accNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get refNumber => $composableBuilder(
      column: $table.refNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accName => $composableBuilder(
      column: $table.accName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accParent => $composableBuilder(
      column: $table.accParent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accType => $composableBuilder(
      column: $table.accType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accCatagory => $composableBuilder(
      column: $table.accCatagory, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accCatId => $composableBuilder(
      column: $table.accCatId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accPhone => $composableBuilder(
      column: $table.accPhone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accLimit => $composableBuilder(
      column: $table.accLimit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paymentType => $composableBuilder(
      column: $table.paymentType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get accStoped => $composableBuilder(
      column: $table.accStoped, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get newData => $composableBuilder(
      column: $table.newData, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));
}

class $$AccountTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AccountTableTable> {
  $$AccountTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get accNumber =>
      $composableBuilder(column: $table.accNumber, builder: (column) => column);

  GeneratedColumn<int> get refNumber =>
      $composableBuilder(column: $table.refNumber, builder: (column) => column);

  GeneratedColumn<String> get accName =>
      $composableBuilder(column: $table.accName, builder: (column) => column);

  GeneratedColumn<int> get accParent =>
      $composableBuilder(column: $table.accParent, builder: (column) => column);

  GeneratedColumn<int> get accType =>
      $composableBuilder(column: $table.accType, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<int> get accCatagory => $composableBuilder(
      column: $table.accCatagory, builder: (column) => column);

  GeneratedColumn<int> get accCatId =>
      $composableBuilder(column: $table.accCatId, builder: (column) => column);

  GeneratedColumn<String> get accPhone =>
      $composableBuilder(column: $table.accPhone, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<int> get accLimit =>
      $composableBuilder(column: $table.accLimit, builder: (column) => column);

  GeneratedColumn<int> get paymentType => $composableBuilder(
      column: $table.paymentType, builder: (column) => column);

  GeneratedColumn<int> get branchId =>
      $composableBuilder(column: $table.branchId, builder: (column) => column);

  GeneratedColumn<bool> get accStoped =>
      $composableBuilder(column: $table.accStoped, builder: (column) => column);

  GeneratedColumn<bool> get newData =>
      $composableBuilder(column: $table.newData, builder: (column) => column);

  GeneratedColumn<Uint8List> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);
}

class $$AccountTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AccountTableTable,
    AccountModel,
    $$AccountTableTableFilterComposer,
    $$AccountTableTableOrderingComposer,
    $$AccountTableTableAnnotationComposer,
    $$AccountTableTableCreateCompanionBuilder,
    $$AccountTableTableUpdateCompanionBuilder,
    (
      AccountModel,
      BaseReferences<_$AppDatabase, $AccountTableTable, AccountModel>
    ),
    AccountModel,
    PrefetchHooks Function()> {
  $$AccountTableTableTableManager(_$AppDatabase db, $AccountTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AccountTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AccountTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AccountTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> accNumber = const Value.absent(),
            Value<int?> refNumber = const Value.absent(),
            Value<String> accName = const Value.absent(),
            Value<int> accParent = const Value.absent(),
            Value<int> accType = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<int> accCatagory = const Value.absent(),
            Value<int> accCatId = const Value.absent(),
            Value<String> accPhone = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<int> accLimit = const Value.absent(),
            Value<int> paymentType = const Value.absent(),
            Value<int> branchId = const Value.absent(),
            Value<bool> accStoped = const Value.absent(),
            Value<bool> newData = const Value.absent(),
            Value<Uint8List?> image = const Value.absent(),
          }) =>
              AccountTableCompanion(
            id: id,
            accNumber: accNumber,
            refNumber: refNumber,
            accName: accName,
            accParent: accParent,
            accType: accType,
            note: note,
            accCatagory: accCatagory,
            accCatId: accCatId,
            accPhone: accPhone,
            address: address,
            email: email,
            accLimit: accLimit,
            paymentType: paymentType,
            branchId: branchId,
            accStoped: accStoped,
            newData: newData,
            image: image,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int accNumber,
            Value<int?> refNumber = const Value.absent(),
            required String accName,
            required int accParent,
            required int accType,
            required String note,
            required int accCatagory,
            required int accCatId,
            required String accPhone,
            required String address,
            required String email,
            required int accLimit,
            required int paymentType,
            required int branchId,
            required bool accStoped,
            required bool newData,
            Value<Uint8List?> image = const Value.absent(),
          }) =>
              AccountTableCompanion.insert(
            id: id,
            accNumber: accNumber,
            refNumber: refNumber,
            accName: accName,
            accParent: accParent,
            accType: accType,
            note: note,
            accCatagory: accCatagory,
            accCatId: accCatId,
            accPhone: accPhone,
            address: address,
            email: email,
            accLimit: accLimit,
            paymentType: paymentType,
            branchId: branchId,
            accStoped: accStoped,
            newData: newData,
            image: image,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AccountTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AccountTableTable,
    AccountModel,
    $$AccountTableTableFilterComposer,
    $$AccountTableTableOrderingComposer,
    $$AccountTableTableAnnotationComposer,
    $$AccountTableTableCreateCompanionBuilder,
    $$AccountTableTableUpdateCompanionBuilder,
    (
      AccountModel,
      BaseReferences<_$AppDatabase, $AccountTableTable, AccountModel>
    ),
    AccountModel,
    PrefetchHooks Function()>;
typedef $$StoreOperationTableTableCreateCompanionBuilder
    = StoreOperationTableCompanion Function({
  Value<int> id,
  required int operationId,
  required int operationType,
  required DateTime operationDate,
  required bool operationIn,
  required int storeId,
  required int itemId,
  required int unitId,
  required int quantity,
  required double averageCost,
  required double unitCost,
  required double totalCost,
  required int unitFactor,
  required int qtyConvert,
  required String expirDate,
  required int addBranch,
});
typedef $$StoreOperationTableTableUpdateCompanionBuilder
    = StoreOperationTableCompanion Function({
  Value<int> id,
  Value<int> operationId,
  Value<int> operationType,
  Value<DateTime> operationDate,
  Value<bool> operationIn,
  Value<int> storeId,
  Value<int> itemId,
  Value<int> unitId,
  Value<int> quantity,
  Value<double> averageCost,
  Value<double> unitCost,
  Value<double> totalCost,
  Value<int> unitFactor,
  Value<int> qtyConvert,
  Value<String> expirDate,
  Value<int> addBranch,
});

final class $$StoreOperationTableTableReferences extends BaseReferences<
    _$AppDatabase, $StoreOperationTableTable, StoreOperationModel> {
  $$StoreOperationTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ItemTableTable _itemIdTable(_$AppDatabase db) =>
      db.itemTable.createAlias(
          $_aliasNameGenerator(db.storeOperationTable.itemId, db.itemTable.id));

  $$ItemTableTableProcessedTableManager get itemId {
    final manager = $$ItemTableTableTableManager($_db, $_db.itemTable)
        .filter((f) => f.id($_item.itemId!));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UnitTableTable _unitIdTable(_$AppDatabase db) =>
      db.unitTable.createAlias(
          $_aliasNameGenerator(db.storeOperationTable.unitId, db.unitTable.id));

  $$UnitTableTableProcessedTableManager get unitId {
    final manager = $$UnitTableTableTableManager($_db, $_db.unitTable)
        .filter((f) => f.id($_item.unitId!));
    final item = $_typedResult.readTableOrNull(_unitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$StoreOperationTableTableFilterComposer
    extends Composer<_$AppDatabase, $StoreOperationTableTable> {
  $$StoreOperationTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get operationId => $composableBuilder(
      column: $table.operationId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get operationType => $composableBuilder(
      column: $table.operationType, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get operationDate => $composableBuilder(
      column: $table.operationDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get operationIn => $composableBuilder(
      column: $table.operationIn, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get storeId => $composableBuilder(
      column: $table.storeId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get averageCost => $composableBuilder(
      column: $table.averageCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get unitCost => $composableBuilder(
      column: $table.unitCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalCost => $composableBuilder(
      column: $table.totalCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get unitFactor => $composableBuilder(
      column: $table.unitFactor, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get qtyConvert => $composableBuilder(
      column: $table.qtyConvert, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get expirDate => $composableBuilder(
      column: $table.expirDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get addBranch => $composableBuilder(
      column: $table.addBranch, builder: (column) => ColumnFilters(column));

  $$ItemTableTableFilterComposer get itemId {
    final $$ItemTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableFilterComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UnitTableTableFilterComposer get unitId {
    final $$UnitTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.unitId,
        referencedTable: $db.unitTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UnitTableTableFilterComposer(
              $db: $db,
              $table: $db.unitTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StoreOperationTableTableOrderingComposer
    extends Composer<_$AppDatabase, $StoreOperationTableTable> {
  $$StoreOperationTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get operationId => $composableBuilder(
      column: $table.operationId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get operationType => $composableBuilder(
      column: $table.operationType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get operationDate => $composableBuilder(
      column: $table.operationDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get operationIn => $composableBuilder(
      column: $table.operationIn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get storeId => $composableBuilder(
      column: $table.storeId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get averageCost => $composableBuilder(
      column: $table.averageCost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get unitCost => $composableBuilder(
      column: $table.unitCost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalCost => $composableBuilder(
      column: $table.totalCost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get unitFactor => $composableBuilder(
      column: $table.unitFactor, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get qtyConvert => $composableBuilder(
      column: $table.qtyConvert, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get expirDate => $composableBuilder(
      column: $table.expirDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get addBranch => $composableBuilder(
      column: $table.addBranch, builder: (column) => ColumnOrderings(column));

  $$ItemTableTableOrderingComposer get itemId {
    final $$ItemTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableOrderingComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UnitTableTableOrderingComposer get unitId {
    final $$UnitTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.unitId,
        referencedTable: $db.unitTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UnitTableTableOrderingComposer(
              $db: $db,
              $table: $db.unitTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StoreOperationTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $StoreOperationTableTable> {
  $$StoreOperationTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get operationId => $composableBuilder(
      column: $table.operationId, builder: (column) => column);

  GeneratedColumn<int> get operationType => $composableBuilder(
      column: $table.operationType, builder: (column) => column);

  GeneratedColumn<DateTime> get operationDate => $composableBuilder(
      column: $table.operationDate, builder: (column) => column);

  GeneratedColumn<bool> get operationIn => $composableBuilder(
      column: $table.operationIn, builder: (column) => column);

  GeneratedColumn<int> get storeId =>
      $composableBuilder(column: $table.storeId, builder: (column) => column);

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get averageCost => $composableBuilder(
      column: $table.averageCost, builder: (column) => column);

  GeneratedColumn<double> get unitCost =>
      $composableBuilder(column: $table.unitCost, builder: (column) => column);

  GeneratedColumn<double> get totalCost =>
      $composableBuilder(column: $table.totalCost, builder: (column) => column);

  GeneratedColumn<int> get unitFactor => $composableBuilder(
      column: $table.unitFactor, builder: (column) => column);

  GeneratedColumn<int> get qtyConvert => $composableBuilder(
      column: $table.qtyConvert, builder: (column) => column);

  GeneratedColumn<String> get expirDate =>
      $composableBuilder(column: $table.expirDate, builder: (column) => column);

  GeneratedColumn<int> get addBranch =>
      $composableBuilder(column: $table.addBranch, builder: (column) => column);

  $$ItemTableTableAnnotationComposer get itemId {
    final $$ItemTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemTableTableAnnotationComposer(
              $db: $db,
              $table: $db.itemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UnitTableTableAnnotationComposer get unitId {
    final $$UnitTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.unitId,
        referencedTable: $db.unitTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UnitTableTableAnnotationComposer(
              $db: $db,
              $table: $db.unitTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StoreOperationTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StoreOperationTableTable,
    StoreOperationModel,
    $$StoreOperationTableTableFilterComposer,
    $$StoreOperationTableTableOrderingComposer,
    $$StoreOperationTableTableAnnotationComposer,
    $$StoreOperationTableTableCreateCompanionBuilder,
    $$StoreOperationTableTableUpdateCompanionBuilder,
    (StoreOperationModel, $$StoreOperationTableTableReferences),
    StoreOperationModel,
    PrefetchHooks Function({bool itemId, bool unitId})> {
  $$StoreOperationTableTableTableManager(
      _$AppDatabase db, $StoreOperationTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StoreOperationTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StoreOperationTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StoreOperationTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> operationId = const Value.absent(),
            Value<int> operationType = const Value.absent(),
            Value<DateTime> operationDate = const Value.absent(),
            Value<bool> operationIn = const Value.absent(),
            Value<int> storeId = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int> unitId = const Value.absent(),
            Value<int> quantity = const Value.absent(),
            Value<double> averageCost = const Value.absent(),
            Value<double> unitCost = const Value.absent(),
            Value<double> totalCost = const Value.absent(),
            Value<int> unitFactor = const Value.absent(),
            Value<int> qtyConvert = const Value.absent(),
            Value<String> expirDate = const Value.absent(),
            Value<int> addBranch = const Value.absent(),
          }) =>
              StoreOperationTableCompanion(
            id: id,
            operationId: operationId,
            operationType: operationType,
            operationDate: operationDate,
            operationIn: operationIn,
            storeId: storeId,
            itemId: itemId,
            unitId: unitId,
            quantity: quantity,
            averageCost: averageCost,
            unitCost: unitCost,
            totalCost: totalCost,
            unitFactor: unitFactor,
            qtyConvert: qtyConvert,
            expirDate: expirDate,
            addBranch: addBranch,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int operationId,
            required int operationType,
            required DateTime operationDate,
            required bool operationIn,
            required int storeId,
            required int itemId,
            required int unitId,
            required int quantity,
            required double averageCost,
            required double unitCost,
            required double totalCost,
            required int unitFactor,
            required int qtyConvert,
            required String expirDate,
            required int addBranch,
          }) =>
              StoreOperationTableCompanion.insert(
            id: id,
            operationId: operationId,
            operationType: operationType,
            operationDate: operationDate,
            operationIn: operationIn,
            storeId: storeId,
            itemId: itemId,
            unitId: unitId,
            quantity: quantity,
            averageCost: averageCost,
            unitCost: unitCost,
            totalCost: totalCost,
            unitFactor: unitFactor,
            qtyConvert: qtyConvert,
            expirDate: expirDate,
            addBranch: addBranch,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$StoreOperationTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({itemId = false, unitId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (itemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemId,
                    referencedTable:
                        $$StoreOperationTableTableReferences._itemIdTable(db),
                    referencedColumn: $$StoreOperationTableTableReferences
                        ._itemIdTable(db)
                        .id,
                  ) as T;
                }
                if (unitId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.unitId,
                    referencedTable:
                        $$StoreOperationTableTableReferences._unitIdTable(db),
                    referencedColumn: $$StoreOperationTableTableReferences
                        ._unitIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$StoreOperationTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StoreOperationTableTable,
    StoreOperationModel,
    $$StoreOperationTableTableFilterComposer,
    $$StoreOperationTableTableOrderingComposer,
    $$StoreOperationTableTableAnnotationComposer,
    $$StoreOperationTableTableCreateCompanionBuilder,
    $$StoreOperationTableTableUpdateCompanionBuilder,
    (StoreOperationModel, $$StoreOperationTableTableReferences),
    StoreOperationModel,
    PrefetchHooks Function({bool itemId, bool unitId})>;
typedef $$BillTableTableCreateCompanionBuilder = BillTableCompanion Function({
  Value<int> id,
  required int branchId,
  required int billNumber,
  required int billType,
  required DateTime billDate,
  required String refNumber,
  required int customerNumber,
  required int currencyId,
  required double currencyValue,
  required int fundNumber,
  required int paymentMethed,
  required int storeId,
  required double storeCurValue,
  required String billNote,
  required int itemCalcMethod,
  required DateTime dueDate,
  required int salesPerson,
  required bool hasVat,
  required bool hasSalesTax,
  required double salesTaxRate,
  required int numOfitems,
  required double totalBill,
  required double itemsDiscount,
  required double billDiscount,
  required double netBill,
  required double totalVat,
  required double billFinalCost,
  required double freeQtyCost,
  required double totalAvragCost,
  required double paidAmount,
});
typedef $$BillTableTableUpdateCompanionBuilder = BillTableCompanion Function({
  Value<int> id,
  Value<int> branchId,
  Value<int> billNumber,
  Value<int> billType,
  Value<DateTime> billDate,
  Value<String> refNumber,
  Value<int> customerNumber,
  Value<int> currencyId,
  Value<double> currencyValue,
  Value<int> fundNumber,
  Value<int> paymentMethed,
  Value<int> storeId,
  Value<double> storeCurValue,
  Value<String> billNote,
  Value<int> itemCalcMethod,
  Value<DateTime> dueDate,
  Value<int> salesPerson,
  Value<bool> hasVat,
  Value<bool> hasSalesTax,
  Value<double> salesTaxRate,
  Value<int> numOfitems,
  Value<double> totalBill,
  Value<double> itemsDiscount,
  Value<double> billDiscount,
  Value<double> netBill,
  Value<double> totalVat,
  Value<double> billFinalCost,
  Value<double> freeQtyCost,
  Value<double> totalAvragCost,
  Value<double> paidAmount,
});

class $$BillTableTableFilterComposer
    extends Composer<_$AppDatabase, $BillTableTable> {
  $$BillTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get billNumber => $composableBuilder(
      column: $table.billNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get billType => $composableBuilder(
      column: $table.billType, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get billDate => $composableBuilder(
      column: $table.billDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get refNumber => $composableBuilder(
      column: $table.refNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get customerNumber => $composableBuilder(
      column: $table.customerNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get fundNumber => $composableBuilder(
      column: $table.fundNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paymentMethed => $composableBuilder(
      column: $table.paymentMethed, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get storeId => $composableBuilder(
      column: $table.storeId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get storeCurValue => $composableBuilder(
      column: $table.storeCurValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get billNote => $composableBuilder(
      column: $table.billNote, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get itemCalcMethod => $composableBuilder(
      column: $table.itemCalcMethod,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get hasVat => $composableBuilder(
      column: $table.hasVat, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get hasSalesTax => $composableBuilder(
      column: $table.hasSalesTax, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get salesTaxRate => $composableBuilder(
      column: $table.salesTaxRate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get numOfitems => $composableBuilder(
      column: $table.numOfitems, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalBill => $composableBuilder(
      column: $table.totalBill, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get itemsDiscount => $composableBuilder(
      column: $table.itemsDiscount, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get billDiscount => $composableBuilder(
      column: $table.billDiscount, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get netBill => $composableBuilder(
      column: $table.netBill, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalVat => $composableBuilder(
      column: $table.totalVat, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get billFinalCost => $composableBuilder(
      column: $table.billFinalCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get freeQtyCost => $composableBuilder(
      column: $table.freeQtyCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalAvragCost => $composableBuilder(
      column: $table.totalAvragCost,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get paidAmount => $composableBuilder(
      column: $table.paidAmount, builder: (column) => ColumnFilters(column));
}

class $$BillTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BillTableTable> {
  $$BillTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get billNumber => $composableBuilder(
      column: $table.billNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get billType => $composableBuilder(
      column: $table.billType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get billDate => $composableBuilder(
      column: $table.billDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get refNumber => $composableBuilder(
      column: $table.refNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get customerNumber => $composableBuilder(
      column: $table.customerNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get fundNumber => $composableBuilder(
      column: $table.fundNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paymentMethed => $composableBuilder(
      column: $table.paymentMethed,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get storeId => $composableBuilder(
      column: $table.storeId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get storeCurValue => $composableBuilder(
      column: $table.storeCurValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get billNote => $composableBuilder(
      column: $table.billNote, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get itemCalcMethod => $composableBuilder(
      column: $table.itemCalcMethod,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get hasVat => $composableBuilder(
      column: $table.hasVat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get hasSalesTax => $composableBuilder(
      column: $table.hasSalesTax, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get salesTaxRate => $composableBuilder(
      column: $table.salesTaxRate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get numOfitems => $composableBuilder(
      column: $table.numOfitems, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalBill => $composableBuilder(
      column: $table.totalBill, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get itemsDiscount => $composableBuilder(
      column: $table.itemsDiscount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get billDiscount => $composableBuilder(
      column: $table.billDiscount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get netBill => $composableBuilder(
      column: $table.netBill, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalVat => $composableBuilder(
      column: $table.totalVat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get billFinalCost => $composableBuilder(
      column: $table.billFinalCost,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get freeQtyCost => $composableBuilder(
      column: $table.freeQtyCost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalAvragCost => $composableBuilder(
      column: $table.totalAvragCost,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get paidAmount => $composableBuilder(
      column: $table.paidAmount, builder: (column) => ColumnOrderings(column));
}

class $$BillTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BillTableTable> {
  $$BillTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get branchId =>
      $composableBuilder(column: $table.branchId, builder: (column) => column);

  GeneratedColumn<int> get billNumber => $composableBuilder(
      column: $table.billNumber, builder: (column) => column);

  GeneratedColumn<int> get billType =>
      $composableBuilder(column: $table.billType, builder: (column) => column);

  GeneratedColumn<DateTime> get billDate =>
      $composableBuilder(column: $table.billDate, builder: (column) => column);

  GeneratedColumn<String> get refNumber =>
      $composableBuilder(column: $table.refNumber, builder: (column) => column);

  GeneratedColumn<int> get customerNumber => $composableBuilder(
      column: $table.customerNumber, builder: (column) => column);

  GeneratedColumn<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => column);

  GeneratedColumn<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue, builder: (column) => column);

  GeneratedColumn<int> get fundNumber => $composableBuilder(
      column: $table.fundNumber, builder: (column) => column);

  GeneratedColumn<int> get paymentMethed => $composableBuilder(
      column: $table.paymentMethed, builder: (column) => column);

  GeneratedColumn<int> get storeId =>
      $composableBuilder(column: $table.storeId, builder: (column) => column);

  GeneratedColumn<double> get storeCurValue => $composableBuilder(
      column: $table.storeCurValue, builder: (column) => column);

  GeneratedColumn<String> get billNote =>
      $composableBuilder(column: $table.billNote, builder: (column) => column);

  GeneratedColumn<int> get itemCalcMethod => $composableBuilder(
      column: $table.itemCalcMethod, builder: (column) => column);

  GeneratedColumn<DateTime> get dueDate =>
      $composableBuilder(column: $table.dueDate, builder: (column) => column);

  GeneratedColumn<int> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => column);

  GeneratedColumn<bool> get hasVat =>
      $composableBuilder(column: $table.hasVat, builder: (column) => column);

  GeneratedColumn<bool> get hasSalesTax => $composableBuilder(
      column: $table.hasSalesTax, builder: (column) => column);

  GeneratedColumn<double> get salesTaxRate => $composableBuilder(
      column: $table.salesTaxRate, builder: (column) => column);

  GeneratedColumn<int> get numOfitems => $composableBuilder(
      column: $table.numOfitems, builder: (column) => column);

  GeneratedColumn<double> get totalBill =>
      $composableBuilder(column: $table.totalBill, builder: (column) => column);

  GeneratedColumn<double> get itemsDiscount => $composableBuilder(
      column: $table.itemsDiscount, builder: (column) => column);

  GeneratedColumn<double> get billDiscount => $composableBuilder(
      column: $table.billDiscount, builder: (column) => column);

  GeneratedColumn<double> get netBill =>
      $composableBuilder(column: $table.netBill, builder: (column) => column);

  GeneratedColumn<double> get totalVat =>
      $composableBuilder(column: $table.totalVat, builder: (column) => column);

  GeneratedColumn<double> get billFinalCost => $composableBuilder(
      column: $table.billFinalCost, builder: (column) => column);

  GeneratedColumn<double> get freeQtyCost => $composableBuilder(
      column: $table.freeQtyCost, builder: (column) => column);

  GeneratedColumn<double> get totalAvragCost => $composableBuilder(
      column: $table.totalAvragCost, builder: (column) => column);

  GeneratedColumn<double> get paidAmount => $composableBuilder(
      column: $table.paidAmount, builder: (column) => column);
}

class $$BillTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BillTableTable,
    BillModel,
    $$BillTableTableFilterComposer,
    $$BillTableTableOrderingComposer,
    $$BillTableTableAnnotationComposer,
    $$BillTableTableCreateCompanionBuilder,
    $$BillTableTableUpdateCompanionBuilder,
    (BillModel, BaseReferences<_$AppDatabase, $BillTableTable, BillModel>),
    BillModel,
    PrefetchHooks Function()> {
  $$BillTableTableTableManager(_$AppDatabase db, $BillTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BillTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BillTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BillTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> branchId = const Value.absent(),
            Value<int> billNumber = const Value.absent(),
            Value<int> billType = const Value.absent(),
            Value<DateTime> billDate = const Value.absent(),
            Value<String> refNumber = const Value.absent(),
            Value<int> customerNumber = const Value.absent(),
            Value<int> currencyId = const Value.absent(),
            Value<double> currencyValue = const Value.absent(),
            Value<int> fundNumber = const Value.absent(),
            Value<int> paymentMethed = const Value.absent(),
            Value<int> storeId = const Value.absent(),
            Value<double> storeCurValue = const Value.absent(),
            Value<String> billNote = const Value.absent(),
            Value<int> itemCalcMethod = const Value.absent(),
            Value<DateTime> dueDate = const Value.absent(),
            Value<int> salesPerson = const Value.absent(),
            Value<bool> hasVat = const Value.absent(),
            Value<bool> hasSalesTax = const Value.absent(),
            Value<double> salesTaxRate = const Value.absent(),
            Value<int> numOfitems = const Value.absent(),
            Value<double> totalBill = const Value.absent(),
            Value<double> itemsDiscount = const Value.absent(),
            Value<double> billDiscount = const Value.absent(),
            Value<double> netBill = const Value.absent(),
            Value<double> totalVat = const Value.absent(),
            Value<double> billFinalCost = const Value.absent(),
            Value<double> freeQtyCost = const Value.absent(),
            Value<double> totalAvragCost = const Value.absent(),
            Value<double> paidAmount = const Value.absent(),
          }) =>
              BillTableCompanion(
            id: id,
            branchId: branchId,
            billNumber: billNumber,
            billType: billType,
            billDate: billDate,
            refNumber: refNumber,
            customerNumber: customerNumber,
            currencyId: currencyId,
            currencyValue: currencyValue,
            fundNumber: fundNumber,
            paymentMethed: paymentMethed,
            storeId: storeId,
            storeCurValue: storeCurValue,
            billNote: billNote,
            itemCalcMethod: itemCalcMethod,
            dueDate: dueDate,
            salesPerson: salesPerson,
            hasVat: hasVat,
            hasSalesTax: hasSalesTax,
            salesTaxRate: salesTaxRate,
            numOfitems: numOfitems,
            totalBill: totalBill,
            itemsDiscount: itemsDiscount,
            billDiscount: billDiscount,
            netBill: netBill,
            totalVat: totalVat,
            billFinalCost: billFinalCost,
            freeQtyCost: freeQtyCost,
            totalAvragCost: totalAvragCost,
            paidAmount: paidAmount,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int branchId,
            required int billNumber,
            required int billType,
            required DateTime billDate,
            required String refNumber,
            required int customerNumber,
            required int currencyId,
            required double currencyValue,
            required int fundNumber,
            required int paymentMethed,
            required int storeId,
            required double storeCurValue,
            required String billNote,
            required int itemCalcMethod,
            required DateTime dueDate,
            required int salesPerson,
            required bool hasVat,
            required bool hasSalesTax,
            required double salesTaxRate,
            required int numOfitems,
            required double totalBill,
            required double itemsDiscount,
            required double billDiscount,
            required double netBill,
            required double totalVat,
            required double billFinalCost,
            required double freeQtyCost,
            required double totalAvragCost,
            required double paidAmount,
          }) =>
              BillTableCompanion.insert(
            id: id,
            branchId: branchId,
            billNumber: billNumber,
            billType: billType,
            billDate: billDate,
            refNumber: refNumber,
            customerNumber: customerNumber,
            currencyId: currencyId,
            currencyValue: currencyValue,
            fundNumber: fundNumber,
            paymentMethed: paymentMethed,
            storeId: storeId,
            storeCurValue: storeCurValue,
            billNote: billNote,
            itemCalcMethod: itemCalcMethod,
            dueDate: dueDate,
            salesPerson: salesPerson,
            hasVat: hasVat,
            hasSalesTax: hasSalesTax,
            salesTaxRate: salesTaxRate,
            numOfitems: numOfitems,
            totalBill: totalBill,
            itemsDiscount: itemsDiscount,
            billDiscount: billDiscount,
            netBill: netBill,
            totalVat: totalVat,
            billFinalCost: billFinalCost,
            freeQtyCost: freeQtyCost,
            totalAvragCost: totalAvragCost,
            paidAmount: paidAmount,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BillTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BillTableTable,
    BillModel,
    $$BillTableTableFilterComposer,
    $$BillTableTableOrderingComposer,
    $$BillTableTableAnnotationComposer,
    $$BillTableTableCreateCompanionBuilder,
    $$BillTableTableUpdateCompanionBuilder,
    (BillModel, BaseReferences<_$AppDatabase, $BillTableTable, BillModel>),
    BillModel,
    PrefetchHooks Function()>;
typedef $$BillDetailsTableTableCreateCompanionBuilder
    = BillDetailsTableCompanion Function({
  Value<int> id,
  required int billID,
  required int itemId,
  required int itemUnitID,
  required int unitFactor,
  required int quantity,
  required int freeQty,
  required double avrageCost,
  required double sellPrice,
  required double totalSellPrice,
  required double discountPre,
  required double netSellPrice,
  Value<String?> expirDate,
  required double taxRate,
  required String itemNote,
  required double freeQtyCost,
});
typedef $$BillDetailsTableTableUpdateCompanionBuilder
    = BillDetailsTableCompanion Function({
  Value<int> id,
  Value<int> billID,
  Value<int> itemId,
  Value<int> itemUnitID,
  Value<int> unitFactor,
  Value<int> quantity,
  Value<int> freeQty,
  Value<double> avrageCost,
  Value<double> sellPrice,
  Value<double> totalSellPrice,
  Value<double> discountPre,
  Value<double> netSellPrice,
  Value<String?> expirDate,
  Value<double> taxRate,
  Value<String> itemNote,
  Value<double> freeQtyCost,
});

class $$BillDetailsTableTableFilterComposer
    extends Composer<_$AppDatabase, $BillDetailsTableTable> {
  $$BillDetailsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get billID => $composableBuilder(
      column: $table.billID, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get itemId => $composableBuilder(
      column: $table.itemId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get itemUnitID => $composableBuilder(
      column: $table.itemUnitID, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get unitFactor => $composableBuilder(
      column: $table.unitFactor, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get freeQty => $composableBuilder(
      column: $table.freeQty, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get avrageCost => $composableBuilder(
      column: $table.avrageCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get sellPrice => $composableBuilder(
      column: $table.sellPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalSellPrice => $composableBuilder(
      column: $table.totalSellPrice,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discountPre => $composableBuilder(
      column: $table.discountPre, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get netSellPrice => $composableBuilder(
      column: $table.netSellPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get expirDate => $composableBuilder(
      column: $table.expirDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get taxRate => $composableBuilder(
      column: $table.taxRate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemNote => $composableBuilder(
      column: $table.itemNote, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get freeQtyCost => $composableBuilder(
      column: $table.freeQtyCost, builder: (column) => ColumnFilters(column));
}

class $$BillDetailsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BillDetailsTableTable> {
  $$BillDetailsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get billID => $composableBuilder(
      column: $table.billID, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get itemId => $composableBuilder(
      column: $table.itemId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get itemUnitID => $composableBuilder(
      column: $table.itemUnitID, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get unitFactor => $composableBuilder(
      column: $table.unitFactor, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get freeQty => $composableBuilder(
      column: $table.freeQty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get avrageCost => $composableBuilder(
      column: $table.avrageCost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get sellPrice => $composableBuilder(
      column: $table.sellPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalSellPrice => $composableBuilder(
      column: $table.totalSellPrice,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discountPre => $composableBuilder(
      column: $table.discountPre, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get netSellPrice => $composableBuilder(
      column: $table.netSellPrice,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get expirDate => $composableBuilder(
      column: $table.expirDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get taxRate => $composableBuilder(
      column: $table.taxRate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemNote => $composableBuilder(
      column: $table.itemNote, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get freeQtyCost => $composableBuilder(
      column: $table.freeQtyCost, builder: (column) => ColumnOrderings(column));
}

class $$BillDetailsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BillDetailsTableTable> {
  $$BillDetailsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get billID =>
      $composableBuilder(column: $table.billID, builder: (column) => column);

  GeneratedColumn<int> get itemId =>
      $composableBuilder(column: $table.itemId, builder: (column) => column);

  GeneratedColumn<int> get itemUnitID => $composableBuilder(
      column: $table.itemUnitID, builder: (column) => column);

  GeneratedColumn<int> get unitFactor => $composableBuilder(
      column: $table.unitFactor, builder: (column) => column);

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<int> get freeQty =>
      $composableBuilder(column: $table.freeQty, builder: (column) => column);

  GeneratedColumn<double> get avrageCost => $composableBuilder(
      column: $table.avrageCost, builder: (column) => column);

  GeneratedColumn<double> get sellPrice =>
      $composableBuilder(column: $table.sellPrice, builder: (column) => column);

  GeneratedColumn<double> get totalSellPrice => $composableBuilder(
      column: $table.totalSellPrice, builder: (column) => column);

  GeneratedColumn<double> get discountPre => $composableBuilder(
      column: $table.discountPre, builder: (column) => column);

  GeneratedColumn<double> get netSellPrice => $composableBuilder(
      column: $table.netSellPrice, builder: (column) => column);

  GeneratedColumn<String> get expirDate =>
      $composableBuilder(column: $table.expirDate, builder: (column) => column);

  GeneratedColumn<double> get taxRate =>
      $composableBuilder(column: $table.taxRate, builder: (column) => column);

  GeneratedColumn<String> get itemNote =>
      $composableBuilder(column: $table.itemNote, builder: (column) => column);

  GeneratedColumn<double> get freeQtyCost => $composableBuilder(
      column: $table.freeQtyCost, builder: (column) => column);
}

class $$BillDetailsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BillDetailsTableTable,
    BillDetailsModel,
    $$BillDetailsTableTableFilterComposer,
    $$BillDetailsTableTableOrderingComposer,
    $$BillDetailsTableTableAnnotationComposer,
    $$BillDetailsTableTableCreateCompanionBuilder,
    $$BillDetailsTableTableUpdateCompanionBuilder,
    (
      BillDetailsModel,
      BaseReferences<_$AppDatabase, $BillDetailsTableTable, BillDetailsModel>
    ),
    BillDetailsModel,
    PrefetchHooks Function()> {
  $$BillDetailsTableTableTableManager(
      _$AppDatabase db, $BillDetailsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BillDetailsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BillDetailsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BillDetailsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> billID = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int> itemUnitID = const Value.absent(),
            Value<int> unitFactor = const Value.absent(),
            Value<int> quantity = const Value.absent(),
            Value<int> freeQty = const Value.absent(),
            Value<double> avrageCost = const Value.absent(),
            Value<double> sellPrice = const Value.absent(),
            Value<double> totalSellPrice = const Value.absent(),
            Value<double> discountPre = const Value.absent(),
            Value<double> netSellPrice = const Value.absent(),
            Value<String?> expirDate = const Value.absent(),
            Value<double> taxRate = const Value.absent(),
            Value<String> itemNote = const Value.absent(),
            Value<double> freeQtyCost = const Value.absent(),
          }) =>
              BillDetailsTableCompanion(
            id: id,
            billID: billID,
            itemId: itemId,
            itemUnitID: itemUnitID,
            unitFactor: unitFactor,
            quantity: quantity,
            freeQty: freeQty,
            avrageCost: avrageCost,
            sellPrice: sellPrice,
            totalSellPrice: totalSellPrice,
            discountPre: discountPre,
            netSellPrice: netSellPrice,
            expirDate: expirDate,
            taxRate: taxRate,
            itemNote: itemNote,
            freeQtyCost: freeQtyCost,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int billID,
            required int itemId,
            required int itemUnitID,
            required int unitFactor,
            required int quantity,
            required int freeQty,
            required double avrageCost,
            required double sellPrice,
            required double totalSellPrice,
            required double discountPre,
            required double netSellPrice,
            Value<String?> expirDate = const Value.absent(),
            required double taxRate,
            required String itemNote,
            required double freeQtyCost,
          }) =>
              BillDetailsTableCompanion.insert(
            id: id,
            billID: billID,
            itemId: itemId,
            itemUnitID: itemUnitID,
            unitFactor: unitFactor,
            quantity: quantity,
            freeQty: freeQty,
            avrageCost: avrageCost,
            sellPrice: sellPrice,
            totalSellPrice: totalSellPrice,
            discountPre: discountPre,
            netSellPrice: netSellPrice,
            expirDate: expirDate,
            taxRate: taxRate,
            itemNote: itemNote,
            freeQtyCost: freeQtyCost,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BillDetailsTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BillDetailsTableTable,
    BillDetailsModel,
    $$BillDetailsTableTableFilterComposer,
    $$BillDetailsTableTableOrderingComposer,
    $$BillDetailsTableTableAnnotationComposer,
    $$BillDetailsTableTableCreateCompanionBuilder,
    $$BillDetailsTableTableUpdateCompanionBuilder,
    (
      BillDetailsModel,
      BaseReferences<_$AppDatabase, $BillDetailsTableTable, BillDetailsModel>
    ),
    BillDetailsModel,
    PrefetchHooks Function()>;
typedef $$AccountOperationTableTableCreateCompanionBuilder
    = AccountOperationTableCompanion Function({
  Value<int> id,
  required DateTime operationDate,
  required int operationType,
  required int operationId,
  required String operationRef,
  required int accountNumber,
  required double operationDebit,
  required double operationCredit,
  required int currencyId,
  required double currencyValue,
  required String operationStatement,
});
typedef $$AccountOperationTableTableUpdateCompanionBuilder
    = AccountOperationTableCompanion Function({
  Value<int> id,
  Value<DateTime> operationDate,
  Value<int> operationType,
  Value<int> operationId,
  Value<String> operationRef,
  Value<int> accountNumber,
  Value<double> operationDebit,
  Value<double> operationCredit,
  Value<int> currencyId,
  Value<double> currencyValue,
  Value<String> operationStatement,
});

class $$AccountOperationTableTableFilterComposer
    extends Composer<_$AppDatabase, $AccountOperationTableTable> {
  $$AccountOperationTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get operationDate => $composableBuilder(
      column: $table.operationDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get operationType => $composableBuilder(
      column: $table.operationType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get operationId => $composableBuilder(
      column: $table.operationId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get operationRef => $composableBuilder(
      column: $table.operationRef, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accountNumber => $composableBuilder(
      column: $table.accountNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get operationDebit => $composableBuilder(
      column: $table.operationDebit,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get operationCredit => $composableBuilder(
      column: $table.operationCredit,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get operationStatement => $composableBuilder(
      column: $table.operationStatement,
      builder: (column) => ColumnFilters(column));
}

class $$AccountOperationTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AccountOperationTableTable> {
  $$AccountOperationTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get operationDate => $composableBuilder(
      column: $table.operationDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get operationType => $composableBuilder(
      column: $table.operationType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get operationId => $composableBuilder(
      column: $table.operationId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get operationRef => $composableBuilder(
      column: $table.operationRef,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accountNumber => $composableBuilder(
      column: $table.accountNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get operationDebit => $composableBuilder(
      column: $table.operationDebit,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get operationCredit => $composableBuilder(
      column: $table.operationCredit,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get operationStatement => $composableBuilder(
      column: $table.operationStatement,
      builder: (column) => ColumnOrderings(column));
}

class $$AccountOperationTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AccountOperationTableTable> {
  $$AccountOperationTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get operationDate => $composableBuilder(
      column: $table.operationDate, builder: (column) => column);

  GeneratedColumn<int> get operationType => $composableBuilder(
      column: $table.operationType, builder: (column) => column);

  GeneratedColumn<int> get operationId => $composableBuilder(
      column: $table.operationId, builder: (column) => column);

  GeneratedColumn<String> get operationRef => $composableBuilder(
      column: $table.operationRef, builder: (column) => column);

  GeneratedColumn<int> get accountNumber => $composableBuilder(
      column: $table.accountNumber, builder: (column) => column);

  GeneratedColumn<double> get operationDebit => $composableBuilder(
      column: $table.operationDebit, builder: (column) => column);

  GeneratedColumn<double> get operationCredit => $composableBuilder(
      column: $table.operationCredit, builder: (column) => column);

  GeneratedColumn<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => column);

  GeneratedColumn<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue, builder: (column) => column);

  GeneratedColumn<String> get operationStatement => $composableBuilder(
      column: $table.operationStatement, builder: (column) => column);
}

class $$AccountOperationTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AccountOperationTableTable,
    AccountOperationModel,
    $$AccountOperationTableTableFilterComposer,
    $$AccountOperationTableTableOrderingComposer,
    $$AccountOperationTableTableAnnotationComposer,
    $$AccountOperationTableTableCreateCompanionBuilder,
    $$AccountOperationTableTableUpdateCompanionBuilder,
    (
      AccountOperationModel,
      BaseReferences<_$AppDatabase, $AccountOperationTableTable,
          AccountOperationModel>
    ),
    AccountOperationModel,
    PrefetchHooks Function()> {
  $$AccountOperationTableTableTableManager(
      _$AppDatabase db, $AccountOperationTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AccountOperationTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$AccountOperationTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AccountOperationTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<DateTime> operationDate = const Value.absent(),
            Value<int> operationType = const Value.absent(),
            Value<int> operationId = const Value.absent(),
            Value<String> operationRef = const Value.absent(),
            Value<int> accountNumber = const Value.absent(),
            Value<double> operationDebit = const Value.absent(),
            Value<double> operationCredit = const Value.absent(),
            Value<int> currencyId = const Value.absent(),
            Value<double> currencyValue = const Value.absent(),
            Value<String> operationStatement = const Value.absent(),
          }) =>
              AccountOperationTableCompanion(
            id: id,
            operationDate: operationDate,
            operationType: operationType,
            operationId: operationId,
            operationRef: operationRef,
            accountNumber: accountNumber,
            operationDebit: operationDebit,
            operationCredit: operationCredit,
            currencyId: currencyId,
            currencyValue: currencyValue,
            operationStatement: operationStatement,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required DateTime operationDate,
            required int operationType,
            required int operationId,
            required String operationRef,
            required int accountNumber,
            required double operationDebit,
            required double operationCredit,
            required int currencyId,
            required double currencyValue,
            required String operationStatement,
          }) =>
              AccountOperationTableCompanion.insert(
            id: id,
            operationDate: operationDate,
            operationType: operationType,
            operationId: operationId,
            operationRef: operationRef,
            accountNumber: accountNumber,
            operationDebit: operationDebit,
            operationCredit: operationCredit,
            currencyId: currencyId,
            currencyValue: currencyValue,
            operationStatement: operationStatement,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AccountOperationTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $AccountOperationTableTable,
        AccountOperationModel,
        $$AccountOperationTableTableFilterComposer,
        $$AccountOperationTableTableOrderingComposer,
        $$AccountOperationTableTableAnnotationComposer,
        $$AccountOperationTableTableCreateCompanionBuilder,
        $$AccountOperationTableTableUpdateCompanionBuilder,
        (
          AccountOperationModel,
          BaseReferences<_$AppDatabase, $AccountOperationTableTable,
              AccountOperationModel>
        ),
        AccountOperationModel,
        PrefetchHooks Function()>;
typedef $$RefAccountTableTableCreateCompanionBuilder = RefAccountTableCompanion
    Function({
  Value<int> id,
  required int accTag,
  required String accName,
  required int accNumber,
});
typedef $$RefAccountTableTableUpdateCompanionBuilder = RefAccountTableCompanion
    Function({
  Value<int> id,
  Value<int> accTag,
  Value<String> accName,
  Value<int> accNumber,
});

class $$RefAccountTableTableFilterComposer
    extends Composer<_$AppDatabase, $RefAccountTableTable> {
  $$RefAccountTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accTag => $composableBuilder(
      column: $table.accTag, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accName => $composableBuilder(
      column: $table.accName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accNumber => $composableBuilder(
      column: $table.accNumber, builder: (column) => ColumnFilters(column));
}

class $$RefAccountTableTableOrderingComposer
    extends Composer<_$AppDatabase, $RefAccountTableTable> {
  $$RefAccountTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accTag => $composableBuilder(
      column: $table.accTag, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accName => $composableBuilder(
      column: $table.accName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accNumber => $composableBuilder(
      column: $table.accNumber, builder: (column) => ColumnOrderings(column));
}

class $$RefAccountTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $RefAccountTableTable> {
  $$RefAccountTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get accTag =>
      $composableBuilder(column: $table.accTag, builder: (column) => column);

  GeneratedColumn<String> get accName =>
      $composableBuilder(column: $table.accName, builder: (column) => column);

  GeneratedColumn<int> get accNumber =>
      $composableBuilder(column: $table.accNumber, builder: (column) => column);
}

class $$RefAccountTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RefAccountTableTable,
    RefAccountModel,
    $$RefAccountTableTableFilterComposer,
    $$RefAccountTableTableOrderingComposer,
    $$RefAccountTableTableAnnotationComposer,
    $$RefAccountTableTableCreateCompanionBuilder,
    $$RefAccountTableTableUpdateCompanionBuilder,
    (
      RefAccountModel,
      BaseReferences<_$AppDatabase, $RefAccountTableTable, RefAccountModel>
    ),
    RefAccountModel,
    PrefetchHooks Function()> {
  $$RefAccountTableTableTableManager(
      _$AppDatabase db, $RefAccountTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RefAccountTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RefAccountTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RefAccountTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> accTag = const Value.absent(),
            Value<String> accName = const Value.absent(),
            Value<int> accNumber = const Value.absent(),
          }) =>
              RefAccountTableCompanion(
            id: id,
            accTag: accTag,
            accName: accName,
            accNumber: accNumber,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int accTag,
            required String accName,
            required int accNumber,
          }) =>
              RefAccountTableCompanion.insert(
            id: id,
            accTag: accTag,
            accName: accName,
            accNumber: accNumber,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RefAccountTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RefAccountTableTable,
    RefAccountModel,
    $$RefAccountTableTableFilterComposer,
    $$RefAccountTableTableOrderingComposer,
    $$RefAccountTableTableAnnotationComposer,
    $$RefAccountTableTableCreateCompanionBuilder,
    $$RefAccountTableTableUpdateCompanionBuilder,
    (
      RefAccountModel,
      BaseReferences<_$AppDatabase, $RefAccountTableTable, RefAccountModel>
    ),
    RefAccountModel,
    PrefetchHooks Function()>;
typedef $$MidAccountTableTableCreateCompanionBuilder = MidAccountTableCompanion
    Function({
  Value<int> id,
  required int accTag,
  required String accName,
  required int accNumber,
  required int branchId,
});
typedef $$MidAccountTableTableUpdateCompanionBuilder = MidAccountTableCompanion
    Function({
  Value<int> id,
  Value<int> accTag,
  Value<String> accName,
  Value<int> accNumber,
  Value<int> branchId,
});

class $$MidAccountTableTableFilterComposer
    extends Composer<_$AppDatabase, $MidAccountTableTable> {
  $$MidAccountTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accTag => $composableBuilder(
      column: $table.accTag, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accName => $composableBuilder(
      column: $table.accName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accNumber => $composableBuilder(
      column: $table.accNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnFilters(column));
}

class $$MidAccountTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MidAccountTableTable> {
  $$MidAccountTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accTag => $composableBuilder(
      column: $table.accTag, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accName => $composableBuilder(
      column: $table.accName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accNumber => $composableBuilder(
      column: $table.accNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnOrderings(column));
}

class $$MidAccountTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MidAccountTableTable> {
  $$MidAccountTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get accTag =>
      $composableBuilder(column: $table.accTag, builder: (column) => column);

  GeneratedColumn<String> get accName =>
      $composableBuilder(column: $table.accName, builder: (column) => column);

  GeneratedColumn<int> get accNumber =>
      $composableBuilder(column: $table.accNumber, builder: (column) => column);

  GeneratedColumn<int> get branchId =>
      $composableBuilder(column: $table.branchId, builder: (column) => column);
}

class $$MidAccountTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MidAccountTableTable,
    MidAccountModel,
    $$MidAccountTableTableFilterComposer,
    $$MidAccountTableTableOrderingComposer,
    $$MidAccountTableTableAnnotationComposer,
    $$MidAccountTableTableCreateCompanionBuilder,
    $$MidAccountTableTableUpdateCompanionBuilder,
    (
      MidAccountModel,
      BaseReferences<_$AppDatabase, $MidAccountTableTable, MidAccountModel>
    ),
    MidAccountModel,
    PrefetchHooks Function()> {
  $$MidAccountTableTableTableManager(
      _$AppDatabase db, $MidAccountTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MidAccountTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MidAccountTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MidAccountTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> accTag = const Value.absent(),
            Value<String> accName = const Value.absent(),
            Value<int> accNumber = const Value.absent(),
            Value<int> branchId = const Value.absent(),
          }) =>
              MidAccountTableCompanion(
            id: id,
            accTag: accTag,
            accName: accName,
            accNumber: accNumber,
            branchId: branchId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int accTag,
            required String accName,
            required int accNumber,
            required int branchId,
          }) =>
              MidAccountTableCompanion.insert(
            id: id,
            accTag: accTag,
            accName: accName,
            accNumber: accNumber,
            branchId: branchId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MidAccountTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MidAccountTableTable,
    MidAccountModel,
    $$MidAccountTableTableFilterComposer,
    $$MidAccountTableTableOrderingComposer,
    $$MidAccountTableTableAnnotationComposer,
    $$MidAccountTableTableCreateCompanionBuilder,
    $$MidAccountTableTableUpdateCompanionBuilder,
    (
      MidAccountModel,
      BaseReferences<_$AppDatabase, $MidAccountTableTable, MidAccountModel>
    ),
    MidAccountModel,
    PrefetchHooks Function()>;
typedef $$ExchangesTableTableCreateCompanionBuilder = ExchangesTableCompanion
    Function({
  Value<int> id,
  required int sandType,
  required bool isCash,
  required int branchId,
  required int sandNumber,
  required DateTime sandDate,
  required int fundNumber,
  required int currencyId,
  required double currencyValue,
  required String reciepentName,
  required double totalAmount,
  required String sandNote,
  required String refNumber,
});
typedef $$ExchangesTableTableUpdateCompanionBuilder = ExchangesTableCompanion
    Function({
  Value<int> id,
  Value<int> sandType,
  Value<bool> isCash,
  Value<int> branchId,
  Value<int> sandNumber,
  Value<DateTime> sandDate,
  Value<int> fundNumber,
  Value<int> currencyId,
  Value<double> currencyValue,
  Value<String> reciepentName,
  Value<double> totalAmount,
  Value<String> sandNote,
  Value<String> refNumber,
});

final class $$ExchangesTableTableReferences
    extends BaseReferences<_$AppDatabase, $ExchangesTableTable, ExchangeModel> {
  $$ExchangesTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SandDetailsTableTable, List<SandDetailEntity>>
      _sandDetailsTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.sandDetailsTable,
              aliasName: $_aliasNameGenerator(
                  db.exchangesTable.id, db.sandDetailsTable.sandId));

  $$SandDetailsTableTableProcessedTableManager get sandDetailsTableRefs {
    final manager =
        $$SandDetailsTableTableTableManager($_db, $_db.sandDetailsTable)
            .filter((f) => f.sandId.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_sandDetailsTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$CheckOperationsTableTable,
      List<CheckOperationEntity>> _checkOperationsTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.checkOperationsTable,
          aliasName: $_aliasNameGenerator(
              db.exchangesTable.id, db.checkOperationsTable.sandId));

  $$CheckOperationsTableTableProcessedTableManager
      get checkOperationsTableRefs {
    final manager =
        $$CheckOperationsTableTableTableManager($_db, $_db.checkOperationsTable)
            .filter((f) => f.sandId.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_checkOperationsTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ExchangesTableTableFilterComposer
    extends Composer<_$AppDatabase, $ExchangesTableTable> {
  $$ExchangesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sandType => $composableBuilder(
      column: $table.sandType, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isCash => $composableBuilder(
      column: $table.isCash, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sandNumber => $composableBuilder(
      column: $table.sandNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get sandDate => $composableBuilder(
      column: $table.sandDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get fundNumber => $composableBuilder(
      column: $table.fundNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get reciepentName => $composableBuilder(
      column: $table.reciepentName, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalAmount => $composableBuilder(
      column: $table.totalAmount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get sandNote => $composableBuilder(
      column: $table.sandNote, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get refNumber => $composableBuilder(
      column: $table.refNumber, builder: (column) => ColumnFilters(column));

  Expression<bool> sandDetailsTableRefs(
      Expression<bool> Function($$SandDetailsTableTableFilterComposer f) f) {
    final $$SandDetailsTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sandDetailsTable,
        getReferencedColumn: (t) => t.sandId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SandDetailsTableTableFilterComposer(
              $db: $db,
              $table: $db.sandDetailsTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> checkOperationsTableRefs(
      Expression<bool> Function($$CheckOperationsTableTableFilterComposer f)
          f) {
    final $$CheckOperationsTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.checkOperationsTable,
        getReferencedColumn: (t) => t.sandId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CheckOperationsTableTableFilterComposer(
              $db: $db,
              $table: $db.checkOperationsTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ExchangesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ExchangesTableTable> {
  $$ExchangesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sandType => $composableBuilder(
      column: $table.sandType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isCash => $composableBuilder(
      column: $table.isCash, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get branchId => $composableBuilder(
      column: $table.branchId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sandNumber => $composableBuilder(
      column: $table.sandNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get sandDate => $composableBuilder(
      column: $table.sandDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get fundNumber => $composableBuilder(
      column: $table.fundNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get reciepentName => $composableBuilder(
      column: $table.reciepentName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalAmount => $composableBuilder(
      column: $table.totalAmount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sandNote => $composableBuilder(
      column: $table.sandNote, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get refNumber => $composableBuilder(
      column: $table.refNumber, builder: (column) => ColumnOrderings(column));
}

class $$ExchangesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExchangesTableTable> {
  $$ExchangesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get sandType =>
      $composableBuilder(column: $table.sandType, builder: (column) => column);

  GeneratedColumn<bool> get isCash =>
      $composableBuilder(column: $table.isCash, builder: (column) => column);

  GeneratedColumn<int> get branchId =>
      $composableBuilder(column: $table.branchId, builder: (column) => column);

  GeneratedColumn<int> get sandNumber => $composableBuilder(
      column: $table.sandNumber, builder: (column) => column);

  GeneratedColumn<DateTime> get sandDate =>
      $composableBuilder(column: $table.sandDate, builder: (column) => column);

  GeneratedColumn<int> get fundNumber => $composableBuilder(
      column: $table.fundNumber, builder: (column) => column);

  GeneratedColumn<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => column);

  GeneratedColumn<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue, builder: (column) => column);

  GeneratedColumn<String> get reciepentName => $composableBuilder(
      column: $table.reciepentName, builder: (column) => column);

  GeneratedColumn<double> get totalAmount => $composableBuilder(
      column: $table.totalAmount, builder: (column) => column);

  GeneratedColumn<String> get sandNote =>
      $composableBuilder(column: $table.sandNote, builder: (column) => column);

  GeneratedColumn<String> get refNumber =>
      $composableBuilder(column: $table.refNumber, builder: (column) => column);

  Expression<T> sandDetailsTableRefs<T extends Object>(
      Expression<T> Function($$SandDetailsTableTableAnnotationComposer a) f) {
    final $$SandDetailsTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sandDetailsTable,
        getReferencedColumn: (t) => t.sandId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SandDetailsTableTableAnnotationComposer(
              $db: $db,
              $table: $db.sandDetailsTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> checkOperationsTableRefs<T extends Object>(
      Expression<T> Function($$CheckOperationsTableTableAnnotationComposer a)
          f) {
    final $$CheckOperationsTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.checkOperationsTable,
            getReferencedColumn: (t) => t.sandId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$CheckOperationsTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.checkOperationsTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$ExchangesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ExchangesTableTable,
    ExchangeModel,
    $$ExchangesTableTableFilterComposer,
    $$ExchangesTableTableOrderingComposer,
    $$ExchangesTableTableAnnotationComposer,
    $$ExchangesTableTableCreateCompanionBuilder,
    $$ExchangesTableTableUpdateCompanionBuilder,
    (ExchangeModel, $$ExchangesTableTableReferences),
    ExchangeModel,
    PrefetchHooks Function(
        {bool sandDetailsTableRefs, bool checkOperationsTableRefs})> {
  $$ExchangesTableTableTableManager(
      _$AppDatabase db, $ExchangesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExchangesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExchangesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExchangesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> sandType = const Value.absent(),
            Value<bool> isCash = const Value.absent(),
            Value<int> branchId = const Value.absent(),
            Value<int> sandNumber = const Value.absent(),
            Value<DateTime> sandDate = const Value.absent(),
            Value<int> fundNumber = const Value.absent(),
            Value<int> currencyId = const Value.absent(),
            Value<double> currencyValue = const Value.absent(),
            Value<String> reciepentName = const Value.absent(),
            Value<double> totalAmount = const Value.absent(),
            Value<String> sandNote = const Value.absent(),
            Value<String> refNumber = const Value.absent(),
          }) =>
              ExchangesTableCompanion(
            id: id,
            sandType: sandType,
            isCash: isCash,
            branchId: branchId,
            sandNumber: sandNumber,
            sandDate: sandDate,
            fundNumber: fundNumber,
            currencyId: currencyId,
            currencyValue: currencyValue,
            reciepentName: reciepentName,
            totalAmount: totalAmount,
            sandNote: sandNote,
            refNumber: refNumber,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int sandType,
            required bool isCash,
            required int branchId,
            required int sandNumber,
            required DateTime sandDate,
            required int fundNumber,
            required int currencyId,
            required double currencyValue,
            required String reciepentName,
            required double totalAmount,
            required String sandNote,
            required String refNumber,
          }) =>
              ExchangesTableCompanion.insert(
            id: id,
            sandType: sandType,
            isCash: isCash,
            branchId: branchId,
            sandNumber: sandNumber,
            sandDate: sandDate,
            fundNumber: fundNumber,
            currencyId: currencyId,
            currencyValue: currencyValue,
            reciepentName: reciepentName,
            totalAmount: totalAmount,
            sandNote: sandNote,
            refNumber: refNumber,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ExchangesTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {sandDetailsTableRefs = false,
              checkOperationsTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (sandDetailsTableRefs) db.sandDetailsTable,
                if (checkOperationsTableRefs) db.checkOperationsTable
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (sandDetailsTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ExchangesTableTableReferences
                            ._sandDetailsTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ExchangesTableTableReferences(db, table, p0)
                                .sandDetailsTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.sandId == item.id),
                        typedResults: items),
                  if (checkOperationsTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ExchangesTableTableReferences
                            ._checkOperationsTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ExchangesTableTableReferences(db, table, p0)
                                .checkOperationsTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.sandId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ExchangesTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ExchangesTableTable,
    ExchangeModel,
    $$ExchangesTableTableFilterComposer,
    $$ExchangesTableTableOrderingComposer,
    $$ExchangesTableTableAnnotationComposer,
    $$ExchangesTableTableCreateCompanionBuilder,
    $$ExchangesTableTableUpdateCompanionBuilder,
    (ExchangeModel, $$ExchangesTableTableReferences),
    ExchangeModel,
    PrefetchHooks Function(
        {bool sandDetailsTableRefs, bool checkOperationsTableRefs})>;
typedef $$SandDetailsTableTableCreateCompanionBuilder
    = SandDetailsTableCompanion Function({
  Value<int> id,
  required int sandId,
  required int accNumber,
  required double amount,
  required int currencyId,
  required double currencyValue,
});
typedef $$SandDetailsTableTableUpdateCompanionBuilder
    = SandDetailsTableCompanion Function({
  Value<int> id,
  Value<int> sandId,
  Value<int> accNumber,
  Value<double> amount,
  Value<int> currencyId,
  Value<double> currencyValue,
});

final class $$SandDetailsTableTableReferences extends BaseReferences<
    _$AppDatabase, $SandDetailsTableTable, SandDetailEntity> {
  $$SandDetailsTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ExchangesTableTable _sandIdTable(_$AppDatabase db) =>
      db.exchangesTable.createAlias($_aliasNameGenerator(
          db.sandDetailsTable.sandId, db.exchangesTable.id));

  $$ExchangesTableTableProcessedTableManager get sandId {
    final manager = $$ExchangesTableTableTableManager($_db, $_db.exchangesTable)
        .filter((f) => f.id($_item.sandId!));
    final item = $_typedResult.readTableOrNull(_sandIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$SandDetailsTableTableFilterComposer
    extends Composer<_$AppDatabase, $SandDetailsTableTable> {
  $$SandDetailsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get accNumber => $composableBuilder(
      column: $table.accNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue, builder: (column) => ColumnFilters(column));

  $$ExchangesTableTableFilterComposer get sandId {
    final $$ExchangesTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sandId,
        referencedTable: $db.exchangesTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExchangesTableTableFilterComposer(
              $db: $db,
              $table: $db.exchangesTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SandDetailsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SandDetailsTableTable> {
  $$SandDetailsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get accNumber => $composableBuilder(
      column: $table.accNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue,
      builder: (column) => ColumnOrderings(column));

  $$ExchangesTableTableOrderingComposer get sandId {
    final $$ExchangesTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sandId,
        referencedTable: $db.exchangesTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExchangesTableTableOrderingComposer(
              $db: $db,
              $table: $db.exchangesTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SandDetailsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SandDetailsTableTable> {
  $$SandDetailsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get accNumber =>
      $composableBuilder(column: $table.accNumber, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<int> get currencyId => $composableBuilder(
      column: $table.currencyId, builder: (column) => column);

  GeneratedColumn<double> get currencyValue => $composableBuilder(
      column: $table.currencyValue, builder: (column) => column);

  $$ExchangesTableTableAnnotationComposer get sandId {
    final $$ExchangesTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sandId,
        referencedTable: $db.exchangesTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExchangesTableTableAnnotationComposer(
              $db: $db,
              $table: $db.exchangesTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SandDetailsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SandDetailsTableTable,
    SandDetailEntity,
    $$SandDetailsTableTableFilterComposer,
    $$SandDetailsTableTableOrderingComposer,
    $$SandDetailsTableTableAnnotationComposer,
    $$SandDetailsTableTableCreateCompanionBuilder,
    $$SandDetailsTableTableUpdateCompanionBuilder,
    (SandDetailEntity, $$SandDetailsTableTableReferences),
    SandDetailEntity,
    PrefetchHooks Function({bool sandId})> {
  $$SandDetailsTableTableTableManager(
      _$AppDatabase db, $SandDetailsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SandDetailsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SandDetailsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SandDetailsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> sandId = const Value.absent(),
            Value<int> accNumber = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<int> currencyId = const Value.absent(),
            Value<double> currencyValue = const Value.absent(),
          }) =>
              SandDetailsTableCompanion(
            id: id,
            sandId: sandId,
            accNumber: accNumber,
            amount: amount,
            currencyId: currencyId,
            currencyValue: currencyValue,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int sandId,
            required int accNumber,
            required double amount,
            required int currencyId,
            required double currencyValue,
          }) =>
              SandDetailsTableCompanion.insert(
            id: id,
            sandId: sandId,
            accNumber: accNumber,
            amount: amount,
            currencyId: currencyId,
            currencyValue: currencyValue,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SandDetailsTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({sandId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (sandId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.sandId,
                    referencedTable:
                        $$SandDetailsTableTableReferences._sandIdTable(db),
                    referencedColumn:
                        $$SandDetailsTableTableReferences._sandIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$SandDetailsTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SandDetailsTableTable,
    SandDetailEntity,
    $$SandDetailsTableTableFilterComposer,
    $$SandDetailsTableTableOrderingComposer,
    $$SandDetailsTableTableAnnotationComposer,
    $$SandDetailsTableTableCreateCompanionBuilder,
    $$SandDetailsTableTableUpdateCompanionBuilder,
    (SandDetailEntity, $$SandDetailsTableTableReferences),
    SandDetailEntity,
    PrefetchHooks Function({bool sandId})>;
typedef $$CheckOperationsTableTableCreateCompanionBuilder
    = CheckOperationsTableCompanion Function({
  Value<int> id,
  required int sandId,
  required String operationNumber,
  required DateTime operationDate,
  required int paymentMethed,
  required bool operationState,
});
typedef $$CheckOperationsTableTableUpdateCompanionBuilder
    = CheckOperationsTableCompanion Function({
  Value<int> id,
  Value<int> sandId,
  Value<String> operationNumber,
  Value<DateTime> operationDate,
  Value<int> paymentMethed,
  Value<bool> operationState,
});

final class $$CheckOperationsTableTableReferences extends BaseReferences<
    _$AppDatabase, $CheckOperationsTableTable, CheckOperationEntity> {
  $$CheckOperationsTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ExchangesTableTable _sandIdTable(_$AppDatabase db) =>
      db.exchangesTable.createAlias($_aliasNameGenerator(
          db.checkOperationsTable.sandId, db.exchangesTable.id));

  $$ExchangesTableTableProcessedTableManager get sandId {
    final manager = $$ExchangesTableTableTableManager($_db, $_db.exchangesTable)
        .filter((f) => f.id($_item.sandId!));
    final item = $_typedResult.readTableOrNull(_sandIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CheckOperationsTableTableFilterComposer
    extends Composer<_$AppDatabase, $CheckOperationsTableTable> {
  $$CheckOperationsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get operationNumber => $composableBuilder(
      column: $table.operationNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get operationDate => $composableBuilder(
      column: $table.operationDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paymentMethed => $composableBuilder(
      column: $table.paymentMethed, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get operationState => $composableBuilder(
      column: $table.operationState,
      builder: (column) => ColumnFilters(column));

  $$ExchangesTableTableFilterComposer get sandId {
    final $$ExchangesTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sandId,
        referencedTable: $db.exchangesTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExchangesTableTableFilterComposer(
              $db: $db,
              $table: $db.exchangesTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CheckOperationsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CheckOperationsTableTable> {
  $$CheckOperationsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get operationNumber => $composableBuilder(
      column: $table.operationNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get operationDate => $composableBuilder(
      column: $table.operationDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paymentMethed => $composableBuilder(
      column: $table.paymentMethed,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get operationState => $composableBuilder(
      column: $table.operationState,
      builder: (column) => ColumnOrderings(column));

  $$ExchangesTableTableOrderingComposer get sandId {
    final $$ExchangesTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sandId,
        referencedTable: $db.exchangesTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExchangesTableTableOrderingComposer(
              $db: $db,
              $table: $db.exchangesTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CheckOperationsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CheckOperationsTableTable> {
  $$CheckOperationsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get operationNumber => $composableBuilder(
      column: $table.operationNumber, builder: (column) => column);

  GeneratedColumn<DateTime> get operationDate => $composableBuilder(
      column: $table.operationDate, builder: (column) => column);

  GeneratedColumn<int> get paymentMethed => $composableBuilder(
      column: $table.paymentMethed, builder: (column) => column);

  GeneratedColumn<bool> get operationState => $composableBuilder(
      column: $table.operationState, builder: (column) => column);

  $$ExchangesTableTableAnnotationComposer get sandId {
    final $$ExchangesTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sandId,
        referencedTable: $db.exchangesTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExchangesTableTableAnnotationComposer(
              $db: $db,
              $table: $db.exchangesTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CheckOperationsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CheckOperationsTableTable,
    CheckOperationEntity,
    $$CheckOperationsTableTableFilterComposer,
    $$CheckOperationsTableTableOrderingComposer,
    $$CheckOperationsTableTableAnnotationComposer,
    $$CheckOperationsTableTableCreateCompanionBuilder,
    $$CheckOperationsTableTableUpdateCompanionBuilder,
    (CheckOperationEntity, $$CheckOperationsTableTableReferences),
    CheckOperationEntity,
    PrefetchHooks Function({bool sandId})> {
  $$CheckOperationsTableTableTableManager(
      _$AppDatabase db, $CheckOperationsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CheckOperationsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CheckOperationsTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CheckOperationsTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> sandId = const Value.absent(),
            Value<String> operationNumber = const Value.absent(),
            Value<DateTime> operationDate = const Value.absent(),
            Value<int> paymentMethed = const Value.absent(),
            Value<bool> operationState = const Value.absent(),
          }) =>
              CheckOperationsTableCompanion(
            id: id,
            sandId: sandId,
            operationNumber: operationNumber,
            operationDate: operationDate,
            paymentMethed: paymentMethed,
            operationState: operationState,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int sandId,
            required String operationNumber,
            required DateTime operationDate,
            required int paymentMethed,
            required bool operationState,
          }) =>
              CheckOperationsTableCompanion.insert(
            id: id,
            sandId: sandId,
            operationNumber: operationNumber,
            operationDate: operationDate,
            paymentMethed: paymentMethed,
            operationState: operationState,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CheckOperationsTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({sandId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (sandId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.sandId,
                    referencedTable:
                        $$CheckOperationsTableTableReferences._sandIdTable(db),
                    referencedColumn: $$CheckOperationsTableTableReferences
                        ._sandIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CheckOperationsTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $CheckOperationsTableTable,
        CheckOperationEntity,
        $$CheckOperationsTableTableFilterComposer,
        $$CheckOperationsTableTableOrderingComposer,
        $$CheckOperationsTableTableAnnotationComposer,
        $$CheckOperationsTableTableCreateCompanionBuilder,
        $$CheckOperationsTableTableUpdateCompanionBuilder,
        (CheckOperationEntity, $$CheckOperationsTableTableReferences),
        CheckOperationEntity,
        PrefetchHooks Function({bool sandId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SettingsTableTableTableManager get settingsTable =>
      $$SettingsTableTableTableManager(_db, _db.settingsTable);
  $$UserTableTableTableManager get userTable =>
      $$UserTableTableTableManager(_db, _db.userTable);
  $$CompanyTableTableTableManager get companyTable =>
      $$CompanyTableTableTableManager(_db, _db.companyTable);
  $$BranchTableTableTableManager get branchTable =>
      $$BranchTableTableTableManager(_db, _db.branchTable);
  $$CurencyTableTableTableManager get curencyTable =>
      $$CurencyTableTableTableManager(_db, _db.curencyTable);
  $$UserStoreTableTableTableManager get userStoreTable =>
      $$UserStoreTableTableTableManager(_db, _db.userStoreTable);
  $$UnitTableTableTableManager get unitTable =>
      $$UnitTableTableTableManager(_db, _db.unitTable);
  $$ItemGroupTableTableTableManager get itemGroupTable =>
      $$ItemGroupTableTableTableManager(_db, _db.itemGroupTable);
  $$ItemTableTableTableManager get itemTable =>
      $$ItemTableTableTableManager(_db, _db.itemTable);
  $$ItemUnitTableTableTableManager get itemUnitTable =>
      $$ItemUnitTableTableTableManager(_db, _db.itemUnitTable);
  $$PaymentTableTableTableManager get paymentTable =>
      $$PaymentTableTableTableManager(_db, _db.paymentTable);
  $$SystemDocTableTableTableManager get systemDocTable =>
      $$SystemDocTableTableTableManager(_db, _db.systemDocTable);
  $$UserSettingTableTableTableManager get userSettingTable =>
      $$UserSettingTableTableTableManager(_db, _db.userSettingTable);
  $$ItemAlterTableTableTableManager get itemAlterTable =>
      $$ItemAlterTableTableTableManager(_db, _db.itemAlterTable);
  $$BarcodeTableTableTableManager get barcodeTable =>
      $$BarcodeTableTableTableManager(_db, _db.barcodeTable);
  $$AccountTableTableTableManager get accountTable =>
      $$AccountTableTableTableManager(_db, _db.accountTable);
  $$StoreOperationTableTableTableManager get storeOperationTable =>
      $$StoreOperationTableTableTableManager(_db, _db.storeOperationTable);
  $$BillTableTableTableManager get billTable =>
      $$BillTableTableTableManager(_db, _db.billTable);
  $$BillDetailsTableTableTableManager get billDetailsTable =>
      $$BillDetailsTableTableTableManager(_db, _db.billDetailsTable);
  $$AccountOperationTableTableTableManager get accountOperationTable =>
      $$AccountOperationTableTableTableManager(_db, _db.accountOperationTable);
  $$RefAccountTableTableTableManager get refAccountTable =>
      $$RefAccountTableTableTableManager(_db, _db.refAccountTable);
  $$MidAccountTableTableTableManager get midAccountTable =>
      $$MidAccountTableTableTableManager(_db, _db.midAccountTable);
  $$ExchangesTableTableTableManager get exchangesTable =>
      $$ExchangesTableTableTableManager(_db, _db.exchangesTable);
  $$SandDetailsTableTableTableManager get sandDetailsTable =>
      $$SandDetailsTableTableTableManager(_db, _db.sandDetailsTable);
  $$CheckOperationsTableTableTableManager get checkOperationsTable =>
      $$CheckOperationsTableTableTableManager(_db, _db.checkOperationsTable);
}

import 'package:drift/drift.dart';
import 'package:tailor/src/features/store/data/models/clothes_type_model.dart';
import 'package:tailor/src/features/store/data/models/measurement_model.dart';
import 'package:tailor/src/features/store/data/models/model_category_model.dart';
import 'package:tailor/src/features/store/data/models/th_models_model.dart';
import '../../../../core/error/exception.dart';
import '../../../accounts/domain/usecases/delete_account_operation_usecase.dart';
import '../../domain/entities/item_details_entity.dart';

import '../../../../core/services/db/db.dart';
import '../models/choice_option_model.dart';
import '../models/models.dart';

abstract class StoreLocalDatasource {
  Future<void> saveAllItemGroups(List<ItemGroupModel> items);
  Future<List<ItemGroupModel>> getAllItemGroups();

  Future<void> saveAllUnits(List<UnitModel> items);
  Future<List<UnitModel>> getAllUnits();

  Future<void> saveAllItemUnits(List<ItemUnitsModel> items);
  Future<List<ItemUnitsModel>> getAllItemUnits();

  Future<void> saveAllItems(List<ItemModel> items);
  Future<List<ItemModel>> getAllItems();

  //item alter and barcode
  Future<void> saveAllItemBarcode(List<BarcodeModel> items);
  Future<List<BarcodeModel>> getAllItemBarcode();

  Future<void> saveAllItemAlter(List<ItemAlterModel> items);
  Future<List<ItemAlterModel>> getAllItemAlter();

  //store

  Future<int> saveUserStoreInfo(UserStoreModel userStoreInfo);
  Future<UserStoreModel?> getUserStoreInfo(int itemId);

  //store operation
  Future<void> saveAllStoreOperation(List<StoreOperationModel> items);
  Future<List<StoreOperationModel>> getAllStoreOperation();

  // Future<ItemDetailsModel> getItemDetails(int id);
  Future<List<StoreItemDetailsEntity>> getAllItemsWithDetails();
  Future<void> deleteStoreOperations(OperationType op);
  Future<Uint8List?> getItemImageById(int id);

  //new
  Future<void> addNewUnit(UnitModel item);
  Future<void> addNewItemUnit(ItemUnitsModel item);
  Future<int> addNewItem(ItemModel item);
  Future<void> addNewItemGroup(ItemGroupModel item);
  Future<void> addNewModelCategory(ModelCategoryModel item);
  Future<List<ModelCategoryModel>> getAllModelCategory();

  Future<void> addNewMeasurment(MeasurementModel item);
  Future<List<MeasurementModel>> getAllMeasurments();

  Future<void> addNewClothesType(ClothesTypeModel item);
  Future<List<ClothesTypeModel>> getAllClothesType();

  Future<void> addNewChoiceOption(ChoiceOptionModel item);
  Future<List<ChoiceOptionModel>> getAllChoiceOption();

  Future<void> addThModel(ThModelsModel model);

  Future<void> updateThModel(ThModelsModel model);

  Future<List<ThModelsModel>> getAllThModels();
  Future<List<ItemUnitsModel>> getItemUnitsBy(id);
}

class StoreLocalDatasourceImpl implements StoreLocalDatasource {
  @override
  Future<List<ItemGroupModel>> getAllItemGroups() async {
    AppDatabase db = AppDatabase.instance();

    return await db.getAll(db.itemGroupTable);
  }

  @override
  Future<List<UnitModel>> getAllUnits() async {
    AppDatabase db = AppDatabase.instance();

    return await db.getAll(db.unitTable);
  }

  @override
  Future<void> saveAllUnits(List<UnitModel> items) async {
    AppDatabase db = AppDatabase.instance();
    await db.saveAll(
      db.unitTable,
      items.map((currency) => currency.toCompanion()).toList(),
    );
  }

  @override
  Future<List<ItemUnitsModel>> getAllItemUnits() async {
    AppDatabase db = AppDatabase.instance();

    return await db.getAll(db.itemUnitTable);
  }

  @override
  Future<void> saveAllItemUnits(List<ItemUnitsModel> items) async {
    AppDatabase db = AppDatabase.instance();
    await db.saveAll(
      db.itemUnitTable,
      items.map((item) => item.toCompanion()).toList(),
    );
  }

  @override
  Future<void> saveAllItems(List<ItemModel> items) async {
    AppDatabase db = AppDatabase.instance();
    await db.saveAll(
      db.itemTable,
      items.map((item) => item.toCompanion()).toList(),
    );
  }

  @override
  Future<List<ItemAlterModel>> getAllItemAlter() async {
    AppDatabase db = AppDatabase.instance();

    return await db.getAll(db.itemAlterTable);
  }

  @override
  Future<List<BarcodeModel>> getAllItemBarcode() async {
    AppDatabase db = AppDatabase.instance();

    return await db.getAll(db.barcodeTable);
  }

  @override
  Future<void> saveAllItemAlter(List<ItemAlterModel> items) async {
    AppDatabase db = AppDatabase.instance();
    await db.saveAll(
      db.itemAlterTable,
      items.map((item) => item.toCompanion()).toList(),
    );
  }

  @override
  Future<void> saveAllItemBarcode(List<BarcodeModel> items) async {
    AppDatabase db = AppDatabase.instance();
    await db.saveAll(
      db.barcodeTable,
      items.map((item) => item.toCompanion()).toList(),
    );
  }

  @override
  Future<void> saveAllItemGroups(List<ItemGroupModel> items) async {
    AppDatabase db = AppDatabase.instance();
    await db.saveAll(
      db.itemGroupTable,
      items.map((item) => item.toCompanion()).toList(),
    );
  }

  @override
  Future<UserStoreModel?> getUserStoreInfo(int id) async {
    AppDatabase db = AppDatabase.instance();
    return await db.getSingle(db.userStoreTable, (tbl) => tbl.id, id);
  }

  @override
  Future<int> saveUserStoreInfo(UserStoreModel userStoreInfo) async {
    AppDatabase db = AppDatabase.instance();
    var id =
        await db.saveSingle(db.userStoreTable, userStoreInfo.toCompanion());
    return id;
  }

  @override
  Future<List<StoreOperationModel>> getAllStoreOperation() async {
    AppDatabase db = AppDatabase.instance();

    return await db.getAll(db.storeOperationTable);
  }

  @override
  Future<void> saveAllStoreOperation(List<StoreOperationModel> items) async {
    AppDatabase db = AppDatabase.instance();

    await db.saveAll(
      db.storeOperationTable,
      items.map((item) => item.toCompanion()).toList(),
    );
  }

  @override
  Future<List<StoreItemDetailsEntity>> getAllItemsWithDetails() async {
    try {
      AppDatabase db = AppDatabase.instance();

      final query = db.selectOnly(db.itemTable)
        ..addColumns([
          db.itemTable.id,
          db.itemTable.itemGroupId,
          db.itemTable.itemCode,
          db.itemTable.name,
          db.itemTable.enName,
          db.itemTable.type,
          db.itemTable.itemLimit,
          db.itemTable.isExpire,
          db.itemTable.notifyBefore,
          db.itemTable.freeQuantityAllow,
          db.itemTable.hasTax,
          db.itemTable.taxRate,
          db.itemTable.itemCompany,
          db.itemTable.orignalCountry,
          db.itemTable.itemDescription,
          db.itemTable.note,
          db.itemTable.hasAlternated,
          db.itemTable.newData,
          // Explicitly select itemGroupTable columns
        ]);

      final joinQuery = query.join([
        leftOuterJoin(
          db.itemGroupTable,
          db.itemGroupTable.id.equalsExp(db.itemTable.itemGroupId),
        ),
      ]);

      final itemDetailsList = <StoreItemDetailsEntity>[];

      final result = await joinQuery.get();

      for (final row in result) {
        final group = row.readTableOrNull(db.itemGroupTable);

        final item = ItemModel(
          id: row.read(db.itemTable.id)!,
          itemGroupId: row.read(db.itemTable.itemGroupId)!,
          itemCode: row.read(db.itemTable.itemCode)!,
          name: row.read(db.itemTable.name)!,
          enName: row.read(db.itemTable.enName)!,
          type: row.read(db.itemTable.type)!,
          itemLimit: row.read(db.itemTable.itemLimit)!,
          itemImage: null, // Image explicitly excluded
          isExpire: row.read(db.itemTable.isExpire)!,
          notifyBefore: row.read(db.itemTable.notifyBefore)!,
          freeQuantityAllow: row.read(db.itemTable.freeQuantityAllow)!,
          hasTax: row.read(db.itemTable.hasTax)!,
          taxRate: row.read(db.itemTable.taxRate)!,
          itemCompany: row.read(db.itemTable.itemCompany)!,
          orignalCountry: row.read(db.itemTable.orignalCountry)!,
          itemDescription: row.read(db.itemTable.itemDescription)!,
          note: row.read(db.itemTable.note)!,
          hasAlternated: row.read(db.itemTable.hasAlternated)!,
          newData: row.read(db.itemTable.newData)!,
        );

        print(
            "Item ID: ${row.read(db.itemTable.id)}, Item Group ID: ${row.read(db.itemTable.itemGroupId)}, Group: $group");

        final itemAlters = await (db.select(db.itemAlterTable)
              ..where((alt) => alt.itemId.equals(item.id ?? 0)))
            .get();

        final itemUnits = await (db.select(db.itemUnitTable)
              ..where((unit) => unit.itemId.equals(item.id ?? 0)))
            .get();

        final itemUnitsQuery = db.select(db.itemUnitTable).join([
          leftOuterJoin(
            db.unitTable,
            db.unitTable.id.equalsExp(db.itemUnitTable.itemUnitId),
          ),
        ])
          ..where(db.itemUnitTable.itemId.equals(item.id ?? 0));

        final itemUnitDetails = <ItemUnitDetailsEntity>[];
        final itemUnitsResult = await itemUnitsQuery.get();

        for (final itemUnitRow in itemUnitsResult) {
          final unit = itemUnitRow.readTable(db.unitTable);
          final itemUnit = itemUnitRow.readTable(db.itemUnitTable);

          final operationsQuery = db.select(db.storeOperationTable)
            ..where((table) =>
                table.unitId.equals(unit.id ?? 0) &
                table.itemId.equals(item.id ?? 0));

          int totalQuantity = 0;
          final operationsResult = await operationsQuery.get();

          for (final operation in operationsResult) {
            totalQuantity += operation.quantity;
          }

          itemUnitDetails.add(ItemUnitDetailsEntity(
            unitName: unit.name,
            unitFactor: itemUnit.unitFactor,
            quantity: totalQuantity,
            prices: [
              itemUnit.retailPrice,
              itemUnit.spacialPrice,
              itemUnit.wholeSaleprice,
            ],
          ));
        }

        int totalQuantityInStore = 0;
        for (var i in itemUnitDetails) {
          totalQuantityInStore += i.quantity * i.unitFactor;
        }

        itemDetailsList.add(StoreItemDetailsEntity(
          totalQuantityInStore: totalQuantityInStore,
          item: item,
          group: group,
          itemAlter: itemAlters,
          itemUnits: itemUnits,
          itemUnitsDetails: itemUnitDetails,
        ));
      }
      print(itemDetailsList[0].group);
      return itemDetailsList;
    } catch (e) {
      throw LocalStorageException(message: e.toString());
    }
  }

  @override
  Future<void> deleteStoreOperations(OperationType op) async {
    final db = AppDatabase.instance();
    await (db.delete(db.storeOperationTable)
          ..where(
            (storeOperation) =>
                storeOperation.operationId.equals(op.id) &
                storeOperation.operationType.equals(op.type),
          ))
        .go();
  }

  @override
  Future<Uint8List?> getItemImageById(int id) async {
    final db = AppDatabase.instance();
    return await db.getItemImage(id);
  }

  // @override
  // Future<List<ItemModel>> getAllItems() async {
  //   final db = AppDatabase.instance();
  //   final query = await db.customSelect(
  //     '''
  //   SELECT
  //     item_table.id AS id,
  //     item_table.item_group_id AS itemGroupId, -- Use the actual column names
  //     item_table.item_code AS itemCode,
  //     item_table.name AS name,
  //     item_table.en_name AS enName,
  //     item_table.type AS type,
  //     item_table.item_limit AS itemLimit,
  //     item_table.is_expire AS isExpire,
  //     item_table.notify_before AS notifyBefore,
  //     item_table.free_quantity_allow AS freeQuantityAllow,
  //     item_table.has_tax AS hasTax,
  //     item_table.tax_rate AS taxRate,
  //     item_table.item_company AS itemCompany,
  //     item_table.orignal_country AS orignalCountry,
  //     item_table.item_description AS itemDescription,
  //     item_table.note AS note,
  //     item_table.has_alternated AS hasAlternated,
  //     item_table.new_data AS newData
  //   FROM item_table
  //   LEFT JOIN store_operation_table
  //     ON item_table.id = store_operation_table.item_id -- Use actual column names
  //   GROUP BY item_table.id
  //   HAVING IFNULL(SUM(store_operation_table.quantity), 0) > 1
  //   ''',
  //     readsFrom: {db.itemTable, db.storeOperationTable},
  //   ).get();

  //   return query.map((row) {
  //     final data = row.data;
  //     return ItemModel(
  //       id: data['id'] as int,
  //       itemGroupId: data['itemGroupId'],
  //       itemCode: data['itemCode'],
  //       name: data['name'],
  //       enName: data['enName'],
  //       type: data['type'],
  //       itemLimit: data['itemLimit'],
  //       itemImage: null, // Exclude itemImage
  //       isExpire: (data['isExpire'] as int?) == 1,
  //       notifyBefore: data['notifyBefore'],
  //       freeQuantityAllow: (data['freeQuantityAllow'] as int?) == 1,
  //       hasTax: (data['hasTax'] as int?) == 1,
  //       taxRate: data['taxRate'],
  //       itemCompany: data['itemCompany'],
  //       orignalCountry: data['orignalCountry'],
  //       itemDescription: data['itemDescription'],
  //       note: data['note'],
  //       hasAlternated: (data['hasAlternated'] as int?) == 1,
  //       newData: (data['newData'] as int?) == 1,
  //     );
  //   }).toList();
  // }
  @override
  Future<List<ItemModel>> getAllItems() async {
    final db = AppDatabase.instance();
    final query = await db.customSelect(
      '''
    SELECT DISTINCT
      item_table.id AS id,
      item_table.item_group_id AS itemGroupId,
      item_table.item_code AS itemCode,
      item_table.name AS name,
      item_table.en_name AS enName,
      item_table.type AS type,
      item_table.item_limit AS itemLimit,
      item_table.is_expire AS isExpire,
      item_table.notify_before AS notifyBefore,
      item_table.free_quantity_allow AS freeQuantityAllow,
      item_table.has_tax AS hasTax,
      item_table.tax_rate AS taxRate,
      item_table.item_company AS itemCompany,
      item_table.orignal_country AS orignalCountry,
      item_table.item_description AS itemDescription,
      item_table.note AS note,
      item_table.has_alternated AS hasAlternated,
      item_table.new_data AS newData
    FROM item_table
    INNER JOIN store_operation_table
      ON item_table.id = store_operation_table.item_id
    WHERE store_operation_table.item_id IS NOT NULL
    ''',
      readsFrom: {db.itemTable, db.storeOperationTable},
    ).get();

    return query.map((row) {
      final data = row.data;
      return ItemModel(
        id: data['id'] as int,
        itemGroupId: data['itemGroupId'],
        itemCode: data['itemCode'],
        name: data['name'],
        enName: data['enName'],
        type: data['type'],
        itemLimit: data['itemLimit'],
        itemImage: null, // Exclude itemImage
        isExpire: (data['isExpire'] as int?) == 1,
        notifyBefore: data['notifyBefore'],
        freeQuantityAllow: (data['freeQuantityAllow'] as int?) == 1,
        hasTax: (data['hasTax'] as int?) == 1,
        taxRate: data['taxRate'],
        itemCompany: data['itemCompany'],
        orignalCountry: data['orignalCountry'],
        itemDescription: data['itemDescription'],
        note: data['note'],
        hasAlternated: (data['hasAlternated'] as int?) == 1,
        newData: (data['newData'] as int?) == 1,
      );
    }).toList();
  }

  @override
  Future<void> addNewUnit(UnitModel item) async {
    AppDatabase db = AppDatabase.instance();

    await db.saveSingle(
      db.unitTable,
      item.toCompanion(),
    );
  }

  @override
  Future<void> addNewItemGroup(ItemGroupModel item) async {
    AppDatabase db = AppDatabase.instance();

    await db.saveSingle(
      db.itemGroupTable,
      item.toCompanion(),
    );
  }

  @override
  Future<void> addNewModelCategory(ModelCategoryModel item) async {
    AppDatabase db = AppDatabase.instance();

    await db.saveSingle(
      db.modelCategoryTable,
      item.toCompanion(),
    );
  }

  @override
  Future<List<ModelCategoryModel>> getAllModelCategory() async {
    AppDatabase db = AppDatabase.instance();

    return await db.getAll(db.modelCategoryTable);
  }

  @override
  Future<void> addNewClothesType(ClothesTypeModel item) async {
    AppDatabase db = AppDatabase.instance();

    await db.saveSingle(
      db.clothesTypesTable,
      item.toCompanion(),
    );
  }

  @override
  Future<void> addNewMeasurment(MeasurementModel item) async {
    AppDatabase db = AppDatabase.instance();

    await db.saveSingle(
      db.measurementsTable,
      item.toCompanion(),
    );
  }

  @override
  Future<List<ClothesTypeModel>> getAllClothesType() async {
    AppDatabase db = AppDatabase.instance();

    return await db.getAll(db.clothesTypesTable);
  }

  @override
  Future<List<MeasurementModel>> getAllMeasurments() async {
    AppDatabase db = AppDatabase.instance();

    return await db.getAll(db.measurementsTable);
  }

  @override
  Future<void> addNewChoiceOption(ChoiceOptionModel item) async {
    AppDatabase db = AppDatabase.instance();

    await db.saveSingle(
      db.choiceOptionsTable,
      item.toCompanion(),
    );
  }

  @override
  Future<List<ChoiceOptionModel>> getAllChoiceOption() async {
    AppDatabase db = AppDatabase.instance();

    return await db.getAll(db.choiceOptionsTable);
  }

  //

  @override
  Future<void> addThModel(ThModelsModel model) async {
    AppDatabase db = AppDatabase.instance();

    await db.into(db.thModelTable).insert(
          ThModelTableCompanion(
            mcId: Value(model.mcId),
            modelName: Value(model.modelName),
            modelProfile: Value(model.modelProfile),
            modelOrdering: Value(model.modelOrdering),
            notes: Value(model.notes ?? ""),
            status: Value(model.status),
            createdAt: Value(model.createdAt),
            createdBy: Value(model.createdBy),
          ),
        );
  }

  @override
  Future<void> updateThModel(ThModelsModel model) async {
    AppDatabase db = AppDatabase.instance();

    await db.update(db.thModelTable).replace(
          ThModelTableCompanion(
            id: Value(model.id!),
            mcId: Value(model.mcId),
            modelName: Value(model.modelName),
            modelProfile: Value(model.modelProfile),
            modelOrdering: Value(model.modelOrdering),
            notes: Value(model.notes ?? ""),
            status: Value(model.status),
            createdAt: Value(model.createdAt),
            createdBy: Value(model.createdBy),
            updatedAt: Value(DateTime.now()),
            updatedBy: Value(model.updatedBy ?? model.createdBy),
          ),
        );
  }

  @override
  Future<List<ThModelsModel>> getAllThModels() async {
    AppDatabase db = AppDatabase.instance();

    final models = await db.select(db.thModelTable).get();
    return models
        .map((m) => ThModelsModel(
              id: m.id,
              mcId: m.mcId,
              modelName: m.modelName,
              modelProfile: m.modelProfile,
              modelOrdering: m.modelOrdering,
              notes: m.notes,
              status: m.status,
              createdAt: m.createdAt,
              createdBy: m.createdBy,
              updatedAt: m.updatedAt,
              updatedBy: m.updatedBy,
              deletedAt: m.deletedAt,
            ))
        .toList();
  }

  @override
  Future<int> addNewItem(ItemModel item) async {
    AppDatabase db = AppDatabase.instance();

    return await db.saveSingle(
      db.itemTable,
      item.toCompanion(),
    );
  }

  @override
  Future<void> addNewItemUnit(ItemUnitsModel item) async {
    AppDatabase db = AppDatabase.instance();

    await db.saveSingle(
      db.itemUnitTable,
      item.toCompanion(),
    );
  }

  @override
  Future<List<ItemUnitsModel>> getItemUnitsBy(id) async {
    AppDatabase db = AppDatabase.instance();
    return (db.select(db.itemUnitTable)..where((e) => e.itemId.equals(id)))
        .get();
  }
}

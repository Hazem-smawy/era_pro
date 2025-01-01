/*
  required super.id,
    required super.itemId,
    required super.itemAlterId,
    required super.itemOrder,

    */

import 'package:drift/drift.dart';
import 'db_tables.dart';
import '../../../../features/store/data/models/item_alter_model.dart';

// @UseRowClass(ItemAlterModel)
// class ItemAlterTable extends Table {
//   IntColumn get id => integer()();
//   IntColumn get itemId => integer().references(ItemTable, #id)();
//   IntColumn get itemAlterId => integer().references(ItemTable, #id)();
//   IntColumn get itemOrder => integer()();

//   @override
//   Set<Column> get primaryKey => {id};
// }

@UseRowClass(ItemAlterModel)
class ItemAlterTable extends Table {
  IntColumn get id => integer()();

  @ReferenceName('UniqueItemId')
  IntColumn get itemId => integer().references(ItemTable, #id)();

  @ReferenceName('UniqueItemAlterId')
  IntColumn get itemAlterId => integer().references(ItemTable, #id)();

  IntColumn get itemOrder => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
